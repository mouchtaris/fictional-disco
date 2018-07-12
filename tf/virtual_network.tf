resource "azurerm_virtual_network" "vnet" {
  resource_group_name = "${local.group_name}"
  location = "${local.location}"

  name = "vnet"
  address_space = [ "${var.vnet_address_space}" ]
}

resource "azurerm_subnet" "subnet" {
  count = "${var.subnets}"
  resource_group_name = "${local.group_name}"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"

  name = "subnet${count.index}"
  address_prefix = "${cidrhost(azurerm_virtual_network.vnet.address_space[0], count.index)}"
}
