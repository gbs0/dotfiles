#!/usr/bin/env bash

# Print usage instructions and exit
usage() {
  echo "Usage: $0 -f <filename> -m <email>"
  echo ""
  echo "Options:"
  echo "  -f <filename>  SSH key filename (saved inside ~/.ssh/)"
  echo "  -m <email>     Email address to label the key comment"
  echo "  -h             Show this help message"
  exit 1
}

filename=""
mail=""

# Parse command-line options
while getopts "f:m:h" flag; do
  case "${flag}" in
    f) filename="${OPTARG}" ;;
    m) mail="${OPTARG}" ;;
    h) usage ;;
    *) usage ;;
  esac
done

# Raise an error if either mandatory flag is missing
if [[ -z "$filename" || -z "$mail" ]]; then
  echo "Error: Both -f (filename) and -m (email) flags are mandatory." >&2
  echo "--------------------------------------------------------" >&2
  usage
fi

# Core SSH key generation logic
mkdir -p ~/.ssh && ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/"$filename" -C "$mail"

# Store key passphrase in macOS Keychain
ssh-add --apple-use-keychain ~/.ssh/"$filename" && cat ~/.ssh/"$filename.pub" | pbcopy && echo "Public key copied to clipboard."
