variable "resource_group_name"{
    description="Name of Resource group"
    default="tf-rg1"
}
variable "Location"{
    description = "Location of resource group"
    default = "East US"
}
variable "virtual_network_name"{
    description = "Name of virtual network"
    default = "tf-vnet1"
}
variable "snet1_name"{
description = "Name of subnet1"
default = "tf-snet1"
}

variable "tags"{
    default = {
        Createdby = "Sandeep"
        Env = "Dev"
        Dept ="IT"
    }
}
variable "storage_account_name" {
  description = "Name of the storage account"
  default     = "tfstorageacct78"
}
variable "publicip_name" {
  description = "Name of the public ip"
  default     = "tf-pubip1"
}
variable "nsg1_name" {
  description = "Name of the nsg"
  default     = "nsg1"
}
variable "nic1_name" {
  description = "Name of the network interface card"
  default     = "nic1"
}
variable "vm1_name" {
  description = "Name of the virtual machine"
  default     = "win-vm1"
}
variable "admin_user_name" {
  description = "User account name"
  default     = "sony"
}
variable "datadisk1"{
description = "Name of data disk"
default = "datadisk1"
}