variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default     = "n8n-infra-axot"
}

variable "region" {
  description = "GCP region for deployment"
  type        = string
  default     = "europe-west1"
}

variable "n8n_image" {
  description = "n8n Docker image"
  type        = string
  default     = "n8nio/n8n:latest"
}

variable "cloud_run_memory" {
  description = "Memory for Cloud Run service"
  type        = string
  default     = "2Gi"
}

variable "cloud_run_cpu" {
  description = "CPU for Cloud Run service"
  type        = string
  default     = "1"
}

variable "db_tier" {
  description = "Cloud SQL instance tier (smallest: db-f1-micro)"
  type        = string
  default     = "db-f1-micro"
}

variable "db_disk_size" {
  description = "Cloud SQL disk size in GB"
  type        = number
  default     = 10
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID for your domain"
  type        = string
}

variable "cloudflare_api_token" {
  description = "Cloudflare API token with DNS edit permissions"
  type        = string
  sensitive   = true
}

variable "n8n_domain" {
  description = "Custom domain for n8n"
  type        = string
}

locals {
  n8n_url = "https://${var.n8n_domain}"
}
