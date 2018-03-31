# vim-nonblank

This plugin deletes trailing whitespaces on every write.

## Installation

Using [vim-plug](https://github.com/junegunn/vim-plug),

```vim
Plug 'raviqqe/vim-nonblank'
```

## Example

A buffer (`$` denotes a newline character)

```text
foo  $
$
  $
bar baz   $
  $
$
```

will be normalized as below.

```text
foo$
$
$
bar baz$
```

## Configuration

### Disabling auto deletion

Set the `enabled` flag to `0`.

```vim
let g:nonblank_enabled = 0
```

Then you can run `:NonBlank` command manually.

### Blacklisting filetypes

Set the `blacklist` flag.

```vim
let g:nonblank_blacklist = ['python']
```

The default value is `['diff', 'gitcommit']`.

## License

[The Unlicense](https://unlicense.org/)
