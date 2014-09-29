Run once to provision dev box
```bash
ansible-playbook -i inventory/development playbooks/dev.yml --ask-vault
```

Run once to provision app boxes for further communication
```bash
ansible-playbook -i inventory/development playbooks/bootstrap.yml --sudo -k -u <username>
```

Run to apply rest of configuration
```bash
ansible-playbook -i inventory/development playbooks/site.yml -u sysadmin --sudo --ask-vault
```
