# vim
if [ -e "$HOME/.vimrc" ]; then
    mv $HOME/.vimrc $HOME/.vimrc.bak
fi
ln -svf $HOME/dotfiles/vimrc $HOME/.vimrc

if [ -d "$HOME/.vim" ]; then
    mv $HOME/.vim $HOME/.vim.bak
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# mkdir
mkdir -p $HOME/.vim/dirs/backups
mkdir -p $HOME/.vim/dirs/undos
