YADR=$HOME/.yadr.rpanachi

# remove vimify
rm -rfv $HOME/.yadr/vimify
rm -v $HOME/.inputrc
rm -v $HOME/.editrc

# zsh
rm -rfv $HOME/.yadr/zsh/key-bindings.zsh
ln -snfv $YADR/zsh/aliases.zsh $HOME/.yadr/zsh/aliases.rpanachi.zsh
ln -snfv $YADR/zsh/autojump.zsh $HOME/.yadr/zsh/autojump.rpanachi.zsh
ln -snfv $YADR/zsh/rbenv.zsh $HOME/.yadr/zsh/rbenv.rpanachi.zsh
ln -snfv $YADR/zsh/key-bindings.zsh $HOME/.yadr/zsh/zzzz_key-bindings.zsh

# vim
rm -rfv $HOME/.vim/settings/neocomplete.vim
rm -rfv $HOME/.vim/settings/disable-arrowkeys.vim
ln -snfv $YADR/vim/guifont.vim $HOME/.vim/settings/guifont.rpanachi.vim
ln -snfv $YADR/vim/syntastic.vim $HOME/.vim/settings/syntastic.rpanachi.vim

# git
ln -snfv $YADR/git/gitconfig $HOME/.gitconfig.user
