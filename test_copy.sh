#!/bin/bash

function parallel_copy() {
  cp ./t1 ./t2 &
  pid1=$!
  cp ./t1 ./t3 &
  pid2=$!
  cp ./t1 ./t4 &
  pid3=$!

  wait $pid1
  wait $pid2
  wait $pid3

  sync
  sleep 1

  sha256sum --check t.sha256sum
  return $?
}

echo "Start@ $(date)"

for i in {1..100}; do
  echo "Loop count: $i"
  if ! parallel_copy; then
    echo "Found corrupt!!"
    break;
  fi
done

echo "End@ $(date)"
