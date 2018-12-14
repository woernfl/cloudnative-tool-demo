terraform {
  backend "gcs" {
    bucket      = "tf-state-bucket-practical-well-216217"
    prefix      = "firewall/terraform"
    credentials = "../../../access/demo-project-terraform.json"
  }
}

# Configure the Google Cloud provider
provider "google" {
  credentials = "${file("${var.path_gcp_auth_json_file}")}"
  project     = "${var.gcp_project_id}"
  version     = "~> 1.19"
}

resource "google_compute_firewall" "traefik_ingress" {
  name    = "${var.firewall_rule_name}"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}