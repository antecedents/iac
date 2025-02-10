#!/bin/bash

aws scheduler create-schedule-group --cli-input-yaml file://src/eventbridge/group.yaml
