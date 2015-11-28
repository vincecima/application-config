Bootsrap Ansible
```bash
sudo scripts/bootstrap
```

Run once to provision new boxes for further communication
(dev)
```bash
ansible-playbook -i inventory/development bootstrap.yml --sudo -u vagrant --ask-pass
```
(production)
```bash
ansible-playbook -i inventory/development bootstrap.yml --sudo -u USERNAME
```

Run to apply rest of configuration
```bash
ansible-playbook -i inventory/development site.yml -u sysadmin --sudo --ask-vault
```
