resource "google_project_service" "run" {
  project            = var.project_id
  service            = "run.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "sqladmin" {
  project            = var.project_id
  service            = "sqladmin.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "secretmanager" {
  project            = var.project_id
  service            = "secretmanager.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "iam" {
  project            = var.project_id
  service            = "iam.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "gmail" {
  project            = var.project_id
  service            = "gmail.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "drive" {
  project            = var.project_id
  service            = "drive.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "sheets" {
  project            = var.project_id
  service            = "sheets.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "docs" {
  project            = var.project_id
  service            = "docs.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "calendar" {
  project            = var.project_id
  service            = "calendar-json.googleapis.com"
  disable_on_destroy = false
}
