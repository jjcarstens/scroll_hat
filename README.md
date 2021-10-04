# ScrollHat

Elixir driver for the Pimoroni Scroll Hat LED boards:

* [Scroll HAT mini](https://shop.pimoroni.com/products/scroll-hat-mini)
* [Scroll pHAT HD](https://shop.pimoroni.com/products/scroll-phat-hd)

See the [python library](https://github.com/pimoroni/scroll-phat-hd) also

## Usage

The main interface is via the `ScrollHat.Display` module which interacts
with the IS31FL3731 LED driver according to the pinout for the ScrollHat.

<!-- DISPLAYDOC !-->

Ensure you start the display to initialize the driver manually or in
your supervision tree:

```elixir
{:ok, _pid} = ScrollHat.Display.start_link()
```

The `draw/1` and `marquee/2` accept a string of text or 2D 7x17 canvas matrix
where each value represents the LED at that location starting from top-left.
Values must be a positive integer, 0-255, where `0` disables the LED and any value
greater than 0 sets the brightness to that level.

When using `marquee/2`, a canvas larger than 7x17 can be supplied in which
the display will attempt to scroll through, left -> right, moving one LED
column at a time.

Use `set_font/1` to change the font of the display to one of the supporting
fonts. **Note**: _Fonts are still in development and may not support every
character which might fail trying to convert a text to a canvas_

<!-- DISPLAYDOC !-->
