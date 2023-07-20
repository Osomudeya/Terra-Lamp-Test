terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.65.0"
    }
  }
}

provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "tf-state-rg93"
    storage_account_name = "tfstate93"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
