#!/bin/sh

mkdir -p  ~/.git/hooks/pre-commit
curl -o ~/.git/hooks/pre-commit/pre-commit-aws "https://raw.githubusercontent.com/bnathyuw/aws-key-git-hook/master/pre-commit"
chmod a+x ~/.git/hooks/pre-commit/pre-commit-aws