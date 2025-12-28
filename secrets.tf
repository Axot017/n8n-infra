ephemeral "random_password" "db_password" {
  length  = 32
  special = false
}

ephemeral "random_password" "encryption_key" {
  length  = 64
  special = false
}

resource "google_secret_manager_secret" "db_password" {
  secret_id = "n8n-db-password"

  replication {
    auto {}
  }

  depends_on = [google_project_service.secretmanager]
}

resource "google_secret_manager_secret_version" "db_password" {
  secret      = google_secret_manager_secret.db_password.id
  secret_data_wo = random_password.db_password.result
  secret_data_wo_version = 1
}

resource "google_secret_manager_secret" "encryption_key" {
  secret_id = "n8n-encryption-key"

  replication {
    auto {}
  }

  depends_on = [google_project_service.secretmanager]
}

resource "google_secret_manager_secret_version" "encryption_key" {
  secret      = google_secret_manager_secret.encryption_key.id
  secret_data_wo = random_password.encryption_key.result
  secret_data_wo_version = 1
}

