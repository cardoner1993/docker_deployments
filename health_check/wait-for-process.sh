#!/bin/sh
# wait-for-postgres.sh

set -e

file_path="$1"
shift
cmd="$@"

while [ ! -f $file_path ]
  do
    >&2 echo "Process Folder file_path is empty - sleeping"
    sleep 30
  done

>&2 echo "File $file_path has data - executing command"
python "$cmd"

