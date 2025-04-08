#!/bin/bash
grep "Accepted password" auth.log | grep -oP '(?<=from\s)[\d\.]+' | sort -u | wc -l
