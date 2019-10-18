#!/bin/bash
cd "$HOME/Downloads"
for filename in *; do
  # this syntax emits the value in lowercase: ${var,,*}  (bash version 4)
  case "${filename,,*}" in
    potd-q*)  mv "$filename" "$HOME/Documents/potd/"
		cd "$HOME/Documents/potd"
		sh "$filename"
		code "."  ;;
  esac
done
