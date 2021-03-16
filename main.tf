# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}
//Not sure if this is the feature branch?
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg1" {
  name     = "FirstTerraformResourceGroup"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg" {
  name     = "SecondTerraformResourceGroup"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg3"{
 name = "ThirdTerraformResourceGroup"
 location = "West Europe"
}

resource "azurerm_resource_group" "rg4"{
 name = "FourthTerraformResourceGroup"
 location = "West Europe"
}
