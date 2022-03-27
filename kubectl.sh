curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

#bash completion
echo "source <(kubectl completion bash)" >> ~/.bashrc

#yq
sudo wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64
sudo chmod a+x /usr/local/bin/yq
yq --version

#kubectl neat
sudo wget -qO https://github.com/itaysk/kubectl-neat/releases/latest/download/kubectl-neat_linux_amd64.tar.gz
tar -xvf kubectl-neat_linux_amd64.tar.gz
sudo mv kubectl-neat /usr/local/bin/.
echo "alias kneat='kubectl neat | yq e'" >> ~/.bashrc

#kubectl aliases
wget -qO ~/.kubectl_aliases https://raw.githubusercontent.com/ahmetb/kubectl-aliases/0533366d8e3e3b3987cc1b7b07a7e8fcfb69f93c/.kubectl_aliases
echo "[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases" >>  ~/.bashrc


