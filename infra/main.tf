provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "resume_bucket" {
  name     = var.resume_bucket
  location = var.region
}


