#!/bin/bash
set -o nounset
set -o errexit
set -o xtrace

OAUTH=$(cat .github-token)

curl -H "Authorization: token ${OAUTH}" -o _data/repos.json https://api.github.com/orgs/droboports/repos
repos=$(awk '$1 == "\"url\":" && $2 ~ /repos/ { split($2,array,"\""); print array[2]; }' _data/repos.json)
for r in $repos; do
  repo=$(basename $r)
  curl -H "Authorization: token ${OAUTH}" -o _data/$repo.json $r/releases
done
