resource "azurerm_network_security_group" "nsg" {
  count               = var.enabled && var.nsg_enabled ? 1 : 0
  name                = "${var.name}-vnet-nsg"
  location            = var.location
  resource_group_name = var.resource_group

  tags = {
    environment = var.environment
  }
}