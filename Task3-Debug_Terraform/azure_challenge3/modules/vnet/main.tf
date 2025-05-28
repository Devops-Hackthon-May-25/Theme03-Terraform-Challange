resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "example" {
  name                = "task3-debug-me-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "vnet_name" {
  value = azurerm_virtual_network.example.name
}
