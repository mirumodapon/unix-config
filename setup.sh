sudo apt update
sudo apt install tmux vim git
#
git clone https://github.com/Mirumodapon/unix-config.git
cp ./unix-config/.* ~/
#
git config --global user.name mirumo
git config --global user.email mail@mirumo.org
git config --global color.ui true
git config --global alias.lg "log --color --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset%s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
