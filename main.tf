provider "google"{
project = "ganesh-project-469710"

credentials = file("/root/terraform/gcp-key.json")
zone = "us-central-a"
}

resource "google_container_cluster" "my_cluster"{

name= "cluster"
location = "us-east1"
initial_node_count =2
node_config{
machine_type= "e2-standard-2"
}

}
output "cluster_name" {
  value = google_container_cluster.my_cluster.name
}
