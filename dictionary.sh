#!/bin/bash -x
dice=$((RANDOM%6))

echo `expr $dice + 1`
