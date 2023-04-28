#!/bin/bash

function gen_1g() {
  # Generate 1G file and fill with all 0xFF
  head -c 1G < /dev/zero | LANG=C tr "\000" "\377" > t1
  t1_sha256=$(sha256sum ./t1 | awk '{print $1}')
  echo "$t1_sha256 t1" > t.sha256sum
  echo "$t1_sha256 t2" >> t.sha256sum
  echo "$t1_sha256 t3" >> t.sha256sum
  echo "$t1_sha256 t4" >> t.sha256sum
}

gen_1g
