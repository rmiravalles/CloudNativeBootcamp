provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "azurerg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "azvnet" {
  name                = "cloudskills_vnet"
  address_space       = ["10.0.0.0/22"]
  location            = azurerm_resource_group.azurerg.location
  resource_group_name = azurerm_resource_group.azurerg.name
}

resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.azurerg.name
  virtual_network_name = azurerm_virtual_network.azvnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "main" {
  count               = 2
  name                = "UbuntuNIC-${count.index}"
  resource_group_name = azurerm_resource_group.azurerg.name
  location            = azurerm_resource_group.azurerg.location

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "LinuxVM" {
  count                           = 2
  name                            = "UbunntuVM-${count.index}"
  resource_group_name             = azurerm_resource_group.azurerg.name
  location                        = azurerm_resource_group.azurerg.location
  size                            = "Standard_D2S_v3"
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.main[count.index],
  ]

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
}
