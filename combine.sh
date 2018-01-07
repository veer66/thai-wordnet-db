#!/bin/bash

cat tha/wn-data-tha.tab | gawk -f gensql.awk
