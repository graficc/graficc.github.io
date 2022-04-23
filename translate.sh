#!/bin/zsh
cd content/posts
find ./ -name '*.md' | awk -F "." '{print $2}' | xargs -i -t ln -s .{}.md .{}.en.md
cd ../..


