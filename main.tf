# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

#Changing tags to lowercase
tags = {
  environment = "Terraform Getting Started"
  team = "DevOps"
}

//Not sure if this is the feature branch?
//Just adding some more code for a test
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
