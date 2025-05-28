resource "azurerm_public_ip" "example" {
  name                = "task3-debug-me-pip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
}

resource "azurerm_lb" "example" {
  name                = "task3-debug-me-lb"
  location            = var.location
  resource_group_name = var.resource_group_name

  frontend_ip_configuration {
    name                 = "task3-debug-me-feip"
    public_ip_address_id = azurerm_public_ip.example.id
  }
}

output "lb_name" {
  value = azurerm_lb.example.name
}
