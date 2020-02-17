#!/bin/bash
# Script to flatten a directory structure and store the tree in `tree.json` file for later directory recovery.
# For example, `myDir/mySubdir/file.txt` will turn into `myDir_mySubdir_file.txt`
# Usage: source flatten.sh

# Katja Heuer & Roberto Toro, 2019-09
# Contribute changes here: https://github.com/neuroanatomy/flattener/blob/master/flatten.sh

site_code="flat"

mkdir -p "$site_code"

echo "{" > tree.json
find . -type f -prune -not -name ".*" -not -name "tree.json"|while read -r file; do
  file=$(echo "$file"|sed 's/\.\///')
  flat=$(echo "$file"|sed 's/\//_/g')
  echo "  \"$flat\": \"$file\"," >> tree.json
  echo cp "$file" "$site_code/$flat"
  cp "$file" "$site_code/$flat"
done
echo "}" >> tree.json

mv "tree.json" "$site_code/tree.json"

