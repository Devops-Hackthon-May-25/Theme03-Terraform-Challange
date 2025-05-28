resource "azurerm_network_interface" "example" {
  name                = "task3-debug-me-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "example" {
  name                  = "task3-debug-me-vm"
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.example.id]
  vm_size               = var.vm_size

  storage_os_disk {
    name              = "task3-debug-me-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "task3-debug-me-vm"
    admin_username = "azureuser"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

data "azurerm_subnet" "example" {
  name                 = "default"
  virtual_network_name = "task3-debug-me-vnet"
  resource_group_name  = var.resource_group_name
}

output "vm_name" {
  value = azurerm_virtual_machine.example.name
}
