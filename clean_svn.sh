#!/bin/bash


for gitfile in $(git status | grep '.svn')
do
	echo "$gitfile"
	git rm --$gitfile
	#if [ -d ${dirlist} ] && [ "." !=dd "${dirlist}" ] && [ ".." != "${dirlist}" ];then
	#	if [ ".svn" = "${dirlist}" ];then
	#		echo "${dirlist}"
	#		rm -rf ./.svn
	#	else
         #   		#cd ${dirlist}
	#		#echo "${cur_dir}/${dirlist}"
	#		delsvn ${cur_dir}/${dirlist}
	#		cd ..
	#	fi
	#fi
done

