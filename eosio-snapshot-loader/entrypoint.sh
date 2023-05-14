#!/bin/bash

cd /eos.data

wget https://snapshots.eosnation.io/eos-v6/latest -O /eos.data/snapshot.bin.zst
zstd -d /eos.data/snapshot.bin.zst
rm /eos.data/snapshot.bin.zst