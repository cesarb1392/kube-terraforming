variable "namespace" {
  description = "The namespace where is installed"
  type        = string
}

variable "CF_EMAIL" {
  type = string
}

variable "CF_API_TOKEN" {
  type = string
}
variable "CF_DOMAIN" {
  type    = string
  default = "cesarb.dev"
}
variable "TRAEFIK_DASHBOARD" {
  type = string
}
