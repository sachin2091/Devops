#!/bin/bash
for server in $(cat servers)
do
ssh ${server} hostname
ssh ${server} uptime
done
