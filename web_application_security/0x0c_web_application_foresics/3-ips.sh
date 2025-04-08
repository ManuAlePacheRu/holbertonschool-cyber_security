#!/bin/bash
grep "Accepted password" auth.log | sed -E 's/.*from ([^ ]+).*/\1/' | sort -u | wc -l
