## How it works

Displays pride flags on the screen.

To add another flag, create a flag.v file and add it to
`src/flag_index.v`, `test/Makefile`, and `info.yaml`,
using the existing flags as examples.

## How to test

Connect to a VGA monitor. Set the following inputs to change the displayed flag:
- `ui_in[7]` to display the first flag
- `ui_in[6]` to display the next flag
- `ui_in[5]` to display the previous flag
- `ui_in[4]` to display the flag whose index is on `uio_in`

| Index | Flag                                     |
| ----- | ---------------------------------------- |
| 0     | Rainbow flag, 6 stripes                  |
| 1     | Rainbow flag, 7 stripes                  |
| 2     | Rainbow flag, 8 stripes                  |
| 3     | Rainbow flag, 9 stripes                  |
| 4     | Philadelphia rainbow flag                |
| 5     | Progress rainbow flag                    |
| 6     | Progress rainbow flag 2021 version       |
| 7     | Trans pride flag                         |

## External hardware

[TinyVGA PMOD](https://github.com/mole99/tiny-vga)
