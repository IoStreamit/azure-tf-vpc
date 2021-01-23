resource "azurerm_virtual_network" "vnet" {
  name                = "${var.name}-vnet"
  count               = var.enabled ? 1 : 0
  location            = var.location
  resource_group_name = var.resource_group
  address_space       = var.address_space
  dns_servers         = var.dns_servers
  
  dynamic "subnet" {
    for_each = var.subnets
    content {
      name           = subnet.value.name
      address_prefix = subnet.value.address_prefix
      security_group = var.nsg_enabled == true && subnet.value.security_group == true ? azurerm_network_security_group.vnet.0.id : null
    }
  }

  tags = {
    environment = var.environment
  }
}