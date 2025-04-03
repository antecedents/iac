#!/bin/bash

: << 'comment'
Deletes an Amazon S3 (Simple Storage Service) bucket.  Herein, $1 is the bucket name parameter.
comment

aws s3 rm "s3://$1" --recursive --region $2
aws s3api delete-bucket --bucket $1 --region $2
