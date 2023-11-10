#!/bin/bash

echo "리눅스가 재밌나요? (yes / no)"

read user_input

case $user_input in
	[Yy]* | *yes*)
		echo "yes"
		;;
	*no*)
		echo "no"
		;;
	*)
		echo "yes or no로 입력해주세요."
		;;
esac