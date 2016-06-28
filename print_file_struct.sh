#!/bin/bash

function scandir()
{
    local cur_dir parent_dir workdir
    workdir=$1
    local deep=$2
    local temp=$2
    let "temp+=1"
    cd ${workdir}
    if [ ${workdir} = "/" ]
    then
        cur_dir=""
    else
        cur_dir=$(pwd)
    fi
    
    for i in `seq 0 $deep`;
    do
	if [ $i -ne 0 ];
        then
        echo -e "\t\c"
        fi
    done
    echo $cur_dir
    #for i in `seq 0 $deep`;
    #do
	#if [ $i -ne 0 ];
        #then
        #echo -e "\t\c"
        #fi
    #done
    #echo "{"
    for dirlist in $(ls ${cur_dir})
    do
        if test -d ${dirlist};then
            cd ${dirlist}
            scandir ${cur_dir}/${dirlist} $temp
            cd ..
        #else
            #for i in `seq 0 $deep`;
            #do
                #if [ $i != 0 ];
                #then
                #echo -e "\t\c"
                #fi
            #done
            #echo -e "\t\c"
            #echo ${dirlist}
        fi
    done
    #for i in `seq 0 $deep`;
    #do
	#if [ $i -ne 0 ];
        #then
        #echo -e "\t\c"
        #fi
    #done
    #echo "}"
}

if test -d $1
then
    scandir $1 0
elif test -f $1
then
    echo "you input a file but not a directory,pls reinput and try again"
    exit 1
else
    echo "the Directory isn't exist which you input,pls input a new one!!"
    exit 1
fi
