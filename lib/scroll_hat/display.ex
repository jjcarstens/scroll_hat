defmodule ScrollHat.Display do
  @moduledoc File.read!("README.md")
             |> String.split(~r/<!-- DISPLAYDOC !-->/)
             |> Enum.drop(1)
             |> Enum.join("\n")

  use GenServer

  @type canvas :: [[non_neg_integer()], ...]
  @type frame :: 0..7

  alias Circuits.I2C
  alias ScrollHat.IS31FL3731, as: Driver

  @all_off :binary.copy(<<0>>, 18)
  @empty_buff for _ <- 1..144, do: 0

  @doc """
  Start the GenServer to manage the Scroll HAT's display

  This is a singleton GenServer.

  Options:

  * `:bus` - the I2C bus going to the Scroll HAT (defaults to `"i2c-1"`)
  """
  @spec start_link(keyword()) :: GenServer.on_start()
  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, opts, name: __MODULE__)
  end

  @doc """
  Clear the specified frame of the display

  This sets all LED's of that frame to the off state.
  """
  @spec clear(frame()) :: IS31FL3731.result()
  def clear(frame \\ 0), do: GenServer.call(__MODULE__, {:clear, frame})

  @doc """
  Draw a canvas matrix on the display

  The canvas is expected to be a 2D 7x17 matrix where each value is
  an integer between 0-255. The value represents the brightness of the
  LED at that location and any value > 0 signifies that the LED is on.
  """
  @spec draw(canvas(), frame()) :: IS31FL3731.result()
  def draw(canvas, frame \\ 0), do: GenServer.call(__MODULE__, {:draw, canvas, frame})

  @doc """
  Draw a canvas and then scroll it to the left

  `step_time` is the number of milliseconds to wait between each step
  """
  @spec marquee(canvas(), non_neg_integer(), frame()) :: IS31FL3731.result()
  def marquee(canvas, step_time, frame \\ 0) do
    GenServer.call(__MODULE__, {:marquee, canvas, step_time, frame})
  end

  @doc """
  Set the brightness for all active LEDs for the current canvas
  """
  @spec set_brightness(0..255, frame()) :: IS31FL3731.result()
  def set_brightness(val, frame \\ 0) do
    GenServer.call(__MODULE__, {:set_brightness, val, frame})
  end

  @impl GenServer
  def init(opts) do
    bus = opts[:bus] || "i2c-1"
    state = %{bus: bus, canvas: nil, i2c: nil, timer: nil, step_time: 500, frame: 0}
    {:ok, state, {:continue, :init}}
  end

  @impl GenServer
  def handle_continue(:init, state) do
    {:ok, i2c} = I2C.open(state.bus)

    # picture mode
    :ok = Driver.set_mode(i2c, 0)

    # clear all LED's
    :ok = Driver.set_frame(i2c, 0, [<<0>>, @all_off])

    # set first display frame to be 0
    :ok = Driver.display_frame(i2c, 0)

    # Set driver to normal operation mode
    :ok = Driver.shutdown_control(i2c, 1)

    {:noreply, %{state | i2c: i2c}}
  end

  @impl GenServer
  def handle_call({:clear, frame}, _from, state) do
    if state.timer, do: Process.cancel_timer(state.timer)
    {:reply, Driver.set_frame(state.i2c, frame, @all_off), state}
  end

  def handle_call({:draw, canvas, frame}, _from, state) do
    if state.timer, do: Process.cancel_timer(state.timer)
    {:reply, do_draw(state.i2c, canvas, frame), %{state | canvas: canvas}}
  end

  def handle_call({:marquee, canvas, step_time, frame}, _from, state) do
    if state.timer, do: Process.cancel_timer(state.timer)
    t = Process.send_after(self(), :shift, step_time)

    state = %{state | timer: t, canvas: canvas, step_time: step_time, frame: frame}

    {:reply, do_draw(state.i2c, canvas, frame), state}
  end

  def handle_call({:set_brightness, val, frame}, _from, state) do
    # Just set all the values to the new brightness
    # If the canvas had varying brightness of LEDS, this will reset those
    # to all be the same. Maybe in the future we support some sort of ratio
    # of brightness control?
    new = for row <- state.canvas || [], do: Enum.map(row, &if(&1 > 0, do: val, else: 0))
    {:reply, do_draw(state.i2c, new, frame), %{state | canvas: new}}
  end

  @impl GenServer
  def handle_info(:shift, state) do
    shifted = for [f | row] <- state.canvas, do: List.insert_at(row, -1, f)
    do_draw(state.i2c, shifted, state.frame)
    t = Process.send_after(self(), :shift, state.step_time)

    {:noreply, %{state | canvas: shifted, timer: t}}
  end

  defp do_draw(i2c, canvas, frame) do
    {bright_buff, led_buff} = create_buffers(canvas)

    # Set brightness (PWM)
    :ok = Driver.set_frame(i2c, frame, [<<0x24>>, bright_buff])

    # Turn LED's on/off based on bit buffer
    bin = for b <- led_buff, into: <<>>, do: <<b::1>>
    Driver.set_frame(i2c, frame, <<0>> <> bin)
  end

  defp create_buffers(canvas) do
    for {row, y} <- Enum.with_index(canvas),
        {val, x} <- Enum.with_index(row),
        # Don't draw outside the display
        x < 17 and y < 7,
        reduce: {@empty_buff, @empty_buff} do
      {bright_buff, led_buff} ->
        bright_buff = List.replace_at(bright_buff, brightness_index(x, y), val)

        bit = if val != 0, do: 1, else: 0
        led_buff = List.replace_at(led_buff, bit_index(x, y), bit)

        {bright_buff, led_buff}
    end
  end

  # When setting brightness val, 0,0 is top left
  defp brightness_index(x, y) when x <= 8, do: 134 - 16 * x - y
  defp brightness_index(x, y) when x > 8, do: 16 * x + y - 136

  # When setting On/Off bits, {0, 0} is bottom left
  defp bit_index(x, y) when x <= 8 do
    135 - 16 * x - (6 - y)
  end

  defp bit_index(x, y) when x > 8 do
    16 * x + (6 - y) - 135
  end
end
