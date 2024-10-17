#!/usr/bin/env bash

tmp=$(mktemp -d)
cachetmp=$(mktemp -d)
trap 'rm -fr $tmp $cachetmp' EXIT

git clone . "$tmp" 2>/dev/null

export PIXIPIN_CACHE_DIR=$cachetmp
pushd "$tmp" || exit 1

echo
echo "[TEST .pixipinrc v0.32.2]"
echo "v0.32.2" >.pixipinrc
if ! ./pixipin --version | grep "pixi 0.32.2"; then
  echo "TEST FAILED"
  exit 1
else
  echo "TEST PASSED"
fi

echo
echo "[TEST .pixipinrc v0.33.0]"
echo "v0.33.0" >.pixipinrc
if ! ./pixipin --version | grep "pixi 0.33.0"; then
  echo "TEST FAILED"
  exit 1
else
  echo "TEST PASSED"
fi

echo
echo "[TEST .pixipinrc garbage]"
echo "garbage" >.pixipinrc
if ./pixipin --version; then
  echo "TEST FAILED"
  exit 1
else
  echo "TEST PASSED"
fi

echo
echo "[TEST fetch latest when no .pixipinrc]"
rm .pixipinrc
version=$(curl --silent "https://api.github.com/repos/prefix-dev/pixi/releases/latest" | grep '"tag_name":' | sed -E 's/.*"v([^"]+)".*/\1/')
if ! ./pixipin --version | grep "pixi $version"; then
  echo "TEST FAILED"
  exit 1
else
  echo "TEST PASSED"
fi
