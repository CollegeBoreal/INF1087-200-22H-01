resource "azurerm_resource_group" "CB-AZ-INF1087" {
  name     = "ressources-CB-AZ-INF1087"
  location = "Canada Central"
}

resource "azurerm_virtual_network" "CB-AZ-INF1087" {
  name                = "reseau-CB-AZ-INF1087"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.CB-AZ-INF1087.location
  resource_group_name = azurerm_resource_group.CB-AZ-INF1087.name
}

resource "azurerm_subnet" "CB-AZ-INF1087" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.CB-AZ-INF1087.name
  virtual_network_name = azurerm_virtual_network.CB-AZ-INF1087.name
  address_prefixes     = ["10.0.2.0/24"]
}

# CIR (NIC en Anglais) Carte d'Interface Reseau
resource "azurerm_network_interface" "CB-AZ-INF1087" {
  name                = "cir-CB-AZ-INF1087"
  location            = azurerm_resource_group.CB-AZ-INF1087.location
  resource_group_name = azurerm_resource_group.CB-AZ-INF1087.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.CB-AZ-INF1087.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "CB-AZ-INF1087" {
  name                = "machine-CB-AZ-INF1087"
  resource_group_name = azurerm_resource_group.CB-AZ-INF1087.name
  location            = azurerm_resource_group.CB-AZ-INF1087.location
  size                = "Standard_B1s"
  admin_username      = "ubuntu"
  network_interface_ids = [
    azurerm_network_interface.CB-AZ-INF1087.id,
  ]

  admin_ssh_key {
    username   = "ubuntu"
    public_key = file("~/.ssh/b300098957@ramena.pk.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-confidential-vm-focal"
    sku       = "20_04-lts-gen2"
    version   = "20.04.202110290"
  }
}
