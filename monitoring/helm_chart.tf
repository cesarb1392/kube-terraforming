resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = var.namespace
    annotations = {
      name = var.namespace
    }
    labels = {
      namespace = var.namespace
    }
  }
}


resource "helm_release" "prometheus" {
  chart      = "prometheus"
  name       = var.namespace
  namespace  = var.namespace
  repository = "https://prometheus-community.github.io/helm-charts"

  set {
    name  = "podSecurityPolicy\\.enabled"
    value = true
  }

  set {
    name  = "server\\.persistentVolume\\.enabled"
    value = false
  }

  set {
    name = "server\\.resources"
    value = yamlencode({
      limits = {
        cpu    = "200m"
        memory = "50Mi"
      }
      requests = {
        cpu    = "100m"
        memory = "30Mi"
      }
    })
  }
}

data "template_file" "grafana_values" {
  template = file("monitoring/grafana.yaml")

  vars = {
    GRAFANA_SERVICE_ACCOUNT = "grafana"
    GRAFANA_ADMIN_USER      = var.K3S_GRAFANA_USER
    GRAFANA_ADMIN_PASSWORD  = var.K3S_GRAFANA_PASSWORD
    PROMETHEUS_SVC          = "prometheus"
    NAMESPACE               = var.namespace
  }
}

resource "helm_release" "grafana" {
  chart      = "grafana"
  name       = "grafana"
  repository = "https://grafana.github.io/helm-charts"
  namespace  = var.namespace

  values = [
    data.template_file.grafana_values.rendered
  ]
}

#https://github.com/jaegertracing/helm-charts/blob/main/charts/jaeger/values.yaml
#resource "helm_release" "jaeger" {
#  chart      = "jaeger-operator"
#  name       = "jaeger-operator"
#  repository = "https://jaegertracing.github.io/helm-charts"
#  namespace  = var.namespace
#}

#resource "kubernetes_manifest" "jaeger_instance" {
#  manifest = {
#    apiVersion = "jaegertracing.io/v1"
#    kind       = "Jaeger"
#    metadata   = {
#      name      = "jaeger"
#      namespace = var.namespace
#    }
#  }
#  depends_on = [
#    helm_release.jaeger
#  ]
#}
