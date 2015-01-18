Download 3rd party roles
```bash
ansible-galaxy install -r requirements.yml -p roles/ext
```

Run once to provision app boxes for further communication
```bash
ansible-playbook -i inventory/development playbooks/bootstrap.yml --sudo -k -u <username>
```

Run to apply rest of configuration
```bash
ansible-playbook -i inventory/development playbooks/<playbook> -u sysadmin --sudo --ask-vault
```
