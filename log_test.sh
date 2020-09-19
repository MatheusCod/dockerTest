#!/bin/bash

cd $TRAVIS_BUILD_DIR
if [ test -f $TRAVIS_BUILD_DIR/log_error ]
then
  if [ "$(cat log_error)" != "" ]
  then
    echo "Failed tests:"
    cat log_error
    exit 1
  fi
else
  echo "All tests succeeded"
fi
