#!/bin/bash

# render terraform-docs code examples

NAME=$1
HOSTNAME=$2
PROVIDER=$3
VERSION=$4

PATTERN="s/source = [^\r\n]*/source  = \"$HOSTNAME\/$NAME\/$PROVIDER\"\n  version = \">= $VERSION\"/g"

sed -z "${PATTERN}" examples/confluent_operator/main.tf > examples/confluent_operator/.main.tf.docs
sed -z "${PATTERN}" examples/confluent_platform/main.tf > examples/confluent_platform/.main.tf.docs
sed -z "${PATTERN}" examples/confluent_platform_singlenode/main.tf > examples/confluent_platform_singlenode/.main.tf.docs
sed -z "${PATTERN}" examples/complete/main.tf > examples/complete/.main.tf.docs
sed -z "${PATTERN}" examples/autogenerated_tls_only/main.tf > examples/autogenerated_tls_only/.main.tf.docs
sed -z "${PATTERN}" examples/secure_authn_encrypt_deploy/main.tf > examples/secure_authn_encrypt_deploy/.main.tf.docs
sed -z "${PATTERN}" examples/kafka_topic/main.tf > examples/kafka_topic/.main.tf.docs
sed -z "${PATTERN}" examples/schema/main.tf > examples/schema/.main.tf.docs
sed -z "${PATTERN}" examples/connector/main.tf > examples/connector/.main.tf.docs
