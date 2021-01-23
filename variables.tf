variable name {
  type        = string
  description = "* name of the virtual network"
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
/* all resources of this group same share the same lifeCycle
    each resource can be exist only in this group of resources
    each resource can be updated mooved to a other group of resources
    each ressource can interact with an other resources in different grResources
    Resilience 
    Distribution in multiples zones / regions  
*/
  type        = string
  description = "*name of the resource group in which to create the virtual network."
}

variable address_space {
  type        = list(string)
  description = " * The classless internet domain routing blocks that is used the virtual network"
  default     = ["10.0.0.0/16"]
}

variable dns_servers {
  type        = list(string)
  description = "List of DNS Servers configured in the VNET"
  default     = null
}

variable nsg_enabled {
  type        = bool
  description = "Adds NSG to the VNET."
  default     = false
}

variable subnets {
  type = list(object({
    name           = string,
    address_prefix = string,
    security_group = bool
  }))
  description = "(Optional) Creates the given subnets in the VNET"
  default     = []
}

variable environment {
  type        = string
  description = "Envirenment staging - dev - production"
  default     = "default"
}