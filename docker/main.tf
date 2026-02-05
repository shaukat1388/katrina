data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_container_group" "this" {
  name                = var.container_group_name
  location            = data.azurerm_resource_group.this.location
  resource_group_name = data.azurerm_resource_group.this.name
  os_type             = "Linux"

  ip_address_type = "Public"
  dns_name_label  = var.dns_name_label

  container {
    name   = var.container_name
    image  = var.container_image
    cpu    = var.cpu
    memory = var.memory

    ports {
      port     = var.container_port
      protocol = "TCP"
    }

    environment_variables = var.environment_variables
  }

  tags = var.tags
}
resource "azurerm_container_registry" "this" {
  name                = var.acr_name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location
  sku                 = "Basic"
  admin_enabled       = true
}
resource "azurerm_container_group" "this" {

  image_registry_credential {
    server   = azurerm_container_registry.this.login_server
    username = azurerm_container_registry.this.admin_username
    password = azurerm_container_registry.this.admin_password
  }

  container {
    image = "${azurerm_container_registry.this.login_server}/nginx:latest"
  }
}