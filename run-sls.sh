#!/bin/bash

set -e

INPUT=$1
OUTPUT=$2

printUsage() {
    echo "Usage: ./run-sls.sh <sls-input> <sls-output>"
}

if [[ -z $INPUT ]]; then
    printUsage
    exit 1
fi

if [[ -z $OUTPUT ]]; then
    OUTPUT=sls-ouput
fi

# Load the configuration
source ./configure.sh
VERSION=$HADOOP_INSTALL_VERSION

# Set PATH
export PATH=$VERSION/bin:$PATH

$VERSION/share/hadoop/tools/sls/bin/slsrun.sh --input-sls=$INPUT --output-dir=$OUTPUT --nodes="sls-traces/nodes-file"
