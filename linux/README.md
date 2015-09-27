Bootsrap Ansible
```bash
sudo scripts/bootstrap
```

Run once to provision new boxes for further communication
```bash
ansible-playbook -i inventory/development bootstrap.yml --sudo -u USERNAME --limit=SUBSET
```

Run to apply rest of configuration
```bash
ansible-playbook -i inventory/development site.yml -u sysadmin --sudo --ask-vault
```
