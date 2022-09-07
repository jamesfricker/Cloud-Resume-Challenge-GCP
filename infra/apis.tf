resource "google_project_service" "enabled_apis" {
  project = var.project_id
  for_each = toset([
    "serviceusage.googleapis.com",
    "iam.googleapis.com",
  ])
  service = each.key

  disable_on_destroy = false
}
