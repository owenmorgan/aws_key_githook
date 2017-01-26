#!/bin/sh

mkdir -p  ~/.git-templates/hooks
curl -o ~/.git-templates/hooks/pre-commit "https://raw.githubusercontent.com/owenmorgan/aws_key_githook/master/pre-commit-aws"
chmod +x ~/.git-templates/hooks/pre-commit

git config --global core.hooksPath '~/.git-templates/hooks'
git config --global init.templatedir '~/.git-templates'

