#!/bin/bash

: << 'comment'
The reverse of construct 
comment

# Pause
tau=8s

# Path
path=file://compute/sequence

# Delete Machine
aws stepfunctions delete-state-machine --cli-input-json $path/steps/delete.json
sleep $tau

# De-register Task Definition/s
aws ecs deregister-task-definition --cli-input-json $path/ecs/tasks/numerics/deregister.json
aws ecs deregister-task-definition --cli-input-json $path/ecs/tasks/futures/deregister.json
aws ecs deregister-task-definition --cli-input-json $path/ecs/tasks/raw/deregister.json
sleep $tau

# Delete Task Definition/s
aws ecs delete-task-definitions --cli-input-json $path/ecs/tasks/numerics/delete-data.json
aws ecs delete-task-definitions --cli-input-json $path/ecs/tasks/futures/delete-data.json
aws ecs delete-task-definitions --cli-input-json $path/ecs/tasks/raw/delete-data.json
sleep $tau

# Delete Log Group
aws logs delete-log-group --cli-input-json $path/ecs/logs/numerics/delete.json
aws logs delete-log-group --cli-input-json $path/ecs/logs/futures/delete.json
aws logs delete-log-group --cli-input-json $path/ecs/logs/raw/delete.json