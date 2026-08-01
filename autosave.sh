#!/bin/bash

cd /workspaces/skullsmp || exit 1

while true
do
    sleep 600

    git add .

    if ! git diff --cached --quiet; then
        git commit -m "Auto-save Minecraft world $(date '+%Y-%m-%d %H:%M:%S')"
        git push origin main
    fi
done

