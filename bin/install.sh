#!/usr/bin/env bash
cd..
bundle>/dev/null || sudo gem install bundler
brew install libxml2
brew link --force libxml2
sudo gem update --system
sudo gem install pkg-config -v "~> 1.1.7"
sudo env ARCHFLAGS="-arch x86_64" gem install -n /usr/local/bin nokogiri -v '1.6.8.1' -- --use-system-libraries --with-xml=/usr/local/Cellar/libxml2/2.9.4_3/
bundle install
