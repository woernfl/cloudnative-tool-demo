terraform {
  backend "gcs" {
    bucket      = "tf-state-bucket-practical-well-216217"
    prefix      = "backend/terraform"
    credentials = "../../access/demo-project-terraform.json"
  }
}

# Configure the Google Cloud provider
provider "google" {
  credentials = "${file("${var.path_gcp_auth_json_file}")}"
  project     = "${var.gcp_project_id}"
  version     = "~> 1.19"
}

module "tf_state_bucket" {
  source  = "woernfl/gcs/gcp"
  version = "~>1.0.3"

  gcs_bucket_name          = "${var.gcs_bucket_name}"
  gcs_bucket_location      = "${var.gcs_bucket_location}"
  gcs_bucket_force_destroy = "${var.gcs_bucket_force_destroy}"
  gcs_bucket_storage_class = "${var.gcs_bucket_storage_class}"
  gcs_bucket_versioning    = "${var.gcs_bucket_versioning}"
}
