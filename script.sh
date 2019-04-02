#!/bin/sh
dotsloc=$(pwd)
cmd="sed s\|DOTS_LOC.\*\|DOTS_LOC="$dotsloc"\|g -i .zshrc"
eval $cmd
depends=$(cat script.conf | grep -v "#" | grep '£' | cut -c4-)
aur=$(cat script.conf | grep -v '#' | grep '§' | cut -c4-)
if [ "$(uname -r | cut -f 4 -d '-')" == "ARCH" ]; then
	sudo pacman -S $depends ;
	for i in $aur; do
		mkdir gitrepos
		cd gitrepos
		gitrepo=$(echo $i|cut -f2 -d';')
		dirname=$(echo $i|cut -f1 -d';')
		cmd="git clone "$gitrepo
		echo $cmd
		eval $cmd
		cmd="cd "$dirname
		echo $cmd
		eval $cmd
		cmd="makepkg -sic"
		echo $cmd
		eval $cmd
	done
else
	echo "install:"$depends
	for i in $aur; do
		gitrepo=$(echo $i|cut -f2 -d';')
		dirname=$(echo $i|cut -f1 -d';')
		echo "download and compile: "$dirname"@"$gitrepo
	done
fi
cmd="cd "$dotsloc
echo $cmd 
eval $cmd
gitdirs=$(cat script.conf | grep -v '#' | grep '%' | cut -c3-)
for i in $gitdirs; do
	cmd="cd "$(echo $i | cut -d';' -f1)
	echo $cmd
	eval $cmd
	cmd="git clone "$(echo $i | cut -d';' -f2)
	echo $cmd
	eval $cmd
done

sudo rm -r $dotsloc/gitrepos
cmd="cd "$dotsloc
echo $cmd 
eval $cmd
files=$(cat script.conf | grep -v "#" | grep ">")
for i in $files;
do
	source=$(echo $i |cut -f1 -d'>')
	dest=$(echo $i|cut -f2 -d'>')
	cmd="sudo rsync -arog "$source" "$dest 
	echo $cmd
	eval $cmd
	cmd="sudo chown -R $USER "$dest""$source" & sudo chgrp -R "$(id -g -n)" "$dest""$source
	echo $cmd
	eval $cmd
done
sudo sed 's/#%PAM-1.0/#%PAM-1.0\nauth\tsufficient\tpam_fprintd.so/g' -i /etc/pam.d/*

