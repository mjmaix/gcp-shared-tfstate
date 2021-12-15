output "gcp_project" {
  value       = local.gsa_project
  description = "The project name of where the service account was created."
}

output "service_account_name" {
  value       = google_service_account.service_account.name
  description = "The fully qualified name of the service account."
}

output "service_account_id" {
  value       = google_service_account.service_account.id
  description = "The identifier for the service account with format projects/{{project}}/serviceAccounts/{{email}}"
}


output "service_account_unique_id" {
  value       = google_service_account.service_account.name
  description = "The unique id of the service account."
}



