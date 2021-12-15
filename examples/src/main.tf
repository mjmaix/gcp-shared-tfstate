terraform {
  backend "gcs" {

  }
}

locals {
  gsa_project = var.gcp_project
  gsa_id      = var.account_id
  gsa_name    = var.name

}

resource "google_service_account" "service_account" {
  account_id   = local.gsa_id
  display_name = local.gsa_name
  project      = local.gsa_project
}
