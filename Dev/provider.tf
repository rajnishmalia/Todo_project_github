terraform{
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "4.41.0"
        }
    }
    backend "azurerm"{
        resource_group_name = "rg-terraform-state"
        storage_account_name = "statetodoapp"
        container_name = "tfstate"
        key = "dev.terraform.tfstate"
    }
    
}
provider "azurerm"{
    features{}
    subscription_id = "f3b2b1e3-2f5e-4c7c-8e2d-6f3e8f0e6a4d"
}