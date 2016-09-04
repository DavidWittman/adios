clean:
	-find -type f -name '*.pyc' -o -name '*.retry' -delete

lint:
	ansible-playbook -i inventory --syntax-check playbooks/adios.yml
	ansible-playbook -i inventory --syntax-check playbooks/amazon.yml
	ansible-playbook -i inventory --syntax-check playbooks/digitalocean.yml
	ansible-playbook -i inventory --syntax-check playbooks/google.yml
	ansible-playbook -i inventory --syntax-check playbooks/linode.yml
	ansible-playbook -i inventory --syntax-check playbooks/rackspace.yml
	ansible-lint playbooks/*.yml

.PHONY: clean lint
