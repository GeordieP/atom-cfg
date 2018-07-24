#!/bin/bash

pids=""

for PKG in $(cat ~/.atom/packages.list); do
   apm install $PKG &
   pids="$pids $!"
done

wait $pids
