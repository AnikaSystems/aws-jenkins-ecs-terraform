#!/usr/bin/env bash

# export TERRAFORM_WORKSPACE=jason-local-farm-runner
export TF_STATE_BUCKET="terraform-20240125040535083400000001"
export TF_STATE_OBJECT_KEY="serverless-jenkins.tfstate"
export TF_LOCK_DB="tf-serverless-jenkins-lock"
export AWS_REGION=us-east-1

PRIVATE_SUBNETS='["subnet-092e713ced914452f","subnet-08f8b7bdb75f2dc28"]'
PUBLIC_SUBNETS='["subnet-0d4f240cb1d78b11a","subnet-04504475dc04adbfb"]'

export TF_VAR_route53_zone_id="Z04342671RJX2L41HCQVK"
export TF_VAR_route53_domain_name="tf.internal.anycompany.com"
export TF_VAR_vpc_id="vpc-014f5b872f6ea969f"
export TF_VAR_efs_subnet_ids=${PRIVATE_SUBNETS}
export TF_VAR_jenkins_controller_subnet_ids=${PRIVATE_SUBNETS}
export TF_VAR_alb_subnet_ids=${PUBLIC_SUBNETS}