# 사용자 추가 및 비밀번호 지정
sudo useradd newuser1
sudo passwd newuser1

# 사용자 변경 (비밀번호 입력 시 변경하고자 하는 계정의 비밀번호)
# sudo의 경우 현재 사용자의 비밀번호
su - newuser1

# chmod는 권한 부여의 명령어 : r(4), w(2), x(1), u(소유자)r(그룹)o(그 외) 로 구성
chmod 644 파일명
chmod u+x 파일명
chmod u-x 파일명
chmod u=r 파일명

# chown은 소유자, 그룹 변경
chown newuser1:newuser1 파일명