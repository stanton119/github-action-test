#!/bin/bash

echo $1
echo $2

files=$(git diff --name-only --diff-filter=ACMRT $1 $2 | grep .ipynb)
# files=$(git diff --name-only --diff-filter=ACMRT ${{ github.event.pull_request.base.sha }} ${{ github.sha }} | grep .ipynb)
for i in $files;
do
   jupyter nbconvert --to markdown $i
done


# files=$(git diff --name-only --diff-filter=ACMRT 6dc1e49e27d6cb9c02d635a0198fa7b17adb741f | grep .ipynb)
# github.event.pull_request.base.sha=$('6dc1e49e27d6cb9c02d635a0198fa7b17adb741f')
# files=$(git diff --name-only --diff-filter=ACMRT ${{ github.event.pull_request.base.sha }} ${{ github.sha }} | grep .ipynb)
# for i in $files;
# do
#    jupyter nbconvert --to markdown $i
# done


# git diff --name-only --diff-filter=ACMRT ${{ github.event.pull_request.base.sha }} ${{ github.sha }} | grep .css$ | xargs.
