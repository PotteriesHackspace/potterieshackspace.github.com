#!/usr/bin/env bash
# build - builds jekyll
# @see https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/#step-4-build-your-local-jekyll-site
cd..
bundle>/dev/null || sudo gem install bundler
bundle install
bundle exec jekyll serve