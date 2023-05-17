#!/usr/bin/bash

sudo apt-get update -y

sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/$USER/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source ~/.bashrc 

echo "✅ brew installed successfully"

brew install derailed/k9s/k9s

sudo apt-get install fzf -y

echo "✅ kubectx, kubens, fzf, homebrew, and k9s installed successfully"

alias k="kubectl"
alias kga="kubectl get all"
alias kgn="kubectl get all --all-namespaces"
alias kdel="kubectl delete"
alias kd="kubectl describe"
alias kg="kubectl get"

echo 'alias k="kubectl"' >> /home/$USER/.bashrc
echo 'alias kga="kubectl get all"' >> /home/$USER/.bashrc
echo 'alias kgn="kubectl get all --all-namespaces"' >> /home/$USER/.bashrc
echo 'alias kdel="kubectl delete"' >> /home/$USER/.bashrc
echo 'alias kd="kubectl describe"' >> /home/$USER/.bashrc
echo 'alias kg="kubectl get"' >> /home/$USER/.bashrc

echo "✅ The following aliases were added:"
echo "alias k=kubectl"
echo "alias kga=kubectl get all"
echo "alias kgn=kubectl get all --all-namespaces"
echo "alias kdel=kubectl delete"
echo "alias kd=kubectl describe"
echo "alias kg=kubectl get"

source ~/.bashrc 