# resource "type-of-the-resource" "name-of-the-resource-in-terraform" {
#     arg1 = ??
#     arg2 = ??
#     arg3 = ??
# }


resource "azurerm_resource_group" "rg1" {
  name     = var.rg_name
  location = var.location
  tags = {
    Batch       = var.batch_number
    Environment = var.env
    Backup      = var.backup
  }
}
