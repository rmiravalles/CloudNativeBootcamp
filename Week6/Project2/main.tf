provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "azurerg" {
  name     = var.resource_group_name
  location = var.location
 }

resource "azurerm_app_service_plan" "cloudskills-sp" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.azurerg.location
  resource_group_name = azurerm_resource_group.azurerg.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "cloudskills-ap" {
  name                = var.app_service_name
  location            = azurerm_resource_group.azurerg.location
  resource_group_name = azurerm_resource_group.azurerg.name
  app_service_plan_id = azurerm_app_service_plan.cloudskills-sp.id

  site_config {
    linux_fx_version = "NODE|12-lts"
  }
}