resource "azurerm_network_interface" "nic_linux01" {
    name = "nic_linux01"
    location = azurerm_virtual_network.vnet_main.location
    resource_group_name = azurerm_resource_group.rg_main.name

    ip_configuration {
        name = "ipconfig-linux-01"
        subnet_id = azurerm_subnet.subnet_servidores.id
        private_ip_address_allocation = "Dynamic"
    }

}