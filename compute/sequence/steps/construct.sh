#!/bin/bash

: << 'comment'
This script assumes that Amazon ECS (Elastic Container Service) Cluster the tasks depend on is active. 
comment

# Pause
tau=2s

# Path
path=file://compute/sequence

# The log group of the task definition
aws logs create-log-group --cli-input-json "$path/ecs/logs/raw/define.json"
aws logs create-log-group --cli-input-json "$path/ecs/logs/futures/define.json"
aws logs create-log-group --cli-input-json "$path/ecs/logs/numerics/define.json"

sleep $tau

# The task definition vis-à-vis this repository.
aws ecs register-task-definition --cli-input-json "$path/ecs/tasks/raw/define.json"
aws ecs register-task-definition --cli-input-json "$path/ecs/tasks/futures/define.json"
aws ecs register-task-definition --cli-input-json "$path/ecs/tasks/numerics/define.json"
