#!/bin/bash

cat tha/wn-data-tha.tab | awk -f gensql.awk
