#!/bin/bash
tail -n 1000 auth.log | awk '/Failed password/ {fail[$9]++} /Accepted password/ {success[$9]=1} END {for (u in fail) if (success[u]) print u}'
