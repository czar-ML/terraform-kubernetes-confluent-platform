#!/bin/bash

# render terraform-docs code examples
sed -z 's/source[^\r\n]*/source  = "aidanmelen\/confluent-platform\/kubernetes\/\/modules\/confluent_operator"\n  version = ">= 0.4.0"\n/g' examples/confluent_operator/main.tf > examples/confluent_operator/.main.tf.docs
sed -z 's/source[^\r\n]*/source  = "aidanmelen\/confluent-platform\/kubernetes"\n  version = ">= 0.4.0"\n/g' examples/confluent_platform/main.tf > examples/confluent_platform/.main.tf.docs
sed -z 's/source[^\r\n]*/source  = "aidanmelen\/confluent-platform\/kubernetes"\n  version = ">= 0.4.0"\n/g' examples/confluent_platform_singlenode/main.tf > examples/confluent_platform_singlenode/.main.tf.docs
sed -z 's/source[^\r\n]*/source  = "aidanmelen\/confluent-platform\/kubernetes"\n  version = ">= 0.4.0"/g' examples/complete/main.tf > examples/complete/.main.tf.docs
sed -z 's/source[^\r\n]*/source  = "aidanmelen\/confluent-platform\/kubernetes"\n  version = ">= 0.4.0"/g' examples/kafka_topic/main.tf > examples/kafka_topic/.main.tf.docs

# render Makefile targets examples
make > .make.docs

# remove terminal color codes
sed -i 's/\x1b\[[0-9;]*m//g' .make.docs

# remove make header (first line)
sed -i '1d' .make.docs

# remove make footer (last line)
sed -i '$d' .make.docs
