#!/bin/sh

PLUGINS=$(ls ~/.config/nvim/pack/nvim/start/)
cat /dev/null > ./clone_urls.txt
echo "## Dependencies" > ./README.md
for key in $PLUGINS
do
	echo $key >> ./README.md
	echo $(git -C "/home/deltamike/.config/nvim/pack/nvim/start/"$key remote -v | awk 'NR==1{ print $2 }') >> ./clone_urls.txt
done
