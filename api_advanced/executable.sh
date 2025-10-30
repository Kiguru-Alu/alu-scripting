#!/usr/bin/env bash
# Give executable permission to all .py files in the current directory (non-recursive).

set -euo pipefail

# Expand *.py to an empty list instead of the literal pattern when none exist
shopt -s nullglob

files=( *.py )

if (( ${#files[@]} == 0 )); then
  echo "No .py files found in the current directory."
  exit 0
fi

# Show which files will be changed, then set +x
printf 'Giving execute permission to: %s\n' "${files[@]}"
chmod +x -- "${files[@]}"

echo "Done: ${#files[@]} file(s) updated."
