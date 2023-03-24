variable "location" {
  type    = string
  default = "centralus"
}

variable "cloud_name" {
  description = "The Azure cloud environment to use. Available values at https://www.terraform.io/docs/providers/azurerm/#environment"
  default     = "public"
  type        = string
}

variable "tags" {
  description = "Key/value tags to assign to all resources."
  default     = {}
  type        = map(string)
}

variable "identifier" {
  description = "Will be used for Resource Group and other resources names"
  type        = string
  default     = "juice"
}

variable "domain" {
  description = "Parent domain name for the DNS zone"
  type        = string
  default     = "ms.dashaun.cc"
}

variable "cloudflare_account_id" {
  description = "Cloudflare account ID"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare zone ID"
  type        = string
}
