# 프로세스 목록 조회
ps -ef
ps -ef | grep "nginx" # nginx 프로그램 실행 확인

# 패키지 관련
# yum : 레드헷 계정 패키지 관리 도구
# apt 또는 apt-get : 데비안 계정 패키지 관리 도구
# 패키지 목록 최신화
sudo apt update

# nginx 설치
sudo apt install nginx

# 프로그램 실행 관리 도구 : systemctl (안정적 실행/종료)
sudo systemctl start nginx # 실행
sudo systemctl stop nginx # 종료

# 프로세스 강제 종료 (sudo 사용)
kill -9 프로세스ID

# 네트워크 관련 명령어
# 로컬 ip 정보 조회
ifconfig

# 특정 도메인의 ip 주소 정보 조회 : DNS 서버에 문의
nslookup naver.com

# 네트워크 연결 상태 조회
# 일반적으로 ping은 보안 상 막아두고 있음
ping IP주소
ping 8.8.8.8 # google DNS 서버

# ip와 포트를 이용해 특정 프로그램의 이용 가능 상태까지 조회
# 일반적으로 telnet이 막혀있거나 사용하기를 권장하지 않음음
telnet IP주소 포트번호
nc -zv IP주소(or도메인) 포트번호 # 주로 사용

# 원격 접속 (22port)
ssh 계정명@도메인주소(or IP주소)

# 원격 파일 전송 (22port)
scp 전송하고자하는파일 원격지주소