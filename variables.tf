variable "k3s_config" {
  type        = string
  description = "The config file used to connect to Kubectl"
  default     = "~/.kube/config_k3s"
}