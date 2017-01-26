#!/bin/sh

mkdir -p  ~/.git-templates/hooks
curl -o ~/.git-templates/hooks/pre-commit-aws "https://raw.githubusercontent.com/owenmorgan/aws_key_githook/master/pre-commit-aws"
chmod a+x ~/.git-templates/hooks/pre-commit-aws

git config --global core.hooksPath '~/.git-templates/hooks'
git config --global init.templatedir '~/.git-templates'

