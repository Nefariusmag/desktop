yum -y install ansible
ansible-playbook workspace.yml
# ansible-galaxy install viasite-ansible.zsh --force
# curl https://raw.githubusercontent.com/viasite-ansible/ansible-role-zsh/master/playbook.yml > /tmp/zsh.yml
# ansible-playbook -i "localhost," -c local /tmp/zsh.yml
# ansible-playbook -i "localhost," -c local /tmp/zsh.yml --extra-vars="zsh_user=$(whoami)"
# chsh -s /bin/zsh
