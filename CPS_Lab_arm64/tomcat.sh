#!/bin/bash

echo "[Unit]

Description=Starts the tomcat server

After=network.target

[Service]

Type=forking

ExecStart=/opt/tomcat6/apache-tomcat-6.0.53/bin/startup.sh

Restart=on-failure

[Install]

WantedBy=multi-user.target" >> /etc/systemd/system/tomcat.service