# Use existing resource group
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

# Create Azure Container Instance
resource "azurerm_container_group" "this" {
  name                = var.container_group_name
  location            = data.azurerm_resource_group.this.location
  resource_group_name = data.azurerm_resource_group.this.name
  os_type             = "Linux"

  ip_address_type = "Public"
  dns_name_label  = var.dns_name_label

  container {
    name   = var.container_name
    image  = "nginx:latest"   # <-- Quickstart image from Docker Hub
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
