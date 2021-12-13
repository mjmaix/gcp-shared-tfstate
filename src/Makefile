ENV=local

init: check-env
	terraform workspace new $(ENV)
	terraform init

plan: check-env switch-workspace
	terraform plan -var-file="../tfvars/terraform-$(ENV).tfvars" -out="./plans/plan.$(ENV).out"

apply: check-env switch-workspace
	terraform apply "./plans/plan.$(ENV).out"

switch-workspace:
	terraform workspace select $(ENV)

check-env:
ifndef ENV
	$(error ENV is undefined)
endif