resource "azurerm_network_security_group" "nsg_servidores" {
    name = "nsg-servidores"
    location = azurerm_virtual_network.vnet_main.location
    resource_group_name = azurerm_resource_group.rg_main.name
}