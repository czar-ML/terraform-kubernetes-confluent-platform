module "confluent_platform" {
  source    = "../../"
  namespace = var.namespace

  # Uncomment to override default values
  /*
  zookeeper      = yamldecode(file("${path.module}/values/zookeeper.yaml"))
  kafka          = yamldecode(file("${path.module}/values/kafka.yaml"))
  connect        = yamldecode(file("${path.module}/values/connect.yaml"))
  ksqldb         = yamldecode(file("${path.module}/values/ksqldb.yaml"))
  controlcenter  = yamldecode(file("${path.module}/values/controlcenter.yaml"))
  schemaregistry = yamldecode(file("${path.module}/values/schemaregistry.yaml"))
  kafkarestproxy = yamldecode(file("${path.module}/values/kafkarestproxy.yaml"))
  */
}
