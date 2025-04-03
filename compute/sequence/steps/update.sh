#!/bin/bash

: << 'comment'
This script updates a state machine. 
comment

# Path
path=file://compute/sequence/steps

# The state machine.
aws stepfunctions update-state-machine --cli-input-json $path/update.json --definition $path/machine.asl.json
