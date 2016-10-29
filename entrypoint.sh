#!/bin/bash

if [ ! -e "$HOME/.zcash/zcash.conf" ]; then
    touch $HOME/.zcash/zcash.conf
    printf "%s\n%s\n%s\n" \
        "addnode=mainnet.z.cash" \
        "rpcuser=username" \
        "rpcpassword=`head -c 32 /dev/urandom | base64`" \
        >> $HOME/.zcash/zcash.conf
fi

zcashd
