#!/bin/bash
filename=$(pwd | sed 's/\// /g' | awk '{print $NF}').$(date +%m.%d.%y).tar
echo $filename
tar --exclude-vcs -zvcf $filename ./
mv $filename ~/vns3-backups
cd ~/vns3-backups
git add .; git commit -m "update $filename"; git push