# Ideas to improve config

## Enhance tag searching
-- NOTE: For now (12/03/2024) disable custom tagfunc.
--	It needs to be corrected:
--		- if word under cursor is ruby constant with '::' then path should be checked in taglist,
--		- otherwise return normal taglist.

## Create telescope shortcut to search db/structure.
[✔️] Make command to automatically open db/structure in preview window
    for quick searches - maybe something to do a quick lookup.
    Result -> telescope_koleo_db_tables.lua
[ ] When selecting table with <CR> maybe switch then to Telescope
    selected table columns?

## Think about command line keybinding
  At the time being <C-n> and <C-p> are used by cmp which is not
  necessarily convenient.
