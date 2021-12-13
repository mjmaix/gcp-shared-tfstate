### Running this project to create / manage resource

1. set your environment variable to `ENV=local` or always set this inline with the other shell commands.

   - Where ENV=local is the name of environment you're working on

1. cp `ENV=local cp ./tfvars/terraform.tfvars.template ./tfvars/terraform-$(ENV).tfvars`
   - _SPECIFIC FOR THIS PROJECT ONLY CAUSE THIS IS A STARTING RESOURCE._ we encourage to commit this files for future references of other developers.
1. Update values for new tfvar
1. Go to project dir `cd src`
1. Initialise project `ENV=local make init`
1. Plan the next phase `ENV=local make plan`
1. Review the changes
1. Apply the changes `ENV=local make apply`

References:

### How to Create a Service Account for Terraform in GCP (Google Cloud Platform)

reference: https://gmusumeci.medium.com/how-to-create-a-service-account-for-terraform-in-gcp-google-cloud-platform-f75a0cf918d1

### How to Configure the GCP Backend for Terraform

reference: https://gmusumeci.medium.com/how-to-configure-the-gcp-backend-for-terraform-7ea24f59760a

### Terraform GCS backend setup

link https://www.terraform.io/docs/language/settings/backends/gcs.html
