terraform {
  backend "azurerm" {
    resource_group_name  = "your-rg-name"
    storage_account_name = "yourstorageaccount"
    container_name       = "tfstate"
    key                  = "test.tfstate"
  }
}
