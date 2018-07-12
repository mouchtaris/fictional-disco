variable "location" {
  description = "Azure location where resources live"
  type = "string"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type = "string"
}

variable "subnets" {
  description = "Number of subnets in the virtual network -- NOTICE: the number of subnets should be possible given the network address space"
  type = "string"
}
