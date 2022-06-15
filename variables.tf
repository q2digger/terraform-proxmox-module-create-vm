variable "ssh_key" {
}

variable "proxmox_host" {
}

variable "template_name" {
  default = "ubuntu-2004-cloud-init"
}

variable "pm_api_token_id" {}

variable "pm_api_token_secret" {}

variable "pm_api_url" {}

variable "count_vms" {
  type = number
}
