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