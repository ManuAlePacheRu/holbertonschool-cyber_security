#!/bin/bash
grep "Accepted password" /var/log/auth.log | grep -oP '(?<=from\s)[\d\.]+' | sort -u | wc -l
