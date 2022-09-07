resource "google_service_account" "tf-sa" {
  account_id   = "terraform-service-account"
  display_name = "tf_SA"
}

resource "google_project_iam_member" "tf-sa-binding" {
  project = var.project_id
  for_each = toset([
    "roles/owner",
  ])
  role   = each.key
  member = "serviceAccount:${google_service_account.tf-sa.email}"
}

resource "google_service_account_key" "sa_key" {
  service_account_id = google_service_account.tf-sa.name
}


