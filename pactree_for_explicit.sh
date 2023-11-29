#!/bin/bash
# We will use list_packages_explicit.sh to get a list of explicitly installed packages
# and then use pactree to print a list of dependencies for each package with depth 1

# check if list_packages_explicit.sh exists
if [ ! -f list_packages_explicit.sh ]; then
    echo "list_packages_explicit.sh does not exist, did you modify the repo? Exiting..."
    exit 1
fi

# call pactree on each package in the list with depth 1
for package in $(sh list_packages_explicit.sh); do
    echo "- - - $package - - -"
    pactree -d 1 -a -c $package
done

echo "Done"