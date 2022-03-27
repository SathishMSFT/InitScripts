sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

mkdir ~/.poshthemes
sudo apt install unzip
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
sudo unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
sudo chmod 777 ~/.poshthemes/*.json
sudo rm ~/.poshthemes/themes.zip

app='eval "$(oh-my-posh init bash --config ~/.poshthemes/amro.omp.json)"'
echo $app >> ~/.bashrc
source ~/.bashrc