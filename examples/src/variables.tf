# GCP authentication file
variable "gcp_auth_file" {
  type        = string
  description = "GCP authentication file"
}
# define GCP region
variable "gcp_region" {
  type        = string
  description = "GCP region"
}
# define GCP project name
variable "gcp_project" {
  type        = string
  description = "GCP project name"
}

variable "name" {
  type        = string
  description = "The display name of the service account"
}

variable "account_id" {
  type        = string
  description = "A unique id for the service account. Regex pattern: [a-z]([-a-z0-9]*[a-z0-9])"
}


