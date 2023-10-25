all: init apply


apply:
	terraform apply -auto-approve

init:
	terraform init


SHELL_FILE=hw.pem

destroy:
	terraform destroy -auto-approve
	-rm -f $(SHELL_FILE)

$(SHELL_FILE): 
	terraform output -raw private_key > $(SHELL_FILE)
	chmod 400 $(SHELL_FILE)

ssh: $(SHELL_FILE)
	ssh -i $(SHELL_FILE) ubuntu@$(shell terraform output -raw instance_public_ip)