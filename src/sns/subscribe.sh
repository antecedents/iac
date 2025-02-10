#!/bin/bash

: '
Subscribes to a Simple Notification Service endpoint
'

aws sns subscribe --cli-input-json file://src/sns/subscribe.json
