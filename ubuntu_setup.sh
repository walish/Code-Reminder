# Terminator
echo '\033[92m start install terminator \033[0m'
sudo add-apt-repository ppa:gnome-terminator -y 
sudo apt-get update 
sudo apt-get install terminator -y
echo '\033[92m complete install terminator \033[0m'

# Skype for Linux
echo '\033[92m start install Skype for Linux \033[0m'
sudo apt install apt-transport-https
curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
sudo apt update
sudo apt install skypeforlinux
echo '\033[92m complete install Skype for Linux \033[0m'
