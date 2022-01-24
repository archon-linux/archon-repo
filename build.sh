#!/usr/bin/env bash
# archon-core
# https://github.com/archon-linux/archon-core
# @nekwebdev
# LICENSE: GPLv3

cd "$(dirname "$0")" || exit 1
echo "################################################################"
echo "################### Deleting previous repo database"
echo "################################################################"
rm x86_64/archon-repo*

echo "repo-add"
repo-add -n -R x86_64/archon-repo.db.tar.gz x86_64/*.pkg.tar.zst
sleep 1

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
