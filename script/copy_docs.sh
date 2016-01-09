#!/bin/bash
mkdir _docs_repo
DOCS=$(find . -name "[^README]*.md")
for D in $DOCS
do
  echo $D
  cp $D _docs_repo/
done
cp index.yml _docs_repo/
cp -r .git _docs_repo/
