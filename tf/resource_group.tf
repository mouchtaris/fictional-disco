provider "azurerm" {
  
}

resource "azurerm_resource_group" "sentia" {
  name = "Sentia"
  location = "westeurope"
}
