#!/bin/bash
set -e

TEST_NAME=$1

# Compile
javac src/Main.java

# Run test
java -cp src Main < tests/inputs/${TEST_NAME}.txt > output.txt

# Compare output
diff -w output.txt tests/expected/${TEST_NAME}.out
