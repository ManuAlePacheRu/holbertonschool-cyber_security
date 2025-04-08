#!/bin/bash
tail -n 1000 auth.log | awk '/Failed password/ {fail[$NF]++} /Accepted password/ {success[$NF]=1} END {for (u in fail) if (success[u]) print u}'
