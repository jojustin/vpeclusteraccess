# output "vsi_public_ip" {
#   description = "Network interfaces"
#   value = ibm_is_instance.vsi.primary_network_interface[0]
# }

# output "vsi_floating_ip" {
#   description = "Public IP address assigned to the VSI"
#   value       = ibm_is_floating_ip.fip.address
# }
output "namespaceinfo" {
 value = kubernetes_namespace.example.id
}

# output "namespaceinfo1" {
#  value = kubernetes_namespace.example.metadata
# }
