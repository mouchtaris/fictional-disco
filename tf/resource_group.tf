resource "azurerm_resource_group" "sentia" {
  name = "Sentia"
  location = "${var.location}"

  tags = "${var.group_tags}"
}
