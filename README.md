# vim-nonblank

Deletes all extra blank characters of trailing spaces, tabs, and newlines on
every write.

## Installation

Using [vim-plug](https://github.com/junegunn/vim-plug),

```vim
Plug 'raviqqe/vim-nonblank'
```

## Example

A buffer of content ($ denotes a newline character):

```text
foo  $
$
  $
bar baz   $
  $
$
```

will be saved as:

```text
foo$
$
$
bar baz$
```

## Configuration

To disable auto deletion of blank characters, set the flag as below.

```vim
let g:nonblank_auto_delete = 0
```

And, run `:NonBlank` command manually with or without a range.

## License

[The Unlicense](https://unlicense.org/)
