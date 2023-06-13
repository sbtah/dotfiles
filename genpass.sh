#!/bin/bash

set -o errexit
set -o pipefail


gen_pass() {
python3 << END
import string
import random

print("".join([random.choice(string.punctuation + string.ascii_letters) for x in range(${1})]))
END
}


if [[ $# -eq 1 ]]; then
    gen_pass "$1"
    exit 0
else
    echo 'Enter one number that indicates the length of the expected password!'
    exit 1
fi
