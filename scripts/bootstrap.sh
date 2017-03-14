#!/bin/bash

mydir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# http://stackoverflow.com/questions/1777854/git-submodules-specify-a-branch-tag/18799234#18799234
git submodule update --init --recursive --remote --force

# get out of detached head state
#git submodule foreach -q --recursive 'branch="$(git config -f $toplevel/.gitmodules submodule.$name.branch)"; git fetch --all; git checkout $branch; git pull'


cp -f $mydir/pre-commit $mydir/../.git/hooks/pre-commit
echo "Added git pre-commit hook"
