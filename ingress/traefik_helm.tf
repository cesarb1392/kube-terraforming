
resource "helm_release" "traefik" {
  namespace  = var.namespace
  name       = "traefik"
  repository = "https://helm.traefik.io/traefik"
  chart      = "traefik"

  set {
    name  = "deployment.replicas"
    value = 1
  }

  set {
    name  = "chart.metadata.name"
    value = "traefik"
  }

  values = [
    data.template_file.ingress_values.rendered
  ]

}

data "template_file" "ingress_values" {
  template = file("${path.module}/config/traefik_helm_values.yaml")
  vars = {
    EMAIL  = var.K3S_CF_EMAIL
    DOMAIN = var.K3S_CF_DOMAIN
  }
}


