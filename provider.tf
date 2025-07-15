terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.60.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.37.1"
    }
  }

  required_version = ">= 1.3.0"
}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.region
}

# data "ibm_container_vpc_cluster" "cluster" {
#   name   = "roks-vpc-cluster-jej"
#   resource_group_id = data.ibm_resource_group.group.id
# }

# # Init cluster config for helm and kubernetes providers
# data "ibm_container_cluster_config" "cluster_config" {
#   cluster_name_id   = data.ibm_container_vpc_cluster.cluster.id
#   resource_group_id = data.ibm_resource_group.group.id
# }

# # Kubernetes provider used to create kube namespace(s)
# provider "kubernetes" {
#   host  = data.ibm_container_cluster_config.cluster_config.host
#   token = data.ibm_container_cluster_config.cluster_config.token
# }