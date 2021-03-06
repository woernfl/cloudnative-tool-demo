######## GCP provide vars ########
# GCP project ID
variable "gcp_project_id" {
  description = "GCP Project ID"
}

######## GKE vars ########
# Name of the GKE cluster
variable "cluster_name" {
  description = "Name of the cluster"
}

# Logging service that will be used
variable "logging_service" {
  description = "Logging service that will be used"
}

# Monitoring service that will be used
variable "monitoring_service" {
  description = "Monitoring service that will be used"
}

# Zone where the master will be deployed
variable "region" {
  description = "Region where the nodes will be deployed"
}

# Kubernetes version
variable "kube_version" {
  description = "Kubernetes version"
}

# Daily maintenance window start time (duration will always be the minimum one)
variable "daily_maintenance_window_start_time" {
  description = "Daily maintenance window start time (format 'HH:MM', where HH : [00-23] and MM : [00-59] GMT)"
}

############## Addon vars ###########
# Should the following addons be disabled
variable "http_load_balancing" {
  description = "Should http_load_balancing addon be disableda? (true/false)"
}

variable "horizontal_pod_autoscaling" {
  description = "Should horizontal_pod_autoscaling addon be disableda? (true/false)"
}

variable "kubernetes_dashboard" {
  description = "Should kubernetes_dashboard addon be disableda? (true/false)"
}

variable "network_policy_config" {
  description = "Should network_policy_config addon be disableda? (true/false)"
}

######## GKE worker nodes configuration variables ########
# List of map containing all node pools infos
variable "node_pools" {
  description = "All variables regarding nodes are expressed here"
  type        = "list"
}
