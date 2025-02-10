#!/bin/bash

: << 'comment'
Generate an empty --cli-input-yaml via
    aws scheduler create-schedule --generate-cli-skeleton yaml-input > ...schedule.yaml
Replace the ellipsis as appropriate.
comment

aws scheduler create-schedule --cli-input-yaml file://src/eventbridge/schedule.yaml
