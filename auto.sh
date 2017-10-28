#! /bin/bash
cd /c/Users/hsu/iii/repo/test-iii/bb104
while true
do
fc="$(ls | wc -l)"
if [ $fc -gt 0 ];
then
FILES=/c/Users/hsu/iii/repo/test-iii/bb104/*
for f in $FILES
do
/MINGW32/bin/git add $f
/MINGW32/bin/git commit -m "$(date +%H-%M-%S)"
/MINGW32/bin/git remote add origin git@github.com:hsulin0806/bb104.git
/MINGW32/bin/git push -u origin master
/MINGW32/bin/git remote remove origin
done
fi;
rm -rf /c/Users/hsu/iii/repo/test-iii/bb104/*
sleep 3
done