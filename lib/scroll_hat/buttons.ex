defmodule ScrollHat.Buttons do
  @moduledoc """
  Buttons interface for Scroll HAT Mini

  Pass a `:handler` option as a pid or {m, f, a} to receive the button events
  """
  use GenServer

  alias Circuits.GPIO

  require Logger

  defmodule Event do
    defstruct [:action, :name, :value, :timestamp]

    @type t :: %Event{
            action: :pressed | :released,
            name: :a | :b | :x | :y,
            value: 1 | 0,
            timestamp: non_neg_integer()
          }
  end

  @pin_a 5
  @pin_b 6
  @pin_x 16
  @pin_y 24

  @spec start_link(keyword) :: GenServer.on_start()
  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, opts, name: opts[:name] || __MODULE__)
  end

  @impl GenServer
  def init(opts) do
    {:ok, %{mapping: %{}, handler: opts[:handler]}, {:continue, :init}}
  end

  @impl GenServer
  def handle_continue(:init, state) do
    {:ok, a} = GPIO.open(@pin_a, :input)
    {:ok, b} = GPIO.open(@pin_b, :input)
    {:ok, x} = GPIO.open(@pin_x, :input)
    {:ok, y} = GPIO.open(@pin_y, :input)
    :ok = GPIO.set_interrupts(a, :both)
    :ok = GPIO.set_interrupts(b, :both)
    :ok = GPIO.set_interrupts(x, :both)
    :ok = GPIO.set_interrupts(y, :both)

    mapping = %{
      @pin_a => {:a, a},
      @pin_b => {:b, b},
      @pin_x => {:x, x},
      @pin_y => {:y, y}
    }

    {:noreply, %{state | mapping: mapping}}
  end

  @impl GenServer
  def handle_info({:circuits_gpio, pin, timestamp, value}, state) do
    {btn, _ref} = state.mapping[pin]
    action = if value == 0, do: :pressed, else: :released

    event = %Event{action: action, name: btn, value: value, timestamp: timestamp}

    _ = send_event(state.handler, event)

    {:noreply, state}
  end

  defp send_event(handler, event) when is_pid(handler), do: send(handler, event)

  defp send_event({m, f, a}, event) when is_atom(m) and is_atom(f) and is_list(a) do
    apply(m, f, [event | a])
  end

  defp send_event(_, event) do
    Logger.info("[ScrollHat] unhandled button event - #{inspect(event)}")
  end
end
