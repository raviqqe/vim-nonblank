# vim-non-blank

Deletes all extra blank characters of trailing spaces, tabs, and newlines on
every write.

## Installation

Using [vim-plug](https://github.com/junegunn/vim-plug),

```vim
Plug 'raviqqe/vim-non-blank'
```

## Example

A buffer of content ($ denotes a newline character.):

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

## License

[The Unlicense](https://unlicense.org/)
