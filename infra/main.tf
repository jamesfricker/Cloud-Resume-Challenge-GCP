provider "google" {
  project = var.project_id
  region  = var.region
}

# GCP beta provider
provider "google-beta" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "resume_bucket" {
  name          = var.resume_bucket
  location      = var.region
  storage_class = "COLDLINE"
  website {
    main_page_suffix = var.website_homepage
  }
  cors {
    origin          = ["*"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}
