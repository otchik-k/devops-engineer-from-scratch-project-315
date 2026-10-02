install-roles:
	ansible-galaxy install -r requirements.yml

full-deploy-dev:
	ansible-playbook -i inventory.ini playbook.yml --ask-vault-pass

full-deploy-prod:
	ansible-playbook -i inventory.ini playbook.yml -e "spring_profile=prod" --ask-vault-pass