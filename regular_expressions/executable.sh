#!/bin/bash
# Make all Ruby (.rb) files in the current directory executable

for file in *.rb; do
  # Check if there are any .rb files
  [ -e "$file" ] || continue
  chmod +x "$file"
  echo "Made $file executable"
done

