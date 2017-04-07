# myconf
My Dot Files

### INSTALLATION ###
cd $HOME
git clone --bare git@github.com:mattakelly/myconf.git $HOME/.myconf
/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME
myconf checkout
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
myconf config status.showUntrackedFiles no
