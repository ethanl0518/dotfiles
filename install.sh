git submodule init
git submodule update --remote --recursive #not sure

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -svfn ${BASEDIR}/ ~/.dotfiles #-n not sure

# vim
ln -svfn ${BASEDIR}/vim ~/.vim
ln -svf ${BASEDIR}/vimrc ~/.vimrc

# zsh
ln -svf ${BASEDIR}/zshrc ~/.zshrc

# dir_colors
ln -svf ${BASEDIR}/dircolors ~/.zshrc

# shell colorscheme
if [ -d "~/.config" ]; then
    mkdir ~/.config
fi
ln -svfn ${BASEDIR}/base16-shell ~/.config/base16-shell


# todo
# add README to script


