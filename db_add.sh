#!/bin/bash

echo "[+] Adding new package to database"

repo-add x86_64/hunterrepo.db.tar.gz x86_64/*.pkg.tar.zst

echo "[+] Removing old package from database simlink"

rm x86_64/hunterrepo.db && rm x86_64/hunterrepo.files

echo "[+] Changing pack name"

mv x86_64/hunterrepo.db.tar.gz x86_64/hunterrepo.db
mv x86_64/hunterrepo.files.tar.gz x86_64/hunterrepo.files