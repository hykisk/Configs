# Vim Cheatsheet

## File operation
| Key | Discription |
| --- | ----------- |
| :e  | Reload file |
|     |             |

## Move
| Key   | Discription                                                   |
| ----- | ------------------------------------------------------------- |
| $     | jump to line end                                              |
| 0     | jump to line top                                              |
| ctl-y | The location of the cursor is just as it is and I scroll up   |
| ctl-e | The location of the cursor is just as it is and I scroll down |
| ctl-u | Move to screen up half page                                   |
| ctl-d | Move to screen down half page                                 |
| ctl-o | Previous cursor position from history                         |
| ctl-i | Following cursor position from history                        |
|       |                                                               |
|       |                                                               |

## Separate and Diff mode
| Key           | Discription                        |
| ------------- | ---------------------------------- |
| ctl-w v       | Split vertically                   |
| ctl-w s       | Split horizontally                 |
| ctl-w w       | Move to next pane                  |
| ctl-w {num} < | Divided partitions to the right    |
| ctl-w {num} > | Divided partitions to the left     |
| ctl-w -       | Divided partitions to the down     |
| ctl-w +       | Divided partitions to the up       |
| ctl-w =       | Reset size                         |
| ]-c           | Move to next conflict              |
| [-c           | Move to back conflict              |
| :wqa          | Save and close all tab             |
| H             | The first line on the screen       |
| M             | The middle line on the screen      |
| L             | The last line on the screen        |
|               |                                    |

## Merge mode
| Key              | Discription                        |
| ---------------- | ---------------------------------- |
| :%diffget LOCAL  | checkout --ours                    |
| :%diffget REMOTE | checkout --theirs                  |
|                  |                                    |

## Screen size
|  Key  | Discription |
| ----- | ----------- |
| ctl-+ | Large       |
| ctl-- | Small       |

## Selection
| Key   | Discription                                              |
| ----- | -------------------------------------------------------- |
| v     | Selection mode                                           |
| V     | Line selection mode                                      |
| ctl-v | Rectangle selection mode (shift-i)Switch Insert mode.    |
|       |                                                          |

## (Re\|Un)do
| Key   | Discription |
| ----- | ----------- |
| u     | Undo        |
| ctl-r | Redo        |

## Search
|  Key   | Discription                             |
| ------ | --------------------------------------- |
| *      | Search words backwards under the cursor |
|        |                                         |

## Replace
| Key          | Discription                   |
| ------------ | ----------------------------- |
| s/foo/bar/   | First letter in current line  |
| s/foo/bar/g  | All in current line           |
| %s/foo/bar/g | All in open file              |
|              |                               |

## Command
| Key              | Discription                     |
| --------------   | ------------------------------- |
| :FixWhitespace   | Delete trailing blank character |
| :TableModeToggle | Markdown table formatter        |
|                  |                                 |

## Macro
| Key               | Discription  |
| ----------------- | ------------ |
| q<letter> {rec} q | Record macro |
| @<letter>         | Execute a    |
| :reg              | Show macro   |
| :let @a<letter>'' | Delete macro |
|                   |              |
|                   |              |

## Others
| Key     | Discription                               |
| ------- | ----------------------------------------- |
| y       | Yank                                      |
| x       | Cut                                       |
| s       | Cut and Insert mode                       |
| D       | Delete end of line                        |
| I       | Move to beginning of line and Insert mode |
| A       | Move to end of line and Insert mode       |
| p,P     | Paste                                     |
| o,O     | Add new line                              |
| ctl-s   | Start syntastic                           |
| ctl-c   | (=ESC)Insert mode to cmd                  |
| d-i-w   | Delete current word                       |
| ctl-z   | Suspend vim                               |
| fg      | Resume                                    |
| R       | Raplace mode                              |
| ZZ      | Same as :wq                               |
| zo      | Open folding                              |
| zc      | Close folding                             |
| ctl-a   | increment numbers                         |
| ctl-x   | decrement numbers                         |
|         |                                           |

## Indent format
`:filetype indent on | setf html | normal gg=G`
## show filepath
`:echo expand("%:p")`

