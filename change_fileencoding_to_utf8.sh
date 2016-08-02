#!/bin/bash

function changeencoding()
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

    for dirlist in $(ls ${cur_dir})
    do
        if [ -d ${dirlist} ];then
			changeencoding ${cur_dir}/${dirlist}
			cd ..
		else
			if [[ $dirlist =~ ".c" ]] || [[ $dirlist =~ ".h" ]] || [[ $dirlist =~ ".C" ]] || [[ $dirlist =~ ".H" ]];then
				echo "${dirlist}"
				enca -L zh_CN -x UTF-8 $dirlist
			fi
		fi
    done
}

if test -d $1
then
    changeencoding $1 
elif test -f $1
then
    echo "you input a file but not a directory,pls reinput and try again"
    exit 1
else
    echo "the Directory isn't exist which you input,pls input a new one!!"
    exit 1
fi
