defmodule ScrollHat.IS31FL3731 do
  @moduledoc """
  Integration for the IS31FL3731 I2C LED Driver
  """
  alias Circuits.I2C

  @type i2c() :: Circuits.I2C.bus()
  @type frame() :: 0..7
  @type result() :: :ok | {:error, term()}

  @address 0x74
  @cmd_register 0xFD

  @mode_register 0x00
  @picture_display_register 0x01
  @shutdown_register 0xA

  @doc """
  Display the specified frame

  In picture mode, this will display the specified frame according
  to the settings for that frame stored in memory
  """
  @spec display_frame(i2c(), frame()) :: result()
  def display_frame(i2c, frame) do
    with :ok <- function_register(i2c) do
      I2C.write(i2c, @address, <<@picture_display_register, 0::5, frame::3>>)
    end
  end

  @doc """
  Set the LEDs settings for the specified frame

  This would be used to set LED's on/off, LED blink state, and the PWM
  of each LED and requires the bytes to be formatted already
  according to tables 3-6 in the IS31FL3731 datasheet.
  """
  @spec set_frame(i2c(), frame(), iodata()) :: result()
  def set_frame(i2c, frame, led_map) do
    with :ok <- frame_register(i2c, frame) do
      I2C.write(i2c, @address, led_map)
    end
  end

  @doc """
  Set the configuration mode of the driver

  Supported modes:
    0x00: Picture
    0x01: Auto frame play
    0x02: Audio frame play

  The third argument is only used to set the starting frame
  when using Auto frame play mode.
  """
  @spec set_mode(i2c(), mode :: 0..2, frame()) :: result()
  def set_mode(i2c, mode, frame_start \\ 0) do
    with bin = <<@mode_register, 0::3, mode::2, frame_start::3>>,
         :ok <- function_register(i2c) do
      I2C.write(i2c, @address, bin)
    end
  end

  @doc """
  Set software shutdown or normal operation

  modes:
    0 -> shutdown
    1 -> normal operation
  """
  @spec shutdown_control(i2c(), mode :: 1 | 0) :: result()
  def shutdown_control(i2c, mode) do
    with :ok <- function_register(i2c) do
      I2C.write(i2c, @address, <<@shutdown_register, mode>>)
    end
  end

  defp function_register(i2c) do
    I2C.write(i2c, @address, <<@cmd_register, 0b00001011>>)
  end

  defp frame_register(i2c, frame) do
    I2C.write(i2c, @address, <<@cmd_register, frame>>)
  end
end
