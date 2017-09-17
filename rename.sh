#!/bin/bash

if [ -z $1 ]; then
  echo "Usage ./rename.sh KLASS_NAME SNAKE_NAME"
  exit 1
else
  NEW_KLASS=$1
fi

if [ -z $2 ]; then
  echo "Usage ./rename.sh KLASS_NAME SNAKE_NAME"
  exit 1
else
  NEW_NAME=$2
fi

for file in $(grep -rin GrapeSkeleton * | cut -d ':' -f 1); do
  if [ $file == 'rename.sh' ] || [ $file == 'README.md' ]; then
    continue
  else
    echo $file
    sed -i "s/GrapeSkeleton/$NEW_KLASS/" $file
  fi
done

for file in $(grep -rin grape_skeleton * | cut -d ':' -f 1); do
  if [ $file == 'rename.sh' ] || [ $file == 'README.md' ]; then
    continue
  else
    echo $file
    sed -i "s/grape_skeleton/$NEW_NAME/" $file
  fi
done

for file in $(grep -rin grape-skeleton * | cut -d ':' -f 1); do
  if [ $file == 'rename.sh' ] || [ $file == 'README.md' ]; then
    continue
  else
    echo $file
    sed -i "s/grape-skeleton/$NEW_NAME/" $file
  fi
done

if [ ! -f lib/$NEW_NAME.rb ]; then
  mv lib/grape_skeleton.rb lib/$NEW_NAME.rb
fi

if [ ! -d lib/$NEW_NAME ]; then
  mv lib/grape_skeleton lib/$NEW_NAME
fi
