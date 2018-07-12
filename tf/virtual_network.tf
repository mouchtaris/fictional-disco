resource "azurerm_virtual_network" "vnet" {
  resource_group_name = "${local.group_name}"
  location = "${local.location}"

  name = "vnet"
  address_space = [ "${var.vnet_address_space}" ]

  subnet {
    name = "subnet1"
    address_prefix = "${cidrhost(var.vnet_address_space, 1)}"
  }
  subnet {
    name = "subnet2"
    address_prefix = "${cidrhost(var.vnet_address_space, 2)}"
  }
  subnet {
    name = "subnet3"
    address_prefix = "${cidrhost(var.vnet_address_space, 3)}"
  }
}
