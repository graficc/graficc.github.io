#!/bin/zsh
if [ ! $1 ]
then
  echo "####### 请输入commit值 #######"
  exit;
fi
./translate.sh
hugo
hugo-algolia -s
rm -rf content/posts/*.en.md
git add .
git status
sleep 1s
git commit -m "$1"
sleep 0.5s
git push origin main << limbostray << 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
