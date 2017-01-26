#!/bin/sh

mkdir -p  ~/.git/hooks/pre-commit
curl -o ~/.git/hooks/pre-commit/pre-commit-aws "https://raw.githubusercontent.com/bnathyuw/aws-key-git-hook/master/pre-commit"
chmod a+x ~/.git/hooks/pre-commit/pre-commit-aws

streeappdir="/Applications/SourceTree.app/Contents/Resources/git_local/share/git-core/templates/hooks"
if [ -d "$streeappdir" ]; then
    echo "Installing for SourceTree"
    curl -o $streeappdir/pre-commit-aws "https://raw.githubusercontent.com/bnathyuw/aws-key-git-hook/master/pre-commit"
    chmod a+x $streeappdir/pre-commit-aws
fi