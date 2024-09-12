#!/bin/bash

# Delete all existing snapshots
tmutil listlocalsnapshots / | while read -r snapshot; do
    tmutil deletelocalsnapshots "$snapshot"
done

# Create a new snapshot
tmutil localsnapshot