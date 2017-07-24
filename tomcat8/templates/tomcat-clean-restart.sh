#!/bin/bash
echo "Stopping tomcat ..."
systemctl stop tomcat 
echo "Deleting tomcat logs ..."
rm /opt/tomcat/logs/*
echo "Starting tomcat ..."
systemctl start tomcat 
echo "Tailing catalina.out log file ..."
tail -f /opt/tomcat/logs/catalina.out
