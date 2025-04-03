#!/bin/bash

: << 'comment'
This script creates an Amazon S3 (Simple Storage Service) bucket
https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3api/index.html
comment

aws s3api create-bucket --cli-input-json file://compute/graphs/create-bucket.json --region "$1"
