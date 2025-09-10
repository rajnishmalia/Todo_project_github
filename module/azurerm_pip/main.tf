resource "azurerm_public_ip" "pip" {
  name                = var.pip_name
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = var.sku
  allocation_method   = "Static"

  tags = var.tags
}