# 🚨CODE:RED🚨

## Crawling and machine learning
개발 기간 : 24.04.12 ~ 24.04.18

## 프로젝트 소개
당일의 네이버 뉴스를 스크래핑후 가공하고자 하는 뉴스를 필터링.
사건사고에 해당하는 텍스트 데이터들을 학습한 모델로 뉴스의 클래스를 구분하여 사건사고인지 아닌지 판별.

**주요 기능**
- Selenium으로 동적인 작업처리
   - 뉴스 탭에서의 더보기 버튼 클릭 <br><br>
- BeautifulSoup을 사용하여 정적 데이터 수집
   - 뉴스 게시물 수집<br><br>
- 문자열 유사도 알고리즘 사용(Jaro-Winkler similarity)
   - 줄거리와 제목을 서로 비교하여 문자열 유사도 평가진행 후 중복 제거<br><br>
- 기계학습 진행(나이브 베이즈 알고리즘)
   - 사건/사고(accident), 기타(etc) 두개의 클래스를 생성
   - 문자열이 주어졌을때 조건부 확률을 계산후 가장 높은 확률을 가진 클래스 선택
   - 사건사고인지, 그외의 사건인지 분류하여 저장
 <br><br>

<div align=center><h1>📚 stack</h1></div>
<div align=center> 
  <img src="https://img.shields.io/badge/python-3776AB?style=for-the-badge&logo=python&logoColor=white">
  <img src="https://img.shields.io/badge/flask-%23000.svg?style=for-the-badge&logo=flask&logoColor=white">
  <img src="https://img.shields.io/badge/-selenium-%43B02A?style=for-the-badge&logo=selenium&logoColor=white">
  <img src="https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white">
  <img src="https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white">
</div>

## 시작하기
### Requirements
- python 3.12.3
- pip 24.0
- Flask 3.0.3
- Werkzeug 3.0.2

### Installation
```
$ git clone https://github.com/startcoriny/CODE-RED_Crawling.git
$ cd CODE-RED_Crawling
```

### BackEnd
```
$ pip install -r requirements.txt
$ python app.py
```


##Blog
<a href="https://startcoriny.tistory.com/entry/%EC%B5%9C%EC%A2%85-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%ED%81%AC%EB%A1%A4%EB%A7%81%ED%95%98%EC%97%AC-%EB%AC%B8%EB%A7%A5%ED%8C%8C%EC%95%85%ED%95%98%EA%B8%B0python-selenium">startcoriny</a>
