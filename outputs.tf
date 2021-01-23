output "id" {
  value       = var.enabled && length(azurerm_virtual_network.vnet) > 0 ? azurerm_virtual_network.vnet[0].id : null
  description = "vnet id"
}

output "subnets" {
    value     = var.enabled && length(azurerm_virtual_network.vnet) > 0 ? tolist(azurerm_virtual_network.vnet[0].subnet) : null
    description = "subnet ids"
}