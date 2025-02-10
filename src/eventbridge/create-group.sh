#!/bin/bash

: << 'comment'
Generate an empty --cli-input-yaml via
    aws scheduler create-schedule-group --generate-cli-skeleton yaml-input > ...group.yaml
Replace the ellipsis as appropriate.
comment

aws scheduler create-schedule-group --cli-input-yaml file://src/eventbridge/group.yaml
