resource_group_name   = "rg-docker"
location              = "eastus"

container_group_name  = "aci-quickstart"
container_name        = "web"
container_port        = 80

dns_name_label        = "aci-quickstart-12345"

cpu                   = 0.5
memory                = 1.0

environment_variables = {
  ENV = "dev"
}

tags = {
  project = "quickstart-aci"
  owner   = "terraform"
}
