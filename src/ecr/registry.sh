#!/bin/bash

: << 'comment'
This script creates an Amazon ECR (Elastic Container Registry) repository within a private 
registry.  Note:
    * $1: The parameter $1 expects the region argument, i.e., it expects the name of an Amazon region.
comment

aws ecr create-repository --region $1 --cli-input-json file://src/ecr/registry.json
