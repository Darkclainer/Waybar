waybar-keyboard-state(5)

# NAME

waybar - keyboard-state module

# DESCRIPTION

The *keyboard-state* module displays the state of number lock, caps lock, and scroll lock.

# CONFIGURATION

*interval*: ++
	typeof: integer ++
	default: 1 ++
	The interval, in seconds, to poll the keyboard state.

*format*: ++
	typeof: string|object ++
	default: {name} {icon} ++
	The format, how information should be displayed. If a string, the same format is used for all keyboard states. If an object, the fields "numlock", "capslock", and "scrolllock" each specify the format for the corresponding state. Any unspecified states use the default format.

*format-icons*: ++
	typeof: object ++
	default: {"locked": "locked", "unlocked": "unlocked"} ++
	Based on the keyboard state, the corresponding icon gets selected. The same set of icons is used for number, caps, and scroll lock, but the icon is selected from the set independently for each. See *icons*.

*numlock*: ++
	typeof: bool ++
	default: false ++
	Display the number lock state.

*capslock*: ++
	typeof: bool ++
	default: false ++
	Display the caps lock state.

*scrolllock*: ++
	typeof: bool ++
	default: false ++
	Display the scroll lock state.

*device-path*: ++
	typeof: string ++
	default: chooses first valid input device ++
	Which libevdev input device to show the state of. Libevdev devices can be found in /dev/input. The device should support number lock, caps lock, and scroll lock events.

# FORMAT REPLACEMENTS

*{name}*: Caps, Num, or Scroll.

*{icon}*: Icon, as defined in *format-icons*.

# ICONS

The following *format-icons* can be set.

- *locked*: Will be shown when the keyboard state is locked. Default "locked".
- *unlocked*: Will be shown when the keyboard state is not locked. Default "unlocked"

# EXAMPLE:

```
"keyboard-state": {
    "numlock": true,
    "capslock": true,
    "format": "{name} {icon}",
    "format-icons": {
        "locked": "",
        "unlocked": ""
    }
}
```

# STYLE

- *#keyboard-state*
- *#keyboard-state label*
- *#keyboard-state label.locked*

