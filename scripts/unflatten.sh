#!/bin/bash
# Script to rebuild the directory structure from a previously flattened file structure based on the `tree.json` file.
# For example, `myDir_mySubdir_file.txt` will turn into `myDir/mySubdir/file.txt`.
# Usage: source unflatten.sh

# Katja Heuer & Roberto Toro, 2019-09
# Contribute changes here: https://github.com/neuroanatomy/flattener/blob/master/unflatten.sh

cat tree.json|while read -r row; do
  file=$(echo "$row"|cut -d ':' -f 1|sed 's/"//g')
  dest=$(echo "$row"|cut -d ':' -f 2|sed 's/[ ",]//g')
  dir=$(dirname "$dest")

  if [ "$dir" != "." ]; then
    mkdir -p "$dir"
  fi

  if [ "$file" != "$dest" ]; then
    mv "$file" "$dest"
    echo mv "$file" "$dest"
  fi
done

