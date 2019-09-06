# Provisioning

Just execute this command and that's it! 
```bash
wget -qO- https://raw.githubusercontent.com/ssledz/workstation-setup/master/provision.sh | bash
```

# Testing using vagrant machine
```
vagrant up
sudo apt-get install virtualenv
./init-env.sh
. ./env.sh
ansible-playbook -i hosts --limit 192.168.33.10 site.yml
```

# Useful commands

```
ansible localhost -i hosts -m setup -a 'filter=ansible_lsb'
ansible 192.168.33.10 -i hosts -m setup -a 'filter=ansible_lsb'
```

```
ssh -i .vagrant/machines/default/virtualbox/private_key  vagrant@192.168.33.10
```