#!/bin/bash

function delsvn()
{
    local cur_dir parent_dir workdir
    workdir=$1
    cd ${workdir}
    if [ ${workdir} = "/" ]
    then
        cur_dir=""
    else
        cur_dir=$(pwd)
    fi
    
    #echo $cur_dir

    for dirlist in $(ls -al ${cur_dir})
    do
        if [ -d ${dirlist} ] && [ "." != "${dirlist}" ] && [ ".." != "${dirlist}" ];then
		if [ ".svn" = "${dirlist}" ];then
			echo "${dirlist}"
			rm -rf ./.svn
		else
            		#cd ${dirlist}
			#echo "${cur_dir}/${dirlist}"
			delsvn ${cur_dir}/${dirlist}
			cd ..
		fi
        fi
    done
}

if test -d $1
then
    delsvn $1 
elif test -f $1
then
    echo "you input a file but not a directory,pls reinput and try again"
    exit 1
else
    echo "the Directory isn't exist which you input,pls input a new one!!"
    exit 1
fi
