variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "vm_size" {
  description = "The size of the VM"
  type        = string
  validation {
    condition     = contains(["Standard_B1s", "Standard_B2s"], var.vm_size)
    error_message = "VM size must be either Standard_B1s or Standard_B2s"
  }
}
