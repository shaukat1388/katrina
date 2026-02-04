output "container_fqdn" {
  value = azurerm_container_group.this.fqdn
}

output "container_ip" {
  value = azurerm_container_group.this.ip_address
}