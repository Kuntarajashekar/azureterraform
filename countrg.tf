#create resource group
resource "azurerm_resource_group" "rg" {
  count    = 4
  name     = "resourceGroup-${count.index}"
  location = "eastus"

}
