#!/bin/sh

mkdir -p  ~/.git-templates/hooks
curl -o ~/.git-templates/hooks/pre-commit-aws "https://raw.githubusercontent.com/bnathyuw/aws-key-git-hook/master/pre-commit"
chmod a+x ~/.git-templates/hooks/pre-commit-aws

git config --global core.hooksPath '~/.git-templates/hooks'
git config --global init.templatedir '~/.git-templates'

streeappdir="/Applications/SourceTree.app/Contents/Resources/git_local/share/git-core/templates/hooks"
if [ -d "$streeappdir" ]; then
    echo "Installing for SourceTree"
    curl -o $streeappdir/pre-commit-aws "https://raw.githubusercontent.com/bnathyuw/aws-key-git-hook/master/pre-commit"
    chmod a+x $streeappdir/pre-commit-aws
fi