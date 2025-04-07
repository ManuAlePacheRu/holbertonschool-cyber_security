#!/bin/bash
grep "pam_unix" auth.log | awk -F '[(:]' '{print $3}' | sort | uniq -c | sort -nr
