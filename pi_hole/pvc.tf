resource "kubernetes_persistent_volume_claim_v1" "persistent_volume_claim" {
  metadata {
    name      = join("", [var.namespace, "-volume-claim"])
    namespace = var.namespace
    labels = {
      namespace = var.namespace
    }
  }
  spec {
    storage_class_name = "nfs"
    access_modes       = ["ReadWriteMany"]
    resources {
      requests = {
        storage = "500Mi"
      }
    }
  }
  depends_on = [kubernetes_namespace.this]
}
