resource "azurerm_network_security_group" "nsg_servidores" {
    name = "nsg-servidores"
    location = azurerm_virtual_network.vnet_main.location
    resource_group_name = azurerm_resource_group.rg_main.name
}

resource "azurerm_subnet_network_security_group_association" "assoc_nsg_servidores" {
    subnet_id = azurerm_subnet.subnet_servidores.id
    network_security_group_id = azurerm_network_security_group.nsg_servidores.id
}