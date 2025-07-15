output "rg" {
  value = data.ibm_resource_group.resource_group.id
}

output "clusterid" {
  value = data.ibm_container_vpc_cluster.cluster.id
}

output "clusterconfig" {
  value = data.ibm_container_cluster_config.cluster_config.cluster_name_id
}

output "namespaceinfo" {
 value = kubernetes_namespace.example.id
}

output "namespaceinfo1" {
 value = kubernetes_namespace.example.metadata
}
