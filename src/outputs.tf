output "project_name" {
  value       = local.gcb_project
  description = "The project name of where the bucket was created."
}

output "google_bucket_storage_region" {
  value       = local.gcb_region
  description = "The bucket region."
}

output "google_bucket_storage_name" {
  value       = local.gcb_name
  description = "The bucket name."
}

output "google_bucket_self_link" {
  value       = google_storage_bucket.tf-bucket.self_link
  description = "The bucket self link."
}
output "google_bucket_url" {
  value       = google_storage_bucket.tf-bucket.url
  description = "The bucket url."
}


