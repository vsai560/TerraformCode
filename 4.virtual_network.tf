resource "azurerm_virtual_network" "vnet1" {
  name                = "${azurerm_resource_group.rg1.name}-vNET"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = var.vnet_address_space
}

resource "azurerm_subnet" "subnet-1" {
  name                 = "${azurerm_resource_group.rg1.name}-Subnet-1"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.subnet1_cidr]
}

resource "azurerm_subnet" "subnet-2" {
  name                 = "${azurerm_resource_group.rg1.name}-Subnet-2"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.subnet2_cidr]
}

resource "azurerm_subnet" "subnet-3" {
  name                 = "${azurerm_resource_group.rg1.name}-Subnet-3"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.subnet3_cidr]
}
