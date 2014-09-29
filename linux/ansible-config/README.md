Run once to provision control box
```bash
ansible-playbook -i inventory/control playbooks/control.yml --ask-vault
```

Run once to provision app boxes for further communication
```bash
ansible-playbook -i inventory/development playbooks/bootstrap.yml --sudo -k -u <username>
```

Run to apply rest of configuration
```bash
ansible-playbook -i inventory/development playbooks/<playbook> -u sysadmin --sudo --ask-vault
```
