#!/bin/bash
echo 
echo "Syntax"
echo "./git.upload.sh --GITHUBDIR --PLOTDIR"
echo 

GITHUBDIR=$1
PLOTDIR=$2

rm -rf ${GITHUBDIR}  
mkdir ${GITHUBDIR}
cp ${PLOTDIR}/plot10001.jpg ${GITHUBDIR}
cp ${PLOTDIR}/plot20001.jpg ${GITHUBDIR}
cp ${PLOTDIR}/plot30001.jpg ${GITHUBDIR}
cp ${PLOTDIR}/plots/*.png   ${GITHUBDIR}

cd ${GITHUBDIR}

git init
git add .
git commit -m "upload"
git remote add origin https://github.com/ptaeb2014/ptaeb2014.github.io
git pull https://github.com/ptaeb2014/ptaeb2014.github.io
git push origin master
