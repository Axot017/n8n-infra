provider "google" {
  project = var.project_id
  region  = var.region
}

data "google_project" "project" {
  project_id = var.project_id
}

output "n8n_url" {
  description = "URL of the n8n service"
  value       = google_cloud_run_v2_service.n8n.uri
}

output "cloud_sql_instance" {
  description = "Cloud SQL instance connection name"
  value       = google_sql_database_instance.n8n.connection_name
}

output "service_account_email" {
  description = "Service account email used by n8n"
  value       = google_service_account.n8n.email
}
