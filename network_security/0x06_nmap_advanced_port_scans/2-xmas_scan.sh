#!/bin/bash
sudo nmap -sX -v -p 440-450 -open -reason -packet-trace $1
