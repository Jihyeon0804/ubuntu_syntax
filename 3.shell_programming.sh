# 쉘 스크립트 작성 : 반드시 확장자 .sh
touch myscript.sh
nano myscript.sh
echo "hello world"

# 실행 권한 추가
chmod u+x myscript.sh

# 스크립트 실행
./myscript.sh

############# 실습 #############
# 터미널창에 "script practice start" 문구 출력
# 홈 디렉토리(cd /home/본인계정)에서 mydir 폴더 생성
# mydir로 이동해서 file1.txt, file2.txt 파일 생성
# file1.txt에는 hellofrom file1이라는 문구 입력 (echo 사용)
# file2.txt에는 ehllo from file2이라는 문구 입력
# file1.txt 파일을 백업본(copy본)을 생성. 이름은 file1_backup.txt
# file2.txt 파일은 이름은 file2_rename.txt로 변경
# 터미널 창에 "script practice end" 문구 출력

echo "script practice start"
cd
mkdir mydir
cd mydir
touch file1.txt
touch file2.txt
echo "hello from file1" > file1.txt
echo "hello from file2" > file2.txt
cp file1.txt file1_backup.txt
my file2.txt file2_rename.txt
echo "script practice end"

# myscript2 생성 후 아래 코드 작성 및 실행
# if 문
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사

if [ -f "first_file.txt" ]; then
    echo "first_file.txt file exists"
else
    echo "first_file.txt file doesn't exist"
fi

## 변수 선언 사용
file_name=first_file.txt

if [ -f "$file_name" ]; then
    echo "$file_name file exists"
else
    echo "$file_name file doesn't exist"
fi

# for문
for a in {1..100}
do
    echo "hello world$a"
done

# for문과 파일/디렉토리 목록 조회
# * : 모든 파일/디렉토리
for a in *
do
    echo "$a"
done

# for문의 변수 값을 증가
count=100
for a in {1..100}
do
    let count=count+1
done
echo "count value is $count"

# for문 및 변수값 세팅 활용
