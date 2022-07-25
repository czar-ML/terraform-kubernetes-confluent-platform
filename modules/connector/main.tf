resource "kubernetes_manifest" "connector" {
  computed_fields = var.computed_fields

  manifest = {
    "apiVersion" = "platform.confluent.io/v1beta1"
    "kind"       = "Connector"
    "metadata" = merge(
      {
        "name"      = var.name
        "namespace" = var.namespace
      },
      var.additional_metadata
    )
    "spec" = var.spec
  }

  wait {
    fields = {
      rollout = true
    }
  }

  timeouts {
    create = var.create_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}
