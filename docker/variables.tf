variable "resource_group_name" {
  type        = string
  description = "Azure resource group name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "container_group_name" {
  type        = string
}

variable "container_name" {
  type        = string
}

variable "container_image" {
  type        = string
  description = "Docker image (e.g. nginx:latest)"
}

variable "container_port" {
  type    = number
  default = 80
}

variable "cpu" {
  type    = number
  default = 0.5
}

variable "memory" {
  type    = number
  default = 1.0
}

variable "dns_name_label" {
  type        = string
  description = "Must be globally unique"
}

variable "environment_variables" {
  type    = map(string)
  default = {}
}

variable "tags" {
  type    = map(string)
  default = {}
}
variable "acr_name" {
  type        = string
  description = "Globally unique ACR name"
}