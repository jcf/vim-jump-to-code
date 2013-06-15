# Jump To Code

Please note, I have replaced the functionality offered by this plugin
with [Unite.vim][] and the following mapping:

" Jump to a project {{{
  map <leader>P :<C-u>execute 'Unite directory:' . expand('~/Code') .
        \ ' directory_mru ' .
        \ '-buffer-name=directories ' .
        \ '-start-insert -toggle -default-action=cd'<CR>
" }}}

**As such I won't be actively developing this plugin. I urge you to check
out Unite.vim instead!**

---

Switch directories quickly in your preferred code directory. Defaults to
`$HOME/Code`.

To change the default directory to say ~/Projects set the following:

``` vim
let g:jump_to_code_base = expand("~/Projects")
```

## Installation

I personally use Vundle to install and manage my Vim dependencies, but
if you don't have a preferred installation method, Tim Pope recommends
installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and
then simply copying and pasting:

```
cd ~/.vim/bundle
git clone git://github.com/jcf/vim-jump-to-code.git
```

And Tim Pope's a pretty decent guy to hand out Vim-related advice.

## License

Copyright © James Conroy-Finn.  Distributed under the same terms as Vim
itself.  See `:help license`.

[Unite.vim]: https://github.com/Shougo/unite.vim
