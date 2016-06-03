git submodule init
git submodule update --remote --recursive #not sure

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -svfn ${BASEDIR}/ ~/.dotfiles #-n not sure

# vim
ln -svf ${BASEDIR}/vimrc ~/.vimrc
ln -svfn ${BASEDIR}/vim ~/.vim

# zsh
unset ZSH
ln -svf ${BASEDIR}/zshrc ~/.zshrc
ln -svfn ${BASEDIR}/oh-my-zsh ~/.oh-my-zsh
chmod +x ${BASEDIR}/oh-my-zsh/tools/install.sh
sh ${BASEDIR}/oh-my-zsh/tools/install.sh

# dir_colors
ln -svf ${BASEDIR}/dir_colors ~/.dir_colors

# shell colorscheme
if [ -d "~/.config" ]; then
    mkdir ~/.config
fi
ln -svfn ${BASEDIR}/base16-shell ~/.config/base16-shell


# todo
# add README to script


