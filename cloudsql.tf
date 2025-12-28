resource "google_sql_database_instance" "n8n" {
  name             = "n8n-db-axot"
  database_version = "POSTGRES_18"
  region           = var.region

  settings {
    tier              = var.db_tier
    availability_type = "ZONAL"
    disk_size         = var.db_disk_size
    disk_type         = "PD_HDD"
    disk_autoresize   = false

    backup_configuration {
      enabled = false
    }

    ip_configuration {
      ipv4_enabled = true
    }

    database_flags {
      name  = "max_connections"
      value = "50"
    }
  }

  deletion_protection = false

  depends_on = [google_project_service.sqladmin]
}

resource "google_sql_database" "n8n" {
  name     = "n8n"
  instance = google_sql_database_instance.n8n.name
}

resource "google_sql_user" "n8n" {
  name     = "n8n-user"
  instance = google_sql_database_instance.n8n.name
  password_wo = random_password.db_password.result
  password_wo_version = 1
}




