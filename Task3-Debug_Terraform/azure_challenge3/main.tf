provider "azurerm" {
  features {}
}

provider "azurerm" {
  alias   = "secondary"
  features {}
}

module "vnet" {
  source = "./modules/vnet"
}

module "webserver" {
  source = "./modules/webserver"
}

module "load_balancer" {
  source = "./modules/load_balancer"
}

output "resource_group_name" {
  value = module.vnet.resource_group_name
}

output "vm_name" {
  value = module.webserver.vm_name
}

output "lb_name" {
  value = module.load_balancer.lb_name
}

output "resource_group_location" {
  value = data.azurerm_resource_group.example.location
}
