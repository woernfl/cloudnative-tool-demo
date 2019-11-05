######## GCP provide vars ########
# Path to the authentification to GCP json file 
variable "path_gcp_auth_json_file" {
  description = "Path to the authentication JSON file"
}

# GCP project ID
variable "gcp_project_id" {
  description = "GCP Project ID"
}

######## Firewall vars ########
# Name of the GKE cluster
variable "firewall_rule_name" {
  description = "Name of the firewall rule"
}