terraform {
  backend "azurerm" {
    resource_group_name  = "tf-rg"
    storage_account_name = "testdevops11"
    container_name       = "tfstate"
    key                  = "azure/monitoring.tfstate"
  }
}
