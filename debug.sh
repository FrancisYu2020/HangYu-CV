#!/bin/bash

# Function to clean up the _site directory when the server is stopped
cleanup() {
  echo "Cleaning up _site directory..."
  rm -rf _site
  echo "_site directory removed."
}

# Trap the SIGINT (CTRL+C) signal to run cleanup when the server is stopped
trap cleanup EXIT

# Start the Jekyll server
echo "Starting Jekyll server..."
bundle exec jekyll serve --livereload --incremental

