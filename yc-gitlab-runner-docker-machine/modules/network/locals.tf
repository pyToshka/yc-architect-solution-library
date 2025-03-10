locals {
  network_id = var.network_create ? yandex_vpc_network.thenetwork[0].id : var.network_id
  gateway_id = var.gateway_id == null ? yandex_vpc_gateway.egress_gateway[0].id : var.gateway_id
  network_name = var.network_name == null ? "network-${local.network_id}" : var.network_name
}
