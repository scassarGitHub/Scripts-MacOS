#! /usr/bin/env bash

# Command that toggles the Java web start version between Java 6 and
# Java 7 (or, strictly speaking what ever is the current JDK).

javaws_6=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Commands/javaws
javaws_7=/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/javaws
javaws_bin=/usr/bin/javaws

# Since this normally will be run by user by clicking on the icon in
# Finder, we'll keep it open for a a wee while
function keep_window_open_a_wee_bit() {
  local seconds=10
  echo "I will exit in $seconds seconds (or hit Ctrl+c to exit now) ..."
  sleep $seconds
  exit 0
}

function green() {
  if [[ -t "0" || -p /dev/stdin ]]; then
    echo -e "\033[01;32m${@}\033[0m"
  else
    echo "$@"
  fi
}

function red() {
  if [[ -t "0" || -p /dev/stdin ]]; then
    echo -e "\033[01;31m${@}\033[0m"
  else
    echo "$@"
  fi
}
