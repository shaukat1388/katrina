# Use existing Resource Group
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

# Reference your existing ACR
data "azurerm_container_registry" "this" {
  name                = "shaukatreg1"   # <-- replace with your ACR name
  resource_group_name = data.azurerm_resource_group.this.name
}

# Create Azure Container Instance
resource "azurerm_container_group" "this" {
  name                = var.container_group_name
  location            = data.azurerm_resource_group.this.location
  resource_group_name = data.azurerm_resource_group.this.name
  os_type             = "Linux"

  ip_address_type = "Public"
  dns_name_label  = var.dns_name_label

  # Pull image from your private ACR
  image_registry_credential {
    server   = data.azurerm_container_registry.this.login_server
    username = data.azurerm_container_registry.this.admin_username
    password = data.azurerm_container_registry.this.admin_password
  }

  container {
    name   = var.container_name
    image  = "${data.azurerm_container_registry.this.login_server}/nginx:latest"  # <-- Quickstart image imported into ACR
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
