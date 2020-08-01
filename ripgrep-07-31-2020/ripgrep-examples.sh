#!/usr/bin/env bash

set -x

# Search the random names file for "John"
# should return 1 result
rg John random-names.txt

# Search the random names file for "John" explicitly with a regex
# should now return no results
rg "^John " random-names.txt

# Search the random names file for "Flo"
# should return 2 results
rg Flo random-names.txt

# Search the random names file for "Flow" explicty with a regex
# should return 1 result
rg "^Flo " random-names.txt

# Providing no input will recursively search the current directory
# Will include instances in random-names and this file
rg John

# Pipe in some input directly to ripgrep
ls -R | rg "names"
