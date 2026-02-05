resource_group_name   = "rg-docker"
location              = "eastus"

container_group_name  = "aci-ddocker"
container_name        = "web"
container_image       = "nginx:latest"
container_port        = 80

dns_name_label         = "aci-demo-nginx-12345"

cpu                   = 0.5
memory                = 1.0

environment_variables = {
  ENV = "dev"
}

tags = {
  project = "docker-aci"
  owner   = "terraform"
}
acr_name = "acrdocker12345"