variable "vcenter" {
  type = string
  description = "vCenter IP or FQDN"
  default = ""
  sensitive = true
}

variable "vcenter_port" {
  type = string
  description = "vCenter port"
  default = ""
  sensitive = true
}

variable "username" {
  type = string
  description = "vCenter username"
  default = ""
  sensitive = true
}

variable "password" {
  type = string
  description = "vCenter password"
  default = ""
  sensitive = true
}

variable "rancher2_access_key" {
  type = string
  description = "Rancher Access Key"
  default = ""
  sensitive = true
}

variable "rancher2_secret_key" {
  type = string
  description = "Rancher Secret Access Key"
  default = ""
  sensitive = true
}