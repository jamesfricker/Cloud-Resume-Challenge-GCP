terraform {
  backend "gcs" {
    bucket = "tf_state029348"
    prefix = "terraform/state"
  }
}
