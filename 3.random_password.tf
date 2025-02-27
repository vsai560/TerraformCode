resource "random_password" "password1" {
  length           = 16
  special          = true
  min_upper        = 4
  min_lower        = 4
  min_special      = 4
  min_numeric      = 4
  override_special = "!@#$"
  #depends_on       = [azurerm_storage_account.devsecopstfstate12]
}

resource "random_password" "password2" {
  length           = 16
  special          = true
  min_upper        = 4
  min_lower        = 4
  min_special      = 4
  min_numeric      = 4
  override_special = "!@#$"
  #depends_on       = [random_password.password1]
}

resource "random_password" "password3" {
  length           = 16
  special          = true
  min_upper        = 4
  min_lower        = 4
  min_special      = 4
  min_numeric      = 4
  override_special = "!@#$"
  #depends_on       = [random_password.password2]
}
