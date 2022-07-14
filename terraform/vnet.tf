resource "azurerm_virtual_network" "network-policy-demo" {
  name                = "network-policy-demo"
  resource_group_name = data.azurerm_resource_group.network-policy-demo.name 
  location            = data.azurerm_resource_group.network-policy-demo.location
  address_space       = ["10.254.0.0/16"]
}

resource "azurerm_subnet" "app" {
  name                 = "app"
  resource_group_name  = data.azurerm_resource_group.network-policy-demo.name 
  virtual_network_name = azurerm_virtual_network.network-policy-demo.name
  address_prefixes     = ["10.254.0.0/22"]
}