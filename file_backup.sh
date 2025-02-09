#!/bin/bash
src_dir="/root/.viminfo"
backup_dir="/root/script_test/"
timestamp=$(date +%Y%m%d_%H%M%S)
backup_file="$backup_dir/backup_full_$timestamp.tar.gz"
tar -czf $backup_file $src_dir
echo "Full backup completed: $backup_file"
