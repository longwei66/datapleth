#!/bin/bash
# https://kjaer.io/travis/
set -x
if [ $TRAVIS_BRANCH == 'master' ] ; then
    # Initialize a new git repo in _site, and push it to our server.
    cd public
    git init
        
    git remote add deploy "deploy@188.166.216.253:/var/www/datapleth.io"
    git config user.name "Travis CI"
    git config user.email "longwei66+travisCI@gmail.com"
    
    git add .
    git commit -m "Deploy"
    git push --force deploy master
else
    echo "Not deploying to master, since this branch isn't master."
fi
if [ $TRAVIS_BRANCH == 'dev' ] ; then
    # Initialize a new git repo in _site, and push it to our server.
    cd public
    git init
        
    git remote add deploy "deploy@188.166.216.253:/var/www/datapleth.io.dev"
    git config user.name "Travis CI"
    git config user.email "longwei66+travisCI@gmail.com"
    
    git add .
    git commit -m "Deploy"
    git push --force deploy master
else
    echo "Not deploying, since this branch isn't dev"
fi
if [ $TRAVIS_BRANCH == 'beta' ] ; then
    # Initialize a new git repo in _site, and push it to our server.
    pwd
    cd public
    git init
        
    git remote add deploy "deploy@188.166.216.253:/var/www/datapleth.io.beta"
    git config user.name "Travis CI"
    git config user.email "longwei66+travisCI@gmail.com"
    
    git add .
    git commit -m "Deploy"
    git push --force deploy master
else
    echo "Not deploying, since this branch isn't master or dev or beta"
fi