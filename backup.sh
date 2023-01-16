#! /bin/bash

source backupfuncs.sh

src="Insert source directory here"
dest="Insert destination directory here"

UpdateDel "$src" "$dest"
Update "$dest" "$src"
