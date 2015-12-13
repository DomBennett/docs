#!/bin/bash
# copy contents to _docs_repo
shopt -s extglob
shopt -s dotglob
mkdir _docs_repo
mv !(_docs_repo) _docs_repo
# clone FGE into cwd
git clone https://github.com/dombennett/fge.git
mv _docs_repo fge/
cd fge
# prebuild
ruby script/prebuild.rb
# build with jekyll
bundle exec jekyll build
