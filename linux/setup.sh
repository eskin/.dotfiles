#!/usr/bin/env bash

NOW=`date +"%F %T"`
for DIR in ~/.i3/config
do
    mv $DIR "_dotfiles_backup $NOW `basename $DIR`"
done

ln -sfv ~/.dotfiles/linux/i3/config ~/.i3/config
ln -sfv ~/.dotfiles/linux/Xresources ~/.Xresources

