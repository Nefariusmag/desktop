if [ -n "$(cat /etc/issue | grep Debian)" ]; then
  apt-get -y install curl
fi
if [ -n "$(cat /etc/issue | grep RedHat)" ]; then
  yum -y install curl
fi
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py

pip install ansible

ansible-playbook workspace.yml
# ansible-galaxy install viasite-ansible.zsh --force
# curl https://raw.githubusercontent.com/viasite-ansible/ansible-role-zsh/master/playbook.yml > /tmp/zsh.yml
# ansible-playbook -i "localhost," -c local /tmp/zsh.yml
# ansible-playbook -i "localhost," -c local /tmp/zsh.yml --extra-vars="zsh_user=$(whoami)"
# chsh -s /bin/zsh
