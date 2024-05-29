provider "azurerm" {
  features {}
}


# data block for the vnet
data "azurerm_virtual_network" "test_vnet" {
  name                = var.vnet
  resource_group_name = var.rg_name
}
 

# data block for the subnet
data "azurerm_subnet" "test_subnet" {
  name                 = var.subnet
  virtual_network_name = data.azurerm_virtual_network.test_vnet.name
  resource_group_name  = data.azurerm_virtual_network.test_vnet.resource_group_name
}
 

# Data block for the existing public IP
data "azurerm_public_ip" "test_ip" {
  name                = var.ip_name
  resource_group_name = var.rg_name
}

# block for create firewall policy
resource "azurerm_firewall_policy" "test_policy" {
  name                = var.policy_name
  location            = var.location
  resource_group_name = data.azurerm_virtual_network.test_vnet.resource_group_name
  sku                 = var.sku
}
 


# block for the azure firewall
resource "azurerm_firewall" "test_firewall" {
  name                = var.firewall_name
  location            = var.location
  resource_group_name = data.azurerm_virtual_network.test_vnet.resource_group_name
  sku_name            = var.firewall_sku_name
  sku_tier            = var.firewall_sku_tier
  ip_configuration {
    name                 = var.ip_configuration_name
    subnet_id            = data.azurerm_subnet.test_subnet.id
    public_ip_address_id = data.azurerm_public_ip.test_ip.id
  }
  firewall_policy_id = azurerm_firewall_policy.test_policy.id
  depends_on = [ azurerm_firewall_policy.test_policy, data.azurerm_public_ip.test_ip ]
}


