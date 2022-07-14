provider "azurerm" {
  features {}
}

variable "network-policy-demo-rg" {
  type    = string
  default = "network-policy-demo"
}

data "azurerm_resource_group" "network-policy-demo" {
    name = var.network-policy-demo-rg
}