#!/bin/bash

read -p "Enter the state" state

state_lower=$(echo $state  | tr '[:upper:]' '[:lower:]')
echo $state_lower