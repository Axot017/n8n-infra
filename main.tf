data "google_project" "project" {
  project_id = var.project_id
}

output "n8n_url" {
  description = "URL of the n8n service (custom domain)"
  value       = local.n8n_url
}

output "n8n_cloud_run_url" {
  description = "URL of the n8n Cloud Run service (direct)"
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

output "oauth_redirect_uri" {
  description = "OAuth redirect URI for Google Workspace setup"
  value       = "${local.n8n_url}/rest/oauth2-credential/callback"
}

output "created_dns_records" {
  description = "DNS records created in Cloudflare"
  value = {
    name    = cloudflare_dns_record.n8n.name
    type    = cloudflare_dns_record.n8n.type
    content = cloudflare_dns_record.n8n.content
  }
}
