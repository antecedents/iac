#!/bin/bash

: << 'comment'
Whereby:
    $1: represents a group name
comment

aws scheduler delete-schedule-group --name $1
