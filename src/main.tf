terraform {
  required_version = ">= 0.12"
}

provider "google" {
  credentials = file(var.gcp_auth_file)
  project     = var.gcp_project
  region      = var.gcp_region
}

locals {
  gcb_project       = var.gcp_project
  gcb_name          = var.bucket_name
  gcb_region        = var.gcp_region
  gcb_storage_class = var.storage_class
  gcb_force_destroy = false
  gcb_versioning    = true
}

# Create a GCS Bucket
resource "google_storage_bucket" "tf-bucket" {
  project       = local.gcb_project
  name          = local.gcb_name
  location      = local.gcb_region
  force_destroy = local.gcb_force_destroy
  storage_class = local.gcb_storage_class
  versioning {
    enabled = local.gcb_versioning
  }
}
