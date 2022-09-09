resource "google_project_service" "enabled_apis" {
  project = var.project_id
  for_each = toset([
    "serviceusage.googleapis.com",
    "iam.googleapis.com",
    "cloudresourcemanager.googleapis.com",
<<<<<<< HEAD
    "dns.googleapis.com",
    "cloudbuild.googleapis.com",
    "run.googleapis.com",
    "compute.googleapis.com"
=======
>>>>>>> parent of a63d353 (Feature/cdn infra (#9))
  ])
  service = each.key

  disable_on_destroy = false
}
