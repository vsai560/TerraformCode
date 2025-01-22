resource "azurerm_storage_account" "devsecopstfstate12" {
  name                     = "devsecopstfstate12"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}