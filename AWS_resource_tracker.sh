#!/bin/bash

##############
# Author: Yash Verma
# Date : 31/May/24
# Email:vermayesh123456@gmail.com
#
# Version v1
# This script will report the AWS resource usage
################################################################

# We will track:
#
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# listing S3 buckets

set -x
echo "List of s3 Buckets"
aws s3 ls >> resourceTracker

#list ec2 instances

echo "List of Ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#listing lambda functions

echo "List of Lambda Functions"
aws lambda list-functions