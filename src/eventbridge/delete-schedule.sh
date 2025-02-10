#!/bin/bash

: << 'comment'
Whereby:
    $1: represents a group name
    $2: represents the name of a schedule
comment

aws scheduler delete-schedule --group-name $1 --name $2
