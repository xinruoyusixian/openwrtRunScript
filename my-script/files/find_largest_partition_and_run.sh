#!/bin/sh

# 找到 /mnt 下最大的分区
LARGEST_PARTITION=$(ls -1 /mnt | xargs -I {} du -s /mnt/{} | sort -nr | head -n 1 | awk '{print $2}')

if [ -z "$LARGEST_PARTITION" ]; then
    echo "No partitions found in /mnt."
    exit 1
fi

echo "Largest partition found: $LARGEST_PARTITION"

# 检查是否存在 start.sh 脚本
START_SCRIPT="$LARGEST_PARTITION/start.sh"
if [ -f "$START_SCRIPT" ] && [ -x "$START_SCRIPT" ]; then
    echo "Running $START_SCRIPT..."
    $START_SCRIPT
else
    echo "start.sh not found or not executable in $LARGEST_PARTITION."
fi
