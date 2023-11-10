#!/bin/bash

weight=$1
height_cm=$2
height_m=$(echo "scale=2; $height_cm / 100" | bc)

BMI=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)

underweight=$(echo "$BMI < 18.5" | bc)
normalweight=$(echo "$BMI >= 18.5 && $BMI < 23" | bc)

if [ $underweight -eq 1 ]; then
	echo "저체중입니다."
elif [ $normalweight -eq 1 ]; then
	echo "정상 체중입니다."
else 
	echo "과체중입니다."
fi
