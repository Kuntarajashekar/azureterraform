resource "azurerm_resource_group" "rg" {
  name     = "Landingzone"
  location = "eastus"

  tags = {
    environment = "production"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "Landing-vnet"
  address_space       = ["10.0.0.0/24"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

}

resource "azurerm_subnet" "subnet" {
  name                 = "web-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.0.0/27"]
}

# Create public IPs
resource "azurerm_public_ip" "public_ip" {
  name                = "Landing-pip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"

}
