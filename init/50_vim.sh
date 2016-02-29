# Backups, swaps and undos are stored here.
mkdir -p $DOTFILES/caches/vim

# Download Vim plugins.
if [[ "$(type -P vim)" ]]; then
  vim +PluginInstall +qall
  cd .vim/bundle/YouCompleteMe && install.py --clang-completer
fi
