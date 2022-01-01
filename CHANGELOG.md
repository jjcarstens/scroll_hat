# Changelog

## [[0.2.1] - 2022-01-01](https://github.com/jjcarstens/scroll_hat/releases/tag/v0.2.1)

### Added

* Livebook content for sampling the library

### Fixes

* Allow circuits_* 1.0.0 to be used

## [[0.2.0] - 2021-10-05](https://github.com/jjcarstens/scroll_hat/releases/tag/v0.2.0)

### Added

* `ScrollHat.Display.set_font/1` to set the font to use for the display
* `ScrollHat.Display.set_brightness/1` to adjust brightness of all LED's
* New fonts
  * `ScrollHat.Font.Big`
  * `ScrollHat.Font.D3`
  * `ScrollHat.Font.Gauntlet`
  * `ScrollHat.Font.Hachicro`
  * `ScrollHat.Font.Medium`
  * `ScrollHat.Font.Organ`
  * `ScrollHat.Font.Small`
  * `ScrollHat.Font.Smoothed`
  * `ScrollHat.Font.Unicode`

### Changed

* removed `frame` argument from `draw/2` and `marquee/3`
* `draw/1` and `marquee/2` now support text to be rendered by the font set with `ScrollHat.Display.set_font/1`

### Fixes

* set pulldown to fix `x` and `y` buttons

## [[0.1.0] - 2021-09-14](https://github.com/jjcarstens/scroll_hat/releases/tag/v0.1.0)

Initial Release

### Added

- `IS31FL3731` LED driver integration
- `ScrollHat.Display` to draw canvases to the 7x17 LED display
- `ScrollHat.Font` for converting text to a canvas
