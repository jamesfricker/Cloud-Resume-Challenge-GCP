resource "google_project_service" "enabled_apis" {
  project = var.project_id
  for_each = toset([
    "serviceusage.googleapis.com",
    "iam.googleapis.com",
    "dns.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "cloudbuild.googleapis.com",
    "run.googleapis.com"
  ])
  service = each.key

  disable_on_destroy = false
}
