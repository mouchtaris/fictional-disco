resource "azurerm_storage_account" "sentia" {
  resource_group_name = "${local.group_name}"
  location = "${local.location}"

  name = "sentia${substr(md5(timestamp()), 0, 24 - 6)}"

  lifecycle {
    ignore_changes = "name"
  }

  account_tier = "Standard"
  account_replication_type = "LRS"

  enable_blob_encryption = true
  enable_file_encryption = true
  enable_https_traffic_only = true
}
