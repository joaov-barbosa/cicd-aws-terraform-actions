#!/bin/bash
serverfile="/lib/systemd/system/mypythonservice.service"
echo "[Unit]" > $serverfile
echo "Description=My Python Service" > $serverfile
echo "After=multi-user.target" >> $serverfile

echo "[Service]" >> $serverfile
echo "Type=idle" >> $serverfile
echo "ExecStart=/usr/bin/python3.8 /home/ubuntu/cicd-aws-terraform-actions/Main.py" >> $serverfile
echo "Restart=on-failure" >> $serverfile

echo "[Install]" >> $serverfile
echo "WantedBy=multi-user.target" >> $serverfile
cat $serverfile

sudo chmod 644 /lib/systemd/system/mypythonservice.service

sudo systemctl daemon-reload

sudo systemctl enable mypythonservice.service