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

CONID='limbostray'
CONKEY='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'

cd /home/wwwroot/default/project
expect -c "spawn git push origin main; expect "*Username*" { send "${CONID}
"; exp_continue } "*Password*" { send "${CONKEY}
" }; interact"
