
#
#resource "kubernetes_manifest" "ingress_route" {
#  manifest = {
#    apiVersion = "traefik.containo.us/v1alpha1"
#    kind       = "IngressRoute"
#    metadata = {
#      name      = "grafana"
#      namespace = var.namespace
#    }
#    spec = {
#      entryPoints = ["websecure"]
#      routes = [
#        {
#          #          match = "Host(`grafana.cesarb.dev`)"
#          match = "Host(`grafana.192.168.2.20.nip.io`)"
#          kind  = "Rule"
#          services = [
#            {
#              name = "grafana-service"
#              port = 3000
#            }
#          ]
#        }
#      ]
#    }
#  }
#
#}
#
# https://github.com/grafana/helm-charts/blob/main/charts/grafana/values.yaml#L152
#resource "kubernetes_service" "grafana_lb_service" {
#  metadata {
#    name      = "grafana-service"
#    namespace = var.namespace
#  }
#  spec {
#    port {
#      port        = 3000
#      target_port = 3000
#      name        = "http"
#    }
#    selector = { "app.kubernetes.io/name" : "grafana", app : "grafana" }
#  }
#
#}
