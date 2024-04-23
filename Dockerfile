# 파이썬 베이스 이미지 사용
FROM python:3.10.14-slim

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 파이썬 패키지 설치
# requirements.txt 파일에 Flask와 기타 의존성이 명시되어 있다고 가정
COPY requirements.txt .
RUN pip install -r requirements.txt

# 현재 디렉토리의 모든 파일을 컨테이너의 작업 디렉토리로 복사
COPY . /app

# Flask 서버 실행
# "--host=0.0.0.0" 옵션은 Docker 컨테이너 외부에서 Flask 앱에 접근할 수 있도록 함
CMD ["flask", "run", "--host=0.0.0.0"]
