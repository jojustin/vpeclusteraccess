data "ibm_resource_group" "resource_group" {
  name = "Default"
}

data "ibm_container_vpc_cluster" "cluster" {
  name              = "roks-vpc-cluster-jej"
  # resource_group_id = data.ibm_resource_group.resource_group.id
}

# resource "kubernetes_namespace" "example" {
#   metadata {
#     name = "jej-eg-namespace"
#   }
#   depends_on = [ ibm_container_vpc_cluster.cluster ]
# }

