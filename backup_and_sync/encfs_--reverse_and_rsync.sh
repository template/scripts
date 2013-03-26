#!/bin/bash

ENCFSDIR=/home/encfs
ENCFSSRC=$HOME
ENCFSCRYPT=$ENCFSDIR/myhome
USERNAME=foobar

#sudo mkdir -p $ENCFSDIR
#sudo chmod 1000 $ENCFSDIR
#mkdir -p $ENCFSCRYPT

# Makes temp crypt folder mapped from source dir.
encfs --reverse $ENCFSSRC $ENCFSCRYPT

# Rsync with an example.
# Remind: The backup dir is relative to folder on server.
rsync -rltpogDPv -e ssh --exclude=*~ --stats --delete -b --backup-dir=../alt/ $ENCFSCRYPT $USERNAME@rsync.hidrive.strato.com:/users/$USERNAME/sync/

# Or with specific ssh-key.
#rsync -rltpogDPv -e "ssh -i $HOME/.ssh/rsync-key.ssh" --delete -b --backup-dir=../alt/ --exclude=*~ --stats $ENCFSCRYPT $USERNAME@rsync.hidrive.strato.com:/users/$USERNAME/sync/