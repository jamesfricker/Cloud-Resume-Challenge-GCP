provider "google" {
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


# Make bucket public by granting allUsers READER access
resource "google_storage_bucket_access_control" "public_rule" {
  bucket = google_storage_bucket.resume_bucket.id
  role   = "READER"
  entity = "allUsers"
}
