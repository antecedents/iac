#!/bin/bash

: << 'comment'
This script assumes that (a) the underpinning Amazon ECS (Elastic Container Service) Cluster 
is active, and (b) the machine's underlying task/s is/are active. 
comment

# Path
path=file://compute/sequence/steps

# The state machine.
aws stepfunctions create-state-machine --cli-input-json $path/define.json --definition $path/machine.asl.json
