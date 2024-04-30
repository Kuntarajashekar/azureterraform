terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-eastus"
    storage_account_name = "cs2100320026f974b97"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
