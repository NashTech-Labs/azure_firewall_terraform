variable "rg_name" {
  description = "resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet" {
  description = "Azure vnet name"
  type        = string
}


variable "firewall_name" {
  description = "firewall name"
  type        = string
}

variable "firewall_sku_name" {
  description = "SKU for the firewall"
  type        = string
}

variable "firewall_sku_tier" {
  description = "SKU tier for the firewall"
  type        = string
}

variable "ip_configuration_name" {
  description = "IP configuration"
  type        = string
}

variable "subnet" {
  description = "Azure subnet"
  type        = string
}

variable "sku" {
  description = "SKU "
  type        = string
}

variable "policy_name" {
  description = "firewall policy name"
  type        = string
}

variable "ip_name" {
  description = "public IP"
  type        = string
}

