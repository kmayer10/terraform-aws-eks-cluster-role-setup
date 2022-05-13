variable "role" {}

locals {
  role = split("-", var.role)
  role_name = local.role[0]
  service_name = local.role[1]
}
