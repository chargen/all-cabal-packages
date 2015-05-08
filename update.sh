#!/usr/bin/env bash

set -xue

wget https://s3.amazonaws.com/stackage-travis/hackage-mirror/hackage-mirror.bz2
bunzip2 hackage-mirror.bz2
chmod +x hackage-mirror
echo $AWS_ACCESS_KEY
exit 1
./hackage-mirror --to s3://hackage.fpcomplete.com
