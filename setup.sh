#!/bin/sh
git config --global init.templatedir '~/.git-templates'
mkdir -p ~/.git-templates/hooks
curl -o ~/.git-templates/hooks/pre-commit "https://raw.githubusercontent.com/bnathyuw/aws-key-git-hook/master/pre-commit"
chmod a+x ~/.git-templates/hooks/pre-commit