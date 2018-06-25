# keeb 
Charlie's Keyboard configurations for Mac and Windows. I use a [60%
keyboard][1] and it's very convenient to have the same keybindings across both
platforms. To achieve this, I use [AutoHotkey][2] on Windows and [Karabiner
Elements][3] on Mac.

[1]: https://mechanicalkeyboards.com/shop/index.php?l=product_detail&p=1238
[2]: http://autohotkey.com/
[3]: https://github.com/tekezo/Karabiner-Elements/

* On Windows, copy `AutoHotkey.ahk` to the folder where AutoHotkey is installed
* On Mac, symlink `karabiner.json` to `~/.config/karabiner/karabiner.json`

Bindings
--------

### Capslock
* `CapsLock` is made into its own modifier key, and its existing functionality
  of toggling caps on and off is disabled. It's abbreviated as `CL+` below as a
  modifier prefix.

### Arrow keys
* Since my keyboard has no arrow keys, I bind `CL+WASD` and `CL+HJKL` to be my
  arrows. I mostly used the `WASD` arrow key bindings, but it's convenient to
  have `HJKL` as well when I'm highlighting things, since I can use my right
  hand for the arrows and the left hand for holding `CL` and shift, control, etc.

### Media Controls
* `CL+Z` and `CL+X` for volume control, and `CL+ERT` for media play, previous
  and forward. I fiddle with media controls constantly. 

### Mac Specific
* `Cmd+Esc` to `Cmd+~` for Mac intra-app window switching
* Remap `Fn+Letter` to `Ctrl+Letter` for the internal keyboard, since I'm used
  to `Ctrl` being the bottom left key.

### Other Convenience Bindings
* `Shift+Esc` to `~` since the keyboard has no tilde key.
* `CL+Space` for forward delete, easier than reaching for delete key.
* `CL+C` to `Ctrl+C`, since I hit this binding all the time in Vim

