# 현재 위치 경로 출력
pwd

# 현재 위치에서 파일 및 폴더 조회 (뒤에 옵션 추가 가능)
ls

# 목록 조회 자세히
ls -l

# 목록 조회 숨김 파일까지 자세히 조회
ls -al

# 목록 조회 숨김 파일(all)을 자세히 오래된 순(reverse time) 정렬
# + 최신순 정렬은 alt
ls -alrt

# 현재 위치에서 디렉토리 생성
mkdir jihyeon_dir

# 특정 디렉토리로 이동(상대경로)
cd jihyeon_dir

# 특정 디렉토리로 이동(절대경로로)
cd /home/jihyeon/jihyeon_dir

# 상위 디렉토리로 이동
cd ..
# 또는
cd ../

# 루트 디렉토리로 이동 (최상위 디렉토리)
cd /

# 직전 폴더로 이동 (상하위 상관X)
cd -

# 홈 경로 (/home/본인 계정)로 이동
cd

# 상대 경로 VS. 절대 경로
# 상대 경로 - cd ../../
# 절대 경로 - cd /home

# 비어있는 파일 만들기
touch 파일명

# 파일 내용을 터미널 창에 출력하기
cat 파일명

# 파일 내용 상위 10줄 출력하기
head 파일명

# 파일 내용 하위위 10줄 출력하기
tail 파일명

# 파일 내용 상/하위 n개 조회
head -n 파일명
tail -n 파일명

# 파일 내용 실시간 조회
tail -f 파일명

# 파일 내용 편집기 : nano, vi

# 도스키 위/아래를 동해 이전 명령어 조회

# 이전에 실행했던 명령어 모두 조회
history

# 현재 내 터미널 창에 보이는 명령어 내역 정리 (터미널 창 깨끗하게)
clear

# 명령어 입력하다가 취소하고 싶다면 ctrl + C 를 통해 입력 명령어 취소

# 파일 삭제 명령어 (-f 옵션 추가시 묻지 않고 파일 삭제)
rm 파일명

# 폴더째 삭제
rm -r 파일명

# 터미널 창에 문자열을 출력
echo "hello world"

# echo를 통해 파일에 내용 입력
# > : 덮어쓰기, >> : 추가모드
echo "hello world" > first_file.txt

# 파일 복사 명령어 (cp 복사대상 복사될파일명)
# 폴도 복사는 -r 옵션 추가
cp 1_file.txt 2_file.txt
cp 1_file.txt ../2_file.txt

# grep : 파일 내에서 문자열 찾기
# -r : 모든 디렉토리 내
# -n : 라인 수 출력
# -i : 대소문자 구분X
grep -rni "hello" .

# find : 이름으로 파일 또는 디렉토리 찾기
# find 경로 옵션 조건
find . -name "*.txt" 
find . -type f

# find 와 grep 의 혼용
# 1)
find . -name "*.txt" | xargs grep -rni "hello"
# 2)
find . -name "*.txt" -exec grep -rni "hello" {} \;
# 예제) 타입은 file인 파일 중에 이름은 first로 시작하고
#      그 파일들 안에 hello 라는 키워드가 들어가 있는 문장 찾기
find . -name "first*" -type f | xargs grep -rni "hello"