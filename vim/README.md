
## All the right moves

    h,l - left, right
    j,k - down, up

    gg - first line
    G  - last line
    nG - n'th line
    :n - n'th line

## Go to start and end line

    0 - beginning of line 
    $ - end of line 

## Start/end of file

    gg,SHIFT+G - goes to start/end of file

## Page up,down

    CTRL+F/B - page down/up

## Back

    u - back

## Delete

    dw - delete word
    x/X - Delete [count] characters under and after/before the cursor.

## Cut and paste

    yy - copy line

    Position the cursor where you want to begin cutting.
    Press v to select characters (or uppercase V to select whole lines, or Ctrl-v to select rectangular blocks).
    Move the cursor to the end of what you want to cut.
    Press d to cut (or y to copy).
    Move to where you would like to paste.
    Press P to paste before the cursor, or p to paste after. 

## Jump to matching bracket { } [ ] ( ) 

    % - jump to matching bracket

## Search

    /text - search for word from top to bottom
    ?text - search for word from bottom to top
    n,N - next, prev matching search pattern

## find and replace

    :s

## Opening file in Read only mode

    vim -R file.txt   #"wq!" to save

## Run Shell command from inside VI Editor

    :!command
    :!ls

## VI Editor Options

:set nu - line number
:set nonu - turn off line number

:set hlsearch - highlight the matching word
:set nohlsearch

:set wrap
:set nowrap

:colorscheme
:colorscheme murphy

:syntax on
:syntax off 

:set ignorecase

:set smartcase

## Opening multiple files

vim file1 file2 file3
:n - go to next file

:e filename
