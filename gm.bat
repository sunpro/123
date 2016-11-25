# initilize a git 
if [ -d ./.git ]
then 
	echo "git is exsisted!"
else
	git init
	echo git init
fi
git add .
git commit -m "$1"
#提交至远程版本库
if test $REMOTE
then 
	#echo remote add
	if [ $REMOTE=$ORIGIN ]
	then
		git remote rm origin
	fi
else
	echo remote is null
fi
git remote add origin https://github.com/sunpro/"$2".git
git push -u origin master
if [ $? -eq 0 ]
then 
	echo push succeed!
else 
	echo push failed!
fi
#git remote add origin https://github.com/sunpro/"$2"
#git push -u origin master