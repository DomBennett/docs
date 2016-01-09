#!/bin/bash
# clone FGE into cwd
git clone https://github.com/BES-QSIG/fge.git
mv _docs_repo fge/
# prebuild
(cd fge; ruby script/prebuild.rb)
# build with jekyll
jekyll build -s fge
