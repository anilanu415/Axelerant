#!/bin/bash

for ip in `awk -F: '{print $1}'`
do
  #delete user and user home directory from list of servers 
  userdel -r $1
done