# workstation-setup

```
vagrant up
sudo apt-get install virtualenv
./init.env
. ./env.sh
ansible-playbook -i hosts --limit 192.168.33.10 site.yml
```

```
ansible localhost -i hosts -m setup -a 'filter=ansible_lsb'
ansible 192.168.33.10 -i hosts -m setup -a 'filter=ansible_lsb'
```

```
ssh -i .vagrant/machines/default/virtualbox/private_key  vagrant@192.168.33.10
```

```
ansible-playbook -i hosts --limit localhost -c local site.yml --ask-sudo-pass
```