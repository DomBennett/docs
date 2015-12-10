#!/bin/bash
# copy contents to _docs_repo
mkdir _docs_repo
cp -R ./* _docs_repo/
# clone FGE into cwd
git clone https://github.com/dombennett/fge.git ./
# build with python
python script/build.py
# build with jekyll
jekyll build
