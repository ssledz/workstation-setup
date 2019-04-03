# workstation-setup

```
vagrant up
sudo apt-get install virtualenv
./init.env
. ./env.sh
ansible-playbook -i hosts site.yml
```

```
ansible all -i hosts -m setup -a 'filter=ansible_lsb'
```

```
ssh -i .vagrant/machines/default/virtualbox/private_key  vagrant@192.168.33.10
```