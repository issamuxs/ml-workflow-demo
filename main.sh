#!/bin/bash

source ./config/base_config.sh
source ./scripts/ec2_init.sh
source ./scripts/s3_init.sh
source ./scripts/mlflow_ec2_deploy.sh

#Main script execution
echo "Welcome to EC2 ML platform Server Creation Script"

#Select key pair
conditional_create_key_pair

#Create EC2 instance
create_ec2_instance

#Create S3 bucket for artifacts
create_s3_bucket

#Server deploy
mlflow_ec2_deploy

