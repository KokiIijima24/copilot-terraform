variable "prefix" {
  description = "Prefix for all resources"
  default = "copilot-workshop"
}

variable "location" {
  description = "Region to create resources"
  default = "japaneast"
}

variable "admin_password" {
  description = "Virtual Machine admin password"
  default = "P@ssw0rd1234"
}
