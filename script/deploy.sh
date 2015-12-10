git clone https://github.com/dombennett/fge.git ./
git clone https://github.com/dombennett/docs.git _docs_repo/
python script/build.py
jekyll build
htmlproof ./_site --only-4xx --disable-external
