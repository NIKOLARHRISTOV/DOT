#!/usr/bin/env bash

# Cargo

# VERSION="Name/v0.0.0" ; cld ; bmd ; cargo build --release ; Maintain Workflow ; git add . ; git ecommit -m "$VERSION" ; git sync ; git tag -d "${VERSION}" ; git push --delete Source "${VERSION}" ; git tag -s -m "${VERSION}" -a "${VERSION}" ; git push --tags ; gh release delete "${VERSION}" -y ; gh release create "${VERSION}" --generate-notes ; cargo publish ;

# NPM

# VERSION="Name/v0.0.0" ; cld ; bmd ; dum install ; dum prepublishOnly ; Document 'Source/**/*.ts' ; Maintain Workflow ; git add . ; git ecommit -m "${VERSION}" ; git sync ; git tag -d "${VERSION}" ; git push --delete Source "${VERSION}" ; git tag -s -m "${VERSION}" -a "${VERSION}" ; git push --tags ; gh release delete "${VERSION}" -y ; gh release create "${VERSION}" --generate-notes

VERSION="x"
cld
bmd
dum install
dum prepublishOnly
dum Document
git add .
git ecommit -m $VERSION
git sync
git tag -d "v${VERSION}"
git push --delete Source "v${VERSION}"
git tag -s -m "v${VERSION}" -a "v${VERSION}"
git push --tags
gh release delete "v${VERSION}" -y
gh release create "v${VERSION}" --generate-notes
