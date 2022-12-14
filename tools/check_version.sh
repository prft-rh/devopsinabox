
#!/bin/bash

version="$1"
major=0
minor=0
patch=0

# break down the version number into its components
regex="([0-9]+).([0-9]+).([0-9]+)"
if [[ $version =~ $regex ]]; then
  major="${BASH_REMATCH[1]}"
  minor="${BASH_REMATCH[2]}"
  patch="${BASH_REMATCH[3]}"

  # return checked version number
  echo "${major}.${minor}.${patch}"
else
  echo "error"
fi
