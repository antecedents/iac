#!/bin/bash

: '
Creates a topic that receives notifications.
'

aws sns create-topic --cli-input-json file://src/sns/define.json
