#!/usr/bin/env bash

bold=$(tput bold)
normal=$(tput sgr0)
errors=false

# Clean out the old tests
if [ -d "test-results" ]
then
  rm -f test-results/*
  rmdir test-results
fi

# Copy test files into directory
mkdir -p test-results
cp test/* test-results

# Run the tests
if ! ./tesseract-uzn ./test-results/zone.uzn ./test-results/*.png
then
  echo "Error processing test files" 1>&2
  exit 1
fi

# Did the first one OCR correctly?
if ! cmp -s "test-results/1.png.txt" "test-results/expected-output-1.txt"
then
  errors=true
  echo "Test 1 does not match" 1>&2
fi

# Did the second one OCR correctly?
if ! cmp -s "test-results/2 with spaces.png.txt" "test-results/expected-output-2.txt"
then
  errors=true
  echo "Test 2 does not match" 1>&2
fi

# If anything failed, exit 1
if [ "$errors" = true ]
then
  exit 1
else
  echo "All tests passed"
fi