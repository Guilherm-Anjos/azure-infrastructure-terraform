resource "azurerm_network_interface" "nic_linux01" {
  name                = "nic_linux01"
  location            = azurerm_virtual_network.vnet_main.location
  resource_group_name = azurerm_resource_group.rg_main.name

  ip_configuration {
    name                          = "ipconfig-linux-01"
    subnet_id                     = azurerm_subnet.subnet_servidores.id
    private_ip_address_allocation = "Dynamic"
  }

}

resource "azurerm_linux_virtual_machine" "vm_linux01" {
  name                = "vm-linux01"
  resource_group_name = azurerm_resource_group.rg_main.name
  location            = azurerm_virtual_network.vnet_main.location
  size                = "Standard_B2ats_v2"
  admin_username      = "azureadmin"

  disable_password_authentication = true

  network_interface_ids = [
    azurerm_network_interface.nic_linux01.id
  ]

  admin_ssh_key {
    username   = "azureadmin"
    public_key = file(pathexpand("~/.ssh/azure-terraform-lab.pub"))
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}