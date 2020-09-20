#!/bin/sh

for DIR in $(ls -1F | grep '/'); do
    chmod 755 $DIR
    chmod 755 $DIR/*;
done
