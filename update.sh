#!/usr/bin/env bash

set -ue

wget https://s3.amazonaws.com/stackage-travis/hackage-mirror/hackage-mirror.bz2
bunzip2 hackage-mirror.bz2
chmod +x hackage-mirror
./hackage-mirror --to s3://hackage.fpcomplete.com --access $AWS_ACCESS_KEY --secret $AWS_SECRET_KEY
