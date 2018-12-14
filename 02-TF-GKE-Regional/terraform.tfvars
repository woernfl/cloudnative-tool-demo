path_gcp_auth_json_file = "../../access/demo-project-terraform.json"

gcp_project_id = "practical-well-216217"

cluster_name = "k8s-demo-cluster"

initial_node_count = "1"

logging_service = "logging.googleapis.com/kubernetes"

monitoring_service = "monitoring.googleapis.com/kubernetes"

region = "us-east1"

kube_version = "1.11"

image_type = "COS"

machine_type = "n1-standard-1"

preemptible_node = false

workload_metadata_config = "SECURE"

daily_maintenance_window_start_time = "00:00"

http_load_balancing = true

horizontal_pod_autoscaling = false

kubernetes_dashboard = true

network_policy_config = true
