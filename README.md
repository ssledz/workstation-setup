# workstation-setup

```
vagrant up
. ./env.sh
ansible-playbook -i hosts site.yml
```

```
ansible all -i hosts -m setup -a 'filter=ansible_lsb'
```

```
ssh -i .vagrant/machines/default/virtualbox/private_key  vagrant@192.168.33.10
```