Bootsrap Ansible
```bash
sudo scripts/bootstrap
```

Download 3rd party roles
```bash
ansible-galaxy install -r requirements.yml -p roles/ext
```

Run to apply dev configuration
```bash
ansible-playbook -i inventory/production dev.yml --ask-sudo
```

Run once to provision new boxes for further communication
```bash
ansible-playbook -i inventory/development bootstrap.yml --sudo -u USERNAME --limit=SUBSET
```

Run to apply rest of configuration
```bash
ansible-playbook -i inventory/development site.yml -u sysadmin --sudo --ask-vault
```
