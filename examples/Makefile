APP_NAME=tf1-demo-service-account

# main tf commands
init: check-env check-tfstate-bucket check-credentials
	cd $(LOCATION) && \
	terraform init \
		-backend-config="bucket=$(TFSTATE_BUCKET)" \
		-backend-config="prefix=$(ENV)/$(APP_NAME)"
	terraform workspace new $(ENV)

plan: check-env switch-workspace
	cd $(LOCATION) && \
	terraform plan \
		-var-file="../tfvars/terraform-$(ENV).tfvars" \
		-out="../plans/plan.$(ENV).out"

apply: check-env switch-workspace
	cd $(LOCATION) && \
	terraform apply "../plans/plan.$(ENV).out"

destroy: check-env switch-workspace
	cd $(LOCATION) && \
	terraform plan \
		-destroy \
		-var-file="../tfvars/terraform-$(ENV).tfvars" \
		-out="./plans/plan.$(ENV).out"
	terraform apply "../plans/plan.$(ENV).out"

# utils

switch-workspace: check-credentials
	terraform workspace select $(ENV)

delete-workspace:
	terraform workspace select default
	terraform workspace delete $(ENV)

check-env:
ifndef ENV
	$(error ENV is undefined)
endif

check-tfstate-bucket:
ifndef TFSTATE_BUCKET
	$(error TFSTATE_BUCKET is undefined)
endif

check-credentials:
ifndef GOOGLE_APPLICATION_CREDENTIALS
	$(error GOOGLE_APPLICATION_CREDENTIALS is undefined)
endif

ifndef LOCATION
$(error LOCATION is not set)
endif

# # initialize command

# $ ENV=local-mja \
# 	LOCATION=src \
#     TFSTATE_BUCKET=apps-shared-tfstate \
#     GOOGLE_APPLICATION_CREDENTIALS=../../auth/sharedtfstate1-03f48ec1e1c0.json \
#     make init