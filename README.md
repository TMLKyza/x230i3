Dotfiles for i3
script.sh uses $HOME to install every configuration file. 
See scriptConfig for more details on where files are copied
script.sh automatically uses sudo to copy file!

confpusher automatically updates the dots folder based on what is listed in scriptConfig it is able to push to git too just by using:
confpusher [commit msg] [repo] [branch]

this config uses content from: 
https://github.com/romkatv/powerlevel10k
https://github.com/jaagr/polybar
https://github.com/dylanaraps/pywal

MUST DO AFTER SCRIPT RUN:
-change screenres config in .config/i3/config
-change keyboard layout in .config/i3/config

