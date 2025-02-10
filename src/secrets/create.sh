#!/bin/bash

: << 'comment'
This program sets the project's keys.
comment

path=file://src/secrets
aws secretsmanager create-secret --cli-input-json "$path/define.json"  --secret-string "$path/secret-string.json"
