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

| Index | Flag                                                         |
| ----- | ------------------------------------------------------------ |
| 0     | Rainbow flag, 6 stripes                                      |
| 1     | Rainbow flag, 7 stripes                                      |
| 2     | Rainbow flag, 8 stripes                                      |
| 3     | Rainbow flag, 9 stripes                                      |
| 4     | Philadelphia rainbow flag                                    |
| 5     | Progress rainbow flag                                        |
| 6     | Progress rainbow flag 2021 version                           |
| 7     | Trans pride flag                                             |
| 8     | Abrosexual pride flag                                        |
| 9     | Aceflux pride flag                                           |
| 10    | Aegosexual pride flag                                        |
| 11    | Agender pride flag                                           |
| 12    | Androgyne pride flag                                         |
| 13    | Androsexual pride flag                                       |
| 14    | Aporagender pride flag                                       |
| 15    | Aroace pride flag                                            |
| 16    | Aroflux pride flag                                           |
| 17    | Aromantic pride flag                                         |
| 18    | Asexual pride flag                                           |
| 19    | Aspec pride flag                                             |
| 20    | Bigender pride flag (pink purple white purple blue)          |
| 21    | Bigender pride flag (blue white purple white pink)           |
| 22    | Bigender pride flag (pink yellow white purple blue)          |
| 23    | Bisexual pride flag                                          |
| 24    | Ceterosexual pride flag                                      |
| 25    | Demiandrogyne pride flag (pink purple blue)                  |
| 26    | Demiandrogyne pride flag (green white green)                 |
| 27    | Demiboy pride flag                                           |
| 28    | Demifluid pride flag                                         |
| 29    | Demiflux pride flag                                          |
| 30    | Demigender pride flag                                        |
| 31    | Demigirl pride flag                                          |
| 32    | Demiromantic pride flag                                      |
| 33    | Demisexual pride flag                                        |
| 34    | Disability rights flag (gold silver bronze tricolor)         |
| 35    | Disability rainbow flag                                      |
| 36    | Gender-neutral pride flag                                    |
| 37    | Genderfluid pride flag                                       |
| 38    | Genderflux pride flag                                        |
| 39    | Genderqueer pride flag                                       |
| 40    | Greygender pride flag                                        |
| 41    | Greysexual pride flag                                        |
| 42    | Gynosexual pride flag                                        |
| 43    | Intersex pride flag (purple circle)                          |
| 44    | Intersex pride flag (blue/pink gradient)                     |

## External hardware

[TinyVGA PMOD](https://github.com/mole99/tiny-vga)
