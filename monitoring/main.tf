resource "kubernetes_namespace" "this" {
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
