#!/bin/bash

read -p "팀원의 이름을 입력하세요: " name

read -p "팀원의 생일 또는 전화번호를 입력하세요: " info

echo "$name: $info" >> DB.txt

echo "정보가 DB.txt 파일에 추가되었습니다."

