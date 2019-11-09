terraform {
  backend "remote" {
    organization = "onmyown"

    workspaces {
      name = "cloudnative-tool-demo-firewall"
    }
  }
}

# Configure the Google Cloud provider
provider "google" {
  project     = "${var.gcp_project_id}"
  version     = "~> 2.0"
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
