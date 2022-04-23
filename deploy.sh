#!/bin/zsh
./translate.sh
hugo
hugo-algolia -s
rm -rf content/posts/*.en.md
