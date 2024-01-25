#!/bin/bash
if [ $# -eq 0 ]
  then
    python3 /mnt/snapcheck.py
fi
sudo systemctl stop sol.service
chmod +x /home/sol/validator.sh
sudo systemctl start sol.service
