#!/bin/bash

for ip in `awk -F: '{print $1}'`
do
  #adding user to group of servers
  useradd -s /bin/bash $1
  # set password as "dev123"
  echo -e "dev123\ndev123" |passwd $1
  #command to set password change at first login
  chage -d 0 $1
done

