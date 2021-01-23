variable name {
  type        = string
  description = "*name of the virtual network"
}

variable enabled {
  type        = bool
  description = "bool to create vnet"
  default     = true
}


variable location {
  type        = string
  description = "*location where the resource group should be created"
}

variable resource_group {
  type        = string
  description = "*name of the resource group in which to create the virtual network."
}

variable address_space {
  type        = list(string)
  description = "* the classless internet domain routing blocks that is used the virtual network"
  default     = ["10.0.0.0/16"]
}

variable dns_servers {
  type        = list(string)
  description = "list of DNS Servers configured in the VNET"
  default     = null
}

variable nsg_enabled {
  type        = bool
  description = "adds NSG to the VNET."
  default     = false
}

variable subnets {
  type = list(object({
    name           = string,
    address_prefix = string,
    security_group = bool
  }))
  description = "(Optional) creates the given subnets in the VNET"
  default     = []
}

variable environment {
  type        = string
  description = "envirenment staging - dev - production"
  default     = "default"
}