#!/bin/sh

mkdir -p $1
cd $1
for i in `seq 0 4`
do
	touch file$i.txt
done

tar -cf $1.tar *.txt

ls

mkdir -p $1

mv $1.tar $1/

cd $1

tar -xvf $1.tar
exit 0

read -p "폴더 이름을 입력하세요: " folder_name

if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
fi

cd "$folder_name" || exit 1

for i in {1..5}; do
    touch "file$i.txt"
done

# 파일들을 압축
tar -czvf files.tar.gz *.txt

# 새로운 폴더를 생성하여 압축 해제
mkdir extracted_files
tar -xzvf files.tar.gz -C extracted_files

# 작업 완료 메시지 출력
echo "작업이 완료되었습니다."

