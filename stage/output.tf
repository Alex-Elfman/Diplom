output "internal_ip_address_nodes" {
  value = {
    for node in yandex_compute_instance.cluster-k8s:
    node.hostname => node.network_interface.0.ip_address

  }
}
output "external_ip_address_nodes" {
  value = {
    for node in yandex_compute_instance.cluster-k8s:
    node.hostname => node.network_interface.0.nat_ip_address
  }
}
