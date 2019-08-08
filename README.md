# workstation-setup

## Update vagrant machine
```
vagrant up
sudo apt-get install virtualenv
./init-env.sh
. ./env.sh
ansible-playbook -i hosts --limit 192.168.33.10 site.yml
```

## Update local machine
```
./init-env.sh
. ./env.sh
ansible-playbook -i hosts --limit localhost -c local site.yml --ask-become-pass
```

## Useful commnads

```
ansible localhost -i hosts -m setup -a 'filter=ansible_lsb'
ansible 192.168.33.10 -i hosts -m setup -a 'filter=ansible_lsb'
```

```
ssh -i .vagrant/machines/default/virtualbox/private_key  vagrant@192.168.33.10
```