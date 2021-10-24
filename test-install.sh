#!/bin/sh

set -e # -e: exit on error

# POSIX way to get script's dir: https://stackoverflow.com/a/29834779/12156188
script_dir="$(cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P)"

echo "Running install: $0"
echo "working directory is $(pwd)"
echo "script_dir $script_dir"

echo "looking for test-install.sh..."
if [ -f test-install.sh ]; then 
  echo "test-install.sh exists in current directory."
fi
if [ -f "$script_dir/test-install.sh" ]; then
  echo "test-install.sh exists in source_dir"
fi
