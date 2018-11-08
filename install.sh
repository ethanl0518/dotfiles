git submodule init
git submodule update --remote --recursive #not sure

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# dotfiles
if [ -e "$HOME/.dotfiles" ]; then
    mv $HOME/.dotfiles $HOME/.dotfiles.bak
fi
ln -svfn ${BASEDIR}/ $HOME/.dotfiles 

# vim
if [ -e "$HOME/.vimrc" ]; then
    mv $HOME/.vimrc $HOME/.vimrc.bak
fi
ln -svf ${BASEDIR}/vimrc $HOME/.vimrc

if [ -e "$HOME/.vim" ]; then
    mv $HOME/.vim $HOME/.vim.bak
fi
ln -svfn ${BASEDIR}/vim $HOME/.vim

# mkdir
mkdir -p $HOME/.vim/dirs/backups
mkdir -p $HOME/.vim/dirs/undos
