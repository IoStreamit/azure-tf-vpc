output "id" {
  value       = var.enabled && length(azurerm_virtual_network.iostream) > 0 ? azurerm_virtual_network.iostream[0].id : null
  description = "VNET Id"
}

output "subnets" {
    value     = var.enabled && length(azurerm_virtual_network.iostream) > 0 ? tolist(azurerm_virtual_network.iostream[0].subnet) : null
    description = "Subnet"
}