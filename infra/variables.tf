variable "project_id" {
  description = "GCS Project ID"
  type        = string
}

variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "australia-southeast2"
}

variable "resume_bucket" {
  description = "GCS Bucket name. Value should be unique."
  type        = string
}

variable "website_homepage" {
  description = "html location for my homepage"
  type        = string
}
