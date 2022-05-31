Link /home/kal/.vimrc to vimrc; Link /home/kal/.vim to dotvim
ftplugin holds various language support to vim


$ ln -s $PWD/vimrc $HOME/.vimrc
$ ln -s /home/kal/dots/vimconfs/dotvim/ /home/kal/.vim

Remember the / after dotvim is required in the above line to link to the folder itself.
