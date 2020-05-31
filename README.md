# datapleth

## About

This repository contains the source code of the https://datapleth.io website.

This websites runs on hugo and content, especially blog post is generated with
R / Rmarkdown and blogdown package.

It uses travis for CI/CD, basically, once the coode is pushed to this repository
a travis runner process the source markdown to generate the statics html files
which are rendered by hugo.

## Installation and configuration

Pull the content of this repo.

Follow these steps to install `blogdown` package and `hugo`.

```
install.packages('blogdown') 
blogdown::install_hugo()
```

You'll need then to install some add-ons in Rstudio


See more on : 
https://bookdown.org/yihui/blogdown/installation.html

## Theming

We use a custom for of a specific hugo theme. More details to come.
We use a sub repository for this matter.

It's configured as a submodule of this repo, so you'll have to update it when
needed (it's not automatic).

```
git submodule update --init --recursive
```

## Travis CI/CD

We pass some environment variable to Travis such as API keys, ... For security
reasons, we use encrypted variables.

See : https://docs.travis-ci.com/user/environment-variables/#encrypting-environment-variables
And : https://brettdewoody.com/secure-environment-variables-with-travis/

On debian you need first to install ruby / gem and then install travis.

```
sudo apt-get install rubygems build-essential
sudo apt install ruby-dev
sudo gem install travis
```

