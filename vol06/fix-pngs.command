#!/bin/bash
cd "$(dirname "$0")"
for f in card-v06-*.png; do
  xattr -c "$f" 2>/dev/null
  if [ $? -eq 0 ]; then
    echo "Cleaned: $f"
  fi
done
echo "Done. PNGs should now open in Finder."
