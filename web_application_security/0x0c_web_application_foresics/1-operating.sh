#!/bin/bash
grep "Linux version" dmesg | awk '{print $3}' | head -n 1
