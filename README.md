# Jump To Code

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
