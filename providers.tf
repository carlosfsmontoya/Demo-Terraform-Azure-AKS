# Este archivo de configuración de Terraform define los proveedores requeridos y la versión mínima de Terraform necesaria.
# El proveedor "azurerm" se utiliza para interactuar con los recursos de Azure.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.84.0"
    }
  }
  required_version = ">= 1.1.3"
}

provider "azurerm" {
  features {}
}

