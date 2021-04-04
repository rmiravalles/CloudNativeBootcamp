variable "resource_group_name" {
  type        = string
  description = "the name of the resource group"
}

variable "location" {
  type        = string
  description = "the location of the resource"
}

variable "username" {
  type        = string
  description = "the admin username of the vm"
  sensitive   = true
}

variable "password" {
  type        = string
  description = "the password of the vm"
  sensitive   = true
}