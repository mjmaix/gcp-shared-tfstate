init: check-env
	cd $(LOCATION) && \
	terraform workspace new $(ENV)
	terraform init

plan: check-env switch-workspace
	cd $(LOCATION) && \
	terraform plan \
		-var-file="../tfvars/terraform-$(ENV).tfvars" \
		-out="../plans/plan.$(ENV).out"

apply: check-env switch-workspace
	cd $(LOCATION) && \
	terraform apply "../plans/plan.$(ENV).out"

switch-workspace:
	cd $(LOCATION) && \
	terraform workspace select $(ENV)

ifndef LOCATION
$(error LOCATION is not set)
endif

check-env:
ifndef ENV
	$(error ENV is undefined)
endif