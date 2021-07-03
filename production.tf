provider "azurerm" {
  features {}
 
}
terraform {
  backend "azurerm" {
    resource_group_name  = "demo-rg"
    storage_account_name = "demo1rg"
    container_name       = "tfstatefiles"
    key                  = "production.terraform.tfstate"
  }
}

module "productionvm" {
  source  = "../Terraform"
  
  # insert the 1 required variable here
  resource_group_name = "rg-production"
  Location = "west us"
  virtual_network_name = "vnet1production"
  snet1_name = "snet1production"
  storage_account_name = "sa0production"
  publicip_name = "pubipproduction"
  nsg1_name = "nsgproduction"
  nic1_name = "nicproduction"
  vm1_name = "prod-winvm"
  admin_user_name = "sony"
  datadisk1 = "disk-production"
  tags = {
    Createdby = "Bejjenki"
    Env = "Production"
    Dept = "HR"
}
}