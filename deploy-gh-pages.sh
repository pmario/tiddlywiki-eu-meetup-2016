#!/bin/bash
set -e # exit with nonzero exit code if anything fails

output_dir="wiki/output/"

# clear and re-create the out directory
rm -rf $output_dir || exit 0;
mkdir $output_dir;

mkdir tmp
cd ..
git clone https://github.com/Jermolene/jermolene.github.io.git

# run our compile script, discussed above
npm run stage

# go to the out directory and create a *new* Git repo
cd $output_dir
git init

# inside this git repo we'll pretend to be a new user
git config user.name "Travis CI"
git config user.email "travis-ci@example.com"

# The first and only commit to this new Git repo contains all the
# files present with the commit message "Deploy to GitHub Pages".
git add .
git commit -m "Deploy to GitHub Pages"


# Push to the working  branch

# git push origin master

