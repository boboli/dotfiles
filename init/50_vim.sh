# Backups, swaps and undos are stored here.
mkdir -p $DOTFILES/caches/vim

# Download Vim plugins.
if [[ "$(command -v vim)" ]]; then
  vim +PluginInstall +PluginUpdate +qall
  cd ~/.vim/bundle/YouCompleteMe && ./install.py --clang-completer
fi
