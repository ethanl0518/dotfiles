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

# zsh
unset ZSH

if [ -e "$HOME/.zshrc" ]; then
    mv $HOME/.zshrc $HOME/.zshrc.bak
fi
ln -svf ${BASEDIR}/zshrc $HOME/.zshrc

if [ -e "$HOME/.oh-my-zsh" ]; then
    mv $HOME/.oh-my-zsh $HOME/.oh-my-zsh.bak
fi
ln -svfn ${BASEDIR}/oh-my-zsh $HOME/.oh-my-zsh

chmod +x ${BASEDIR}/oh-my-zsh/tools/install.sh
sh ${BASEDIR}/oh-my-zsh/tools/install.sh

# dir_colors

if [ -e "$HOME/.dir_colors" ]; then
    mv $HOME/.dir_colors $HOME/.dir_colors.bak
fi
ln -svf ${BASEDIR}/dir_colors $HOME/.dir_colors

# shell colorscheme
if [ -e "$HOME/.config" ]; then
    if ! [ -d "$HOME/.config" ]; then
        mv $HOME/.config $HOME/.config.bak
        mkdir $HOME/.config
    fi
else
    mkdir $HOME/.config
fi

if [ -e "$HOME/.config/base16-shell" ]; then
    mv $HOME/.config/base16-shell $HOME/.config/base16-shell.bak
fi
ln -svfn ${BASEDIR}/base16-shell $HOME/.config/base16-shell

# mkdir
mkdir -p $HOME/.vim/dirs/backups
mkdir -p $HOME/.vim/dirs/undos

# todo
# add README to script
# -n not sure
# -fn unusable?



