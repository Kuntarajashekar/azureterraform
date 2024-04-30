provider "azurerm" {
  # subscription_id = "eaf80817-a1b9-4dec-9510-6c4ff8eab91d"
  #client_id       = "caea0a12-930e-4f5c-974d-42f9d45ea970"
  #client_secret   = "r7e8Q~1KxDkv02L0yEJ_1mxq7G6Qjs2xowYyWbwO"
  #tenant_id       = "da1800a8-f3b6-4ac9-b925-49181c603ae0"
  features {}
}


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
}
