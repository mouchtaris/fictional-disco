locals {
  name = "sentia${substr(md5(timestamp()), 0, 24 - 6)}"

  group_name = "${azurerm_resource_group.sentia.name}"
  location = "${azurerm_resource_group.sentia.location}"
}

resource "azurerm_storage_account" "sentia" {
  resource_group_name = "${local.group_name}"
  location = "${local.location}"

  name = "${local.name}"
  lifecycle {
    ignore_changes = "name"
  }

  account_tier = "Standard"
  account_replication_type = "LRS"

  enable_blob_encryption = true
  enable_file_encryption = true
  enable_https_traffic_only = true
}
