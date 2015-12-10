#!/bin/bash
# Based on: http://eshepelyuk.github.io/2014/10/28/automate-github-pages-travisci.html

# only proceed script when started not by pull request (PR)
if [ $TRAVIS_PULL_REQUEST == "true" ]; then
  echo "This is PR, exiting"
  exit 0
fi

# enable error reporting to the console
set -e

# clone gh-pages branch using encrypted GH_TOKEN for authentification
git clone https://${GH_TOKEN}@github.com/dombennett/fge.github.io.git -b gh-pages gh-pages

# copy generated HTML site to `gh-pages`
cp -R _site/* gh-pages/

# commit and push generated content to `gh-pages' branch
# since repository was cloned in write mode with token auth - we can push there
cd gh-pages/
git config user.email "dominic.john.bennett@gmail.com"
git config user.name "Dom Bennett"
git add -A .
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push --quiet origin master > /dev/null 2>&1
