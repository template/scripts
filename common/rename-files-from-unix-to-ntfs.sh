#!/bin/bash
# Replace chars, not allowed under NTFS in "-".
# Attention, this can produce lot of files with the same filename.
find /path/to/ntfs/mount/ -print0 | xargs -0 rename 's{[\\:*?"<>|]}{-}g'
