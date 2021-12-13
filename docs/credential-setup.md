## Simple setup

1. clone `terraform-local.tfvars.template` to `terraform-local.tfvars`
1. change variables
1. validate plan `terraform plan -var-file="terraform-local.tfvars"`
1. execute changes `terraform init -var-file="terraform-local.tfvars"`

## Running Terraform outside of Google Cloud (local)

If you are running terraform outside of Google Cloud, generate a service account key and set the `GOOGLE_APPLICATION_CREDENTIALS` environment variable to the path of the service account key. Terraform will use that key for authentication.

reference: https://www.terraform.io/docs/language/settings/backends/gcs.html#running-terraform-outside-of-google-cloud
