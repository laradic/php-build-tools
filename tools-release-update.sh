#!/usr/bin/env bash


MYDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

bash ${MYDIR}/scripts/bootstrap.sh
bash ${MYDIR}/lib/bin/git-tag.sh patch
