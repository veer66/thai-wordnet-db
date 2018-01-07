#!/bin/bash

./collect.sh
./combine.sh | sqlite3 wn30.db
