#!/bin/bash
Dockergroup=$(grep -w docker /etc/group | cut -d ":" -f 3)
sed -i "s/994/$Dockergroup/g" Dockerfile
docker build -t jenkins .
