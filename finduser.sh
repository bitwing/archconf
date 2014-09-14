#!/bin/sh 3901
# finduser--寻找是否有第一个参数所制定的用户登录
if [ $# -ne 1 ]
then
	echo Usage: finduser username >&2
	exit 1
fi
who | grep $1
