if [ -n "$(cat /etc/issue | grep Debian)" ]; then
  echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
  apt-get update
  apt-get install ansible -y --allow-unauthenticated
fi
if [ -n "$(cat /etc/issue | grep RedHat)" ]; then
  yum -y install ansible
fi

ansible-playbook workspace.yml
# ansible-galaxy install viasite-ansible.zsh --force
# curl https://raw.githubusercontent.com/viasite-ansible/ansible-role-zsh/master/playbook.yml > /tmp/zsh.yml
# ansible-playbook -i "localhost," -c local /tmp/zsh.yml
# ansible-playbook -i "localhost," -c local /tmp/zsh.yml --extra-vars="zsh_user=$(whoami)"
# chsh -s /bin/zsh
