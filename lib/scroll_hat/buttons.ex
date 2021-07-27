defmodule ScrollHat.Buttons do
  @moduledoc """
  Buttons interface for Scroll HAT Mini

  Pass a `:handler` option to receive the button events
  """
  use GenServer

  alias Circuits.GPIO

  require Logger

  @type event :: {:scroll_hat, :a | :b | :x | :y, :pressed | :released, non_neg_integer()}

  @pin_a 5
  @pin_b 6
  @pin_x 16
  @pin_y 24

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, opts, name: opts[:name] || __MODULE__)
  end

  @impl GenServer
  def init(opts) do
    with {:ok, a} <- GPIO.open(@pin_a, :input),
         {:ok, b} <- GPIO.open(@pin_b, :input),
         {:ok, x} <- GPIO.open(@pin_x, :input),
         {:ok, y} <- GPIO.open(@pin_y, :input),
         :ok <- GPIO.set_interrupts(a, :both),
         :ok <- GPIO.set_interrupts(b, :both),
         :ok <- GPIO.set_interrupts(x, :both),
         :ok <- GPIO.set_interrupts(y, :both) do
      state = %{
        @pin_a => {:a, a},
        @pin_b => {:b, b},
        @pin_x => {:x, x},
        @pin_y => {:y, y},
        handler: opts[:handler]
      }

      {:ok, state}
    end
  end

  @impl GenServer
  def handle_info({:circuits_gpio, pin, timestamp, value}, state) do
    {btn, _ref} = state[pin]
    val = if value == 0, do: :pressed, else: :released

    if state.handler do
      send(state.handler, {:scroll_hat, btn, val, timestamp})
    else
      Logger.info("[ScrollHat] button #{btn} #{val}")
    end

    {:noreply, state}
  end
end
