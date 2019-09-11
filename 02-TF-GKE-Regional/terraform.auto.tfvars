gcp_project_id = "practical-well-216217"

cluster_name = "k8s-demo-cluster"

logging_service = "logging.googleapis.com/kubernetes"

monitoring_service = "monitoring.googleapis.com/kubernetes"

region = "us-east1"

kube_version = "1.12"

daily_maintenance_window_start_time = "00:00"

http_load_balancing = true

horizontal_pod_autoscaling = false

kubernetes_dashboard = true

network_policy_config = true

node_pools = [
    {
      # Node pool name
      name = "default-pool"

      # Number of nodes per zone
      node_count = "1"

      # Node auto repair option
      auto_repair = "true"

      # Node auto upgrade option
      auto_upgrade = "true"

      # Worker nodes image type
      image_type = "COS"

      # Worker nodes type
      machine_type = "n1-standard-1"

      # Worker nodes preemptible choice
      preemptible = "false"

      # Choose if the Metadate should be expose to the node pool
      node_metadata = "SECURE"
    },
  ]
