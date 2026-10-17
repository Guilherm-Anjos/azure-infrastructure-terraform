resource "azurerm_virtual_network" "vnet_main" {

  name                = "vnet-terraform-infra"
  location            = "North Central US"
  resource_group_name = azurerm_resource_group.rg_main.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet_servidores" {
  name                 = "snet_servidores"
  resource_group_name  = azurerm_resource_group.rg_main.name
  virtual_network_name = azurerm_virtual_network.vnet_main.name
  address_prefixes     = ["10.0.1.0/24"]
}