resource "azurerm_virtual_network" "vnet_main" {

    name = "vnet-terraform-infra"
    location = "North Central US"
    resource_group_name = azurerm_resource_group.rg_main.name
    address_space = ["10.0.0.0/16"]
}