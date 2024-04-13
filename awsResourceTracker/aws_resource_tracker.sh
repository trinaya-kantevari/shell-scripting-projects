#!/bin/bash

#################################
# Author : Trinaya
# Date : 13-04-2024
#
# This script reports the aws resource usage in a project
#
# Version : version-1
#################################

echo "These are the list of S3,EC2 resources and IAM users available on our aws account : "

set -x

# Lists all the S3 buckets:
aws s3 ls

# List all the EC2 instances:
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#List all IAM users:
aws iam list-users
