set runtimepath+=~/.config/vim

source ~/.config/vim/general.vim
source ~/.config/vim/general-functions.vim
source ~/.config/vim/general-mappings.vim
source ~/.config/vim/filetypes.vim
source ~/.config/vim/filetypes-mappings.vim

" source plugins
source ~/.config/vim/plugins.vim
source ~/.config/vim/plugins-functions.vim

" source theme
source ~/.config/vim/theme-color.vim


try
  source ~/.config/vim/custom.vim
catch
endtry


" source plugin configurations
source ~/.config/vim/after/plugin/ack.rc.vim
source ~/.config/vim/after/plugin/airline.rc.vim
source ~/.config/vim/after/plugin/ale.rc.vim
source ~/.config/vim/after/plugin/arg-wrap.rc.vim
source ~/.config/vim/after/plugin/auto-paris.rc.vim
source ~/.config/vim/after/plugin/buf-explorer.rc.vim
source ~/.config/vim/after/plugin/close-tag.rc.vim

source ~/.config/vim/after/plugin/coc.rc.vim
source ~/.config/vim/after/plugin/ctrlp.rc.vim
source ~/.config/vim/after/plugin/deoplete.rc.vim
source ~/.config/vim/after/plugin/easy-align.rc.vim
source ~/.config/vim/after/plugin/editorconfig.rc.vim
source ~/.config/vim/after/plugin/emmet-vim.rc.vim
source ~/.config/vim/after/plugin/expand-region.rc.vim
source ~/.config/vim/after/plugin/fugitive.rc.vim
source ~/.config/vim/after/plugin/fzf.rc.vim
source ~/.config/vim/after/plugin/git-gutter.rc.vim
source ~/.config/vim/after/plugin/goyo.rc.vim
source ~/.config/vim/after/plugin/gv.rc.vim
source ~/.config/vim/after/plugin/indentline.rc.vim
source ~/.config/vim/after/plugin/javascript.rc.vim
source ~/.config/vim/after/plugin/js-beautify.rc.vim
source ~/.config/vim/after/plugin/lightline.rc.vim
source ~/.config/vim/after/plugin/listtoggle.rc.vim

source ~/.config/vim/after/plugin/markdown.rc.vim
source ~/.config/vim/after/plugin/match-tag-always.rc.vim
source ~/.config/vim/after/plugin/maxima.rc.vim
source ~/.config/vim/after/plugin/mru.rc.vim
source ~/.config/vim/after/plugin/neosnipet.rc.vim
source ~/.config/vim/after/plugin/nerdcommenter.rc.vim
source ~/.config/vim/after/plugin/nerdtree.rc.vim
source ~/.config/vim/after/plugin/nerdtreegit.rc.vim
source ~/.config/vim/after/plugin/open-browser.rc.vim
source ~/.config/vim/after/plugin/snipmate.rc.vim
source ~/.config/vim/after/plugin/sqlitedb.rc.vim
source ~/.config/vim/after/plugin/surround.rc.vim
source ~/.config/vim/after/plugin/tagbar.rc.vim
source ~/.config/vim/after/plugin/telescope.rc.vim
source ~/.config/vim/after/plugin/tern.rc.vim
source ~/.config/vim/after/plugin/toggle-jekyll.rc.vim
source ~/.config/vim/after/plugin/treesitter.rc.vim
source ~/.config/vim/after/plugin/undotree.rc.vim
source ~/.config/vim/after/plugin/vim-css3.rc.vim
source ~/.config/vim/after/plugin/vim-go.rc.vim
source ~/.config/vim/after/plugin/vim-grep.rc.vim
source ~/.config/vim/after/plugin/vim-move.rc.vim
source ~/.config/vim/after/plugin/vim-multiple-cursors.rc.vim
source ~/.config/vim/after/plugin/vim-session.rc.vim
source ~/.config/vim/after/plugin/vim-tmux.rc.vim
source ~/.config/vim/after/plugin/vimwiki.rc.vim
source ~/.config/vim/after/plugin/web-devicons.rc.vim
source ~/.config/vim/after/plugin/yankstack.rc.vim
source ~/.config/vim/after/plugin/zen-coding.rc.vim

if has("nvim")
  source ~/.config/vim/after/plugin/cmp.rc.vim
  source ~/.config/vim/after/plugin/lsp-colors.rc.vim
  source ~/.config/vim/after/plugin/lsp-config.rc.vim
  source ~/.config/vim/after/plugin/lsp-installer.rc.lua
  source ~/.config/vim/after/plugin/lsp-saga.rc.vim
  source ~/.config/vim/after/plugin/lspkind.rc.lua
endif
