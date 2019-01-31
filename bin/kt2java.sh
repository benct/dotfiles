#!/usr/bin/env bash

set -o errexit -o pipefail -o nounset

if [[ $# -eq 0 ]]; then
  echo "Usage: $0 someclass.java [someotherclass.groovy ...]"
  exit 1
fi

printf "\n\nMoving files with git\n\n"

for file in $@; do
  if [[ ! -f $file ]]; then
    echo Error: Does not exist: $file
    exit 1
  fi

  EXT=${file##*.}
  BASE=$(basename $file .$EXT)
  KTFILE=$(dirname $file)/$BASE.kt

  git mv -v $file $KTFILE \
  && FILES+="-i $KTFILE -i $file " \
  && NAMES+="$BASE " 
  
done

if [[ -n "$FILES" ]]; then  
  printf "\n\nCommitting\n\n"
  git commit -m"$NAMES -> kt, part 1" $FILES
  printf "\n\nMoving files back\n\n"

  for file in $@; do
    EXT=${file##*.}
    BASE=$(basename $file .$EXT)
    BASEFILE=$(dirname $file)/$BASE

    mv -v $BASEFILE.kt $BASEFILE.java
  done

  printf "\n\nOkay, if there are no errors above, run Code » Convert Java to Kotlin in IntelliJ\n\n"
else
  printf "\n\nSomething failed\n\n"
  exit 1
fi
