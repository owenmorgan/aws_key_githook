#!/bin/sh
# git config --global init.templatedir '~/.git-templates'
# mkdir -p ~/.git-templates/hooks
# curl -o ~/.git-templates/hooks/pre-commit "https://raw.githubusercontent.com/bnathyuw/aws-key-git-hook/master/pre-commit"
# chmod a+x ~/.git-templates/hooks/pre-commit

mkdir -p  ~/.git/hooks/
curl -o ~/.git/hooks/pre-commit-aws "https://raw.githubusercontent.com/bnathyuw/aws-key-git-hook/master/pre-commit"
chmod a+x ~/.git/hooks/pre-commit-aws