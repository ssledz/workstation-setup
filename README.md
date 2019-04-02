# workstation-setup

```
vagrant up
. ./env.sh
ansible-playbook -i hosts site.yml
```

```
ansible all -i hosts -m setup -a 'filter=ansible_lsb'
```