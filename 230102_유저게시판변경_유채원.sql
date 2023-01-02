-- DROP SCHEMA IF EXISTS MUSEUM;
-- CREATE SCHEMA MUSEUM;
-- USE MUSEUM;

DROP TABLE IF EXISTS USER;
CREATE TABLE USER (
    U_NO    INT    AUTO_INCREMENT PRIMARY KEY,
    ID    VARCHAR(20) NOT NULL UNIQUE,
    PASSWORD    VARCHAR(100) NOT NULL,
    NAME    VARCHAR(20),
    NICKNAME    VARCHAR(20) NOT NULL UNIQUE,
    STATUS    VARCHAR(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')),
    EMAIL    VARCHAR(50),
    ROLE    VARCHAR(10)    DEFAULT 'ROLE_USER',
    KAKAOTOKEN    VARCHAR(1000),
    NAVERTOKEN    VARCHAR(1000),
    GOOGLETOKEN    VARCHAR(1000),
    ENROLL_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
    MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- (수정) user 테이블 데이터 추가
INSERT INTO USER VALUES(1, 'admin', '$2a$10$5RsdY8eM6jBfhwlAek6uru53Xw1c0C9TE.lGoO8MAIQNKC.T78712', '관리자', '관리자', DEFAULT, 'admin@email.com', 'ROLE_ADMIN', 'none', 'none', 'none', DEFAULT, DEFAULT);
INSERT INTO USER VALUES(2, 'test1', '$2a$10$5RsdY8eM6jBfhwlAek6uru53Xw1c0C9TE.lGoO8MAIQNKC.T78712', '테스트유저1', '조선왕조실룩샐룩', DEFAULT, 'test1@email.com', DEFAULT, 'none', 'none', 'none', DEFAULT, DEFAULT);
INSERT INTO USER VALUES(3, 'test2', '$2a$10$5RsdY8eM6jBfhwlAek6uru53Xw1c0C9TE.lGoO8MAIQNKC.T78712', '테스트유저2', '백범힝구', DEFAULT, 'test2@email.com', DEFAULT, 'none', 'none', 'none', DEFAULT, DEFAULT);
INSERT INTO USER VALUES(4, 'test3', '$2a$10$5RsdY8eM6jBfhwlAek6uru53Xw1c0C9TE.lGoO8MAIQNKC.T78712', '테스트유저3', '매관masic', DEFAULT, 'test3@email.com', DEFAULT, 'none', 'none', 'none', DEFAULT, DEFAULT);
INSERT INTO USER VALUES(5, 'test4', '$2a$10$5RsdY8eM6jBfhwlAek6uru53Xw1c0C9TE.lGoO8MAIQNKC.T78712', '테스트유저4', '전이만갑오개혁', DEFAULT, 'test4@email.com', DEFAULT, 'none', 'none', 'none', DEFAULT, DEFAULT);
INSERT INTO USER VALUES(6, 'test5', '$2a$10$5RsdY8eM6jBfhwlAek6uru53Xw1c0C9TE.lGoO8MAIQNKC.T78712', '테스트유저5', '태정태세비욘세', DEFAULT, 'test5@email.com', DEFAULT, 'none', 'none', 'none', DEFAULT, DEFAULT);
delete from user where id = 'test3';
SELECT * FROM USER;


DROP TABLE IF EXISTS HERITAGE;
-- delete from heritage;
-- truncate heritage;
CREATE TABLE HERITAGE (
	H_NO	INT AUTO_INCREMENT PRIMARY KEY,
	ccmaName	VARCHAR(500), -- 문화재종목
	ccbaMnm1	VARCHAR(500), -- 문화재명
	gcodeName	VARCHAR(500), -- 문화재분류
	bcodeName	VARCHAR(500), -- 문화재분류2
	mcodeName	VARCHAR(500), -- 문화재분류3
	scodeName	VARCHAR(500), -- 문화재분류4
	ccbaQuan	VARCHAR(500), -- 수량
	ccbaAsdt	VARCHAR(500), -- 지정(등록일)
	ccbaCtcdNm	VARCHAR(500), -- 시도명
	ccsiName	VARCHAR(500), -- 시군구명
	ccbaLcad	VARCHAR(500), -- 소재지 상세
	ccceName	VARCHAR(500), -- 시대
	ccbaPoss	VARCHAR(500), -- 소유자
	longitude	VARCHAR(500), -- 경도 ( 0일 경우 : 위치 값 없음 )
	latitude	VARCHAR(500), -- 위도 ( 0일 경우 : 위치 값 없음 )
	ccbaAdmin	VARCHAR(500), -- 관리자
	imageUrl	VARCHAR(500), -- 메인노출이미지URL
	content	VARCHAR(5000) -- 내용
);

SELECT * FROM HERITAGE;
select * from HERITAGE where H_NO = 1;

DROP TABLE IF EXISTS HERITAGE_IMAGE;
CREATE TABLE HERITAGE_IMAGE (
	HI_NO	INT	AUTO_INCREMENT PRIMARY KEY,
	H_NO	INT,
	ImageUrl1	VARCHAR(500),
	CcimDesc1	VARCHAR(500),
    ImageUrl2	VARCHAR(500),
	CcimDesc2	VARCHAR(500),
    ImageUrl3	VARCHAR(500),
	CcimDesc3	VARCHAR(500),
    ImageUrl4	VARCHAR(500),
	CcimDesc4	VARCHAR(500)
);

SELECT * FROM HERITAGE_IMAGE;

DROP TABLE IF EXISTS HERITAGE_RE;
CREATE TABLE HERITAGE_RE (
	HR_NO	INT	AUTO_INCREMENT PRIMARY KEY,
	H_NO	INT,
	U_NO	INT,
	HR_CONTENT	VARCHAR(2000),
	HR_CREATE_DATE	DATETIME,
	HR_MODIFY_DATE	DATETIME,
	HR_STATUS	VARCHAR(3)
);

SELECT * FROM HERITAGE_RE;

DROP TABLE IF EXISTS HERITAGE_LIKE;
CREATE TABLE HERITAGE_LIKE (
    U_NO    INT,
    H_NO    INT,
    PRIMARY KEY (U_NO, H_NO),
    foreign key(U_NO) references USER(U_NO),
    foreign key(H_NO) references HERITAGE(H_NO)
);
SELECT * FROM HERITAGE_LIKE;



DROP TABLE COLLECTION_INPUT_H;
CREATE TABLE COLLECTION_INPUT_H (
	U_NO	INT,
	H_NO	INT,
    PRIMARY KEY (U_NO, H_NO),
    foreign key(U_NO) references USER(U_NO),
    foreign key(H_NO) references HERITAGE(H_NO)
);

DROP TABLE IF EXISTS COLLECTION;
CREATE TABLE COLLECTION (
	CT_NO	INT	AUTO_INCREMENT PRIMARY KEY,
	U_NO	INT,
	CT_Title	VARCHAR(500),
	CT_CONTENT	VARCHAR(2000),
	CT_Status	VARCHAR(3)
);
SELECT * FROM COLLECTION;

Delete from COLLECTION_INPUT_H WHERE U_NO=1 AND H_NO=4;
SELECT * FROM COLLECTION_INPUT_H;

insert into COLLECTION_INPUT_H(U_NO,H_NO) values(1,1);
insert into COLLECTION_INPUT_H(U_NO,H_NO) values(2,2);
insert into COLLECTION_INPUT_H(U_NO,H_NO) values(2,3);
insert into COLLECTION_INPUT_H(U_NO,H_NO) values(1,4);
insert into COLLECTION_INPUT_H(U_NO,H_NO) values(1,5);
insert into COLLECTION_INPUT_H(U_NO,H_NO) values(1,6);

-- 마이페이지에 나열함
select * from COLLECTION_INPUT_H C, HERITAGE H WHERE C.H_NO = H.H_NO AND C.U_NO = 1; 

select  * from (
select U_NO, min(H_NO) as H_NO from COLLECTION_INPUT_H group by U_NO) C 
inner join HERITAGE H ON C.H_NO = H.H_NO;

DROP TABLE IF EXISTS COLLECTION_RE;
CREATE TABLE COLLECTION_RE (
	CTR_NO	INT	AUTO_INCREMENT PRIMARY KEY,
	CT_NO	INT,
	U_NO	INT,
	CTR_CONTENT	VARCHAR(2000),
	CTR_CREATE_DATE	DATETIME,
	CTR_MODIFY_DATE	DATETIME,
	CTR_STATUS	VARCHAR(3)
);
SELECT * FROM COLLECTION_RE;


DROP TABLE IF EXISTS COLLECTION_LIKE;
CREATE TABLE COLLECTION_LIKE (
	CTL_NO	INT	AUTO_INCREMENT PRIMARY KEY,
	CT_NO	INT,
	U_NO	INT,
	CTL_LIKE	INT
);

SELECT * FROM COLLECTION_LIKE;


DROP TABLE IF EXISTS BOARD;
CREATE TABLE BOARD (
	B_NO	INT	AUTO_INCREMENT PRIMARY KEY,
	U_NO	INT,
	TITLE	VARCHAR(1000),
	CONTENT	VARCHAR(2000),
	TYPE	VARCHAR(100),
	ORIGINAL_FILENAME	VARCHAR(1000),
	RENAMED_FILENAME	VARCHAR(1000),
	READCOUNT	INT DEFAULT 0,
	STATUS	VARCHAR(3) DEFAULT 'Y',
	CREATE_DATE	DATETIME DEFAULT CURRENT_TIMESTAMP,
	MODIFY_DATE	DATETIME DEFAULT CURRENT_TIMESTAMP,	
    FOREIGN KEY(U_NO) REFERENCES USER(U_NO)  -- (수정) board 테이블 외래키 설정
);

-- (수정) board 테이블 데이터 추가
INSERT INTO BOARD VALUES(1, 1, '2023년 국가무형문화재 전승공동체 활성화', '공지사항', 'notice', 'file', 'file', 123, DEFAULT, '2022-12-24', '2022-12-24');
INSERT INTO BOARD VALUES(2, 1, '한국의재발견 우리궁궐지킴이 25기 모집 안내', '공지사항', 'notice', 'file', 'file', 45, DEFAULT, '2022-12-24', '2022-12-24');
INSERT INTO BOARD VALUES(3, 1, '「근현대건축 활용 학술대회 및 설계공모 전시회」 수탁사업자 선정 결과 공고', '공지사항', 'notice', 'file', 'file', 75, DEFAULT, '2022-12-25', '2022-12-25');
INSERT INTO BOARD VALUES(4, 1, '매장문화재 조사기관 현황(22.12.22 현재)', '공지사항', 'notice', 'file', 'file', 143, DEFAULT, '2022-12-25', '2022-12-25');
INSERT INTO BOARD VALUES(5, 1, '매장문화재 조사기관 재등록 공고', '공지사항', 'notice', 'file', 'file', 98, DEFAULT, '2022-12-25', '2022-12-25');
INSERT INTO BOARD VALUES(6, 1, '2023년 문화재 재난안전 유공 청장표창 추천 후보자 대상자 공개검증', '공지사항', 'notice', 'file', 'file', 22, DEFAULT, '2022-12-26', '2022-12-26');
INSERT INTO BOARD VALUES(7, 1, '2022년도 국가무형문화재 이수심사 9기 심사 결과 공고', '공지사항', 'notice', 'file', 'file', 234, DEFAULT, '2022-12-26', '2022-12-26');
INSERT INTO BOARD VALUES(8, 1, '2023년 국가무형문화재 우수 이수자 선정 및 지원 계획 공고', '공지사항', 'notice', 'file', 'file', 211, DEFAULT, '2022-12-26', '2022-12-26');
INSERT INTO BOARD VALUES(9, 1, '2022년 하반기 교원 문화유산 직무연수 신청안내', '공지사항', 'notice', 'file', 'file', 24, DEFAULT, '2022-12-27', '2022-12-27');
INSERT INTO BOARD VALUES(10, 1, '2023 무형유산 교원 연수 과정 교육 대상자 선정 공고', '공지사항', 'notice', 'file', 'file', 83, DEFAULT, '2022-12-27', '2022-12-27');
INSERT INTO BOARD VALUES(11, 1, '2023년도 문화재수리기능인 양성과정 교육생 모집 공고', '공지사항', 'notice', 'file', 'file', 128, DEFAULT, '2022-12-27', '2022-12-27');
INSERT INTO BOARD VALUES(12, 1, '2023년 국가무형문화재 전승공동체 활성화 지원 사업 공모 알림', '공지사항', 'notice', 'file', 'file', 41, DEFAULT, '2022-12-28', '2022-12-28');
INSERT INTO BOARD VALUES(13, 1, '「근현대건축 활용 학술대회 및 설계공모 전시회」 위탁사업자 선정 공모', '공지사항', 'notice', 'file', 'file', 82, DEFAULT, '2022-12-28', '2022-12-28');
INSERT INTO BOARD VALUES(14, 1, '2022년 문화재청 정책만족도 조사 설문 당첨자 공지', '공지사항', 'notice', 'file', 'file', 245, DEFAULT, '2022-12-29', '2022-12-29');
INSERT INTO BOARD VALUES(15, 1, '2022년 조직발전 유공자 표창 추천 대상자 공개검증 실시', '공지사항', 'notice', 'file', 'file', 99, DEFAULT, '2022-12-30', '2022-12-30');

INSERT INTO BOARD VALUES(0, 2, '조선에 방문한 낯선 이 여기에 잠들다', '자유게시판', 'free', 'file', 'file', 22, DEFAULT, '2022-12-24', '2022-12-24');
INSERT INTO BOARD VALUES(0, 3, '제 컬렉션 보러오쉴?', '자유게시판', 'free', 'file', 'file', 16, DEFAULT, '2022-12-24', '2022-12-24');
INSERT INTO BOARD VALUES(0, 5, '개량한복이 편하긴 편함', '자유게시판', 'free', 'file', 'file', 67, DEFAULT, '2022-12-25', '2022-12-25');
INSERT INTO BOARD VALUES(0, 4, '이 시간에 야식 어떤데', '자유게시판', 'free', 'file', 'file', 24, DEFAULT, '2022-12-25', '2022-12-25');
INSERT INTO BOARD VALUES(0, 4, '아 졸리다... 자고싶다', '자유게시판', 'free', 'file', 'file', 11, DEFAULT, '2022-12-26', '2022-12-26');
INSERT INTO BOARD VALUES(0, 3, '님들 안압지 공사 끝난듯여', '자유게시판', 'free', 'file', 'file', 123, DEFAULT, '2022-12-26', '2022-12-26');
INSERT INTO BOARD VALUES(0, 2, '이번에 야간개장 진짜 예쁘더라', '자유게시판', 'free', 'file', 'file', 65, DEFAULT, '2022-12-26', '2022-12-26');
INSERT INTO BOARD VALUES(0, 5, '경주 맛집 추천 받음', '자유게시판', 'free', 'file', 'file', 123, DEFAULT, '2022-12-26', '2022-12-26');
INSERT INTO BOARD VALUES(0, 5, '요새 사극드라마 볼 거 없냐', '자유게시판', 'free', 'file', 'file', 33, DEFAULT, '2022-12-27', '2022-12-27');
INSERT INTO BOARD VALUES(0, 4, '왜 벌써 연말임ㅜㅜ', '자유게시판', 'free', 'file', 'file', 51, DEFAULT, '2022-12-27', '2022-12-27');
INSERT INTO BOARD VALUES(0, 6, '다들 머하세요', '자유게시판', 'free', 'file', 'file', 18, DEFAULT, '2022-12-28', '2022-12-28');
INSERT INTO BOARD VALUES(0, 3, '이달의 수집가 먹었다 ㅊㅊㅊ', '자유게시판', 'free', 'file', 'file', 42, DEFAULT, '2022-12-28', '2022-12-28');
INSERT INTO BOARD VALUES(0, 6, '내일 한국사 시험 보는데 응원 좀', '자유게시판', 'free', 'file', 'file', 88, DEFAULT, '2022-12-29', '2022-12-29');
INSERT INTO BOARD VALUES(0, 5, '진짜 춥네요;', '자유게시판', 'free', 'file', 'file', 56, DEFAULT, '2022-12-30', '2022-12-30');
INSERT INTO BOARD VALUES(0, 2, '어제 경주 다녀왔는데', '자유게시판', 'free', 'file', 'file', 68, DEFAULT, '2022-12-31', '2022-12-31');

INSERT INTO BOARD VALUES(0, 2, '뽀로로가 남북협력으로 만들어졌다는 게 진짜예요?', '질문게시판', 'question', 'file', 'file', 68, DEFAULT, '2022-12-24', '2022-12-24');
INSERT INTO BOARD VALUES(0, 4, '우리나라도 공산당이 있었음?', '질문게시판', 'question', 'file', 'file', 32, DEFAULT, '2022-12-24', '2022-12-24');
INSERT INTO BOARD VALUES(0, 5, '서재필은 고종한테 4400원 받고 뭐했나요?', '질문게시판', 'question', 'file', 'file', 75, DEFAULT, '2022-12-25', '2022-12-25');
INSERT INTO BOARD VALUES(0, 2, '시야가는 일본인인데 왜 김충선이 된건지...', '질문게시판', 'question', 'file', 'file', 54, DEFAULT, '2022-12-25', '2022-12-25');
INSERT INTO BOARD VALUES(0, 2, '조선 시대에도 수능이 있나요', '질문게시판', 'question', 'file', 'file', 94, DEFAULT, '2022-12-26', '2022-12-26');
INSERT INTO BOARD VALUES(0, 4, '서희는 진짜 말 몇 마디로 거란을 물러나게 한 거예요?', '질문게시판', 'question', 'file', 'file', 164, DEFAULT, '2022-12-27', '2022-12-27');
INSERT INTO BOARD VALUES(0, 5, '민간인 학살을 주도한 사람들이 왜 훈장을 받음?', '질문게시판', 'question', 'file', 'file', 89, DEFAULT, '2022-12-27', '2022-12-27');
INSERT INTO BOARD VALUES(0, 6, '안중근은 의사? 테러리스트? 어떻게 생각하세요', '질문게시판', 'question', 'file', 'file', 221, DEFAULT, '2022-12-28', '2022-12-28');
INSERT INTO BOARD VALUES(0, 6, '정조는 왜 한밤중에 화성에서 군사훈련을 했는지...', '질문게시판', 'question', 'file', 'file', 121, DEFAULT, '2022-12-28', '2022-12-28');
INSERT INTO BOARD VALUES(0, 2, '왕 이름에 붙는 조랑 종은 무슨 차이인가', '질문게시판', 'question', 'file', 'file', 25, DEFAULT, '2022-12-28', '2022-12-28');
INSERT INTO BOARD VALUES(0, 3, '고려에서는 외국인도 고위 공무원이 될 수 있었나요?', '질문게시판', 'question', 'file', 'file', 57, DEFAULT, '2022-12-28', '2022-12-28');
INSERT INTO BOARD VALUES(0, 5, '공식적으로 복수를 허용하는 법이 있었다던데', '질문게시판', 'question', 'file', 'file', 42, DEFAULT, '2022-12-29', '2022-12-29');
INSERT INTO BOARD VALUES(0, 4, '삼국시대 사람도 서역을 갈 수 있었나요?', '질문게시판', 'question', 'file', 'file', 29, DEFAULT, '2022-12-29', '2022-12-29');
INSERT INTO BOARD VALUES(0, 3, '빗살무늬 토기 바닥은 왜 뾰족한 겁니까', '질문게시판', 'question', 'file', 'file', 47, DEFAULT, '2022-12-30', '2022-12-30');
INSERT INTO BOARD VALUES(0, 2, '한능검 1급 난이도 어떤가요?', '질문게시판', 'question', 'file', 'file', 76, DEFAULT, '2022-12-31', '2022-12-31');

INSERT INTO BOARD VALUES(0, 1, '무형유산 디지털 아카이브 이용 안내', '자주하는질문', 'customer', 'file', 'file', 23, DEFAULT, '2022-12-01', '2022-12-01');
INSERT INTO BOARD VALUES(0, 1, '공연예술 아카이브 네트워크 통합검색 안내', '자주하는질문', 'customer', 'file', 'file', 56, DEFAULT, '2022-12-01', '2022-12-01');
INSERT INTO BOARD VALUES(0, 1, '라키비움 책마루 문화프로그램 이용 안내', '자주하는질문', 'customer', 'file', 'file', 72, DEFAULT, '2022-12-02', '2022-12-02');
INSERT INTO BOARD VALUES(0, 1, '무형유산 학술지 원고투고 방법 소개', '자주하는질문', 'customer', 'file', 'file', 124, DEFAULT, '2022-12-02', '2022-12-02');
INSERT INTO BOARD VALUES(0, 1, '국가무형문화재 기록도서 안내', '자주하는질문', 'customer', 'file', 'file', 43, DEFAULT, '2022-12-03', '2022-12-03');
INSERT INTO BOARD VALUES(0, 1, '무형유산 관련 자료 기증안내', '자주하는질문', 'customer', 'file', 'file', 86, DEFAULT, '2022-12-03', '2022-12-03');
INSERT INTO BOARD VALUES(0, 1, '국립무형유산원 공연 예약 문의', '자주하는질문', 'customer', 'file', 'file', 31, DEFAULT, '2022-12-04', '2022-12-04');
INSERT INTO BOARD VALUES(0, 1, '국가무형문화재 정기조사', '자주하는질문', 'customer', 'file', 'file', 19, DEFAULT, '2022-12-04', '2022-12-04');
INSERT INTO BOARD VALUES(0, 1, '한국무형유산종합조사 안내', '자주하는질문', 'customer', 'file', 'file', 42, DEFAULT, '2022-12-05', '2022-12-05');
INSERT INTO BOARD VALUES(0, 1, '국립무형유산원 신인논문상 안내', '자주하는질문', 'customer', 'file', 'file', 262, DEFAULT, '2022-12-06', '2022-12-06');
INSERT INTO BOARD VALUES(0, 1, '국립해양문화재연구소 제작 보고서 수령방법', '자주하는질문', 'customer', 'file', 'file', 121, DEFAULT, '2022-12-06', '2022-12-06');
INSERT INTO BOARD VALUES(0, 1, '문화재청 남북간문화재교류협력사업', '자주하는질문', 'customer', 'file', 'file', 20, DEFAULT, '2022-12-07', '2022-12-07');
INSERT INTO BOARD VALUES(0, 1, '[경복궁] 근정전 향로 문의', '자주하는질문', 'customer', 'file', 'file', 56, DEFAULT, '2022-12-07', '2022-12-07');
INSERT INTO BOARD VALUES(0, 1, '건축문화재의 안전관리 및 모니터링의 목적', '자주하는질문', 'customer', 'file', 'file', 99, DEFAULT, '2022-12-08', '2022-12-08');
INSERT INTO BOARD VALUES(0, 1, '문화재청 SNS 운영여부', 
'안녕하세요?저희 문화재청에 많은 관심을 가져주셔서 감사합니다.

문화재청에서는 국민과 직접적으로 소통하고 주요정책 관련 국민들의 의견을 적극적으로 반영하기 위하여 페이스북과 트위터, 블로그, 인스타그램, 유튜브를 운영하고 있으며, 주요 뉴스,  문화재청 소식, 대학생기자단 기사, 행사 안내 등을 제공해 드리고 있습니다.

다음 링크를 참조하시길 바랍니다.
ㅇ 페이스북(http://www.facebook.com/chloveu)
ㅇ 트위터(http://twitter.com/chlove_u)
ㅇ 블로그(http://blog.naver.com/chagov)
ㅇ 인스타그램(http://instagram.com/chlove_u)
ㅇ 유튜브(http://youtube.com/chluvu)

앞으로도 문화재청 SNS에 대해 궁금하신 점이 있으시면 문화재청 대변인실(042-481-3157)로 연락주시기 바랍니다.감사합니다.', 
'customer', 'file', 'file', 87, DEFAULT, '2022-12-09', '2022-12-09');

delete from board where b_no = 60;



-- UPDATE BOARD SET STATUS = 'Y' WHERE B_NO = 15; 
SELECT * FROM BOARD;

DROP TABLE IF EXISTS BOARD_RE;
CREATE TABLE BOARD_RE (
	BR_NO	INT	AUTO_INCREMENT PRIMARY KEY,
	B_NO	INT,
	U_NO	INT,
	BR_CONTENT	VARCHAR(2000),
	BR_CREATE_DATE	DATETIME DEFAULT CURRENT_TIMESTAMP,
	BR_MODIFY_DATE	DATETIME DEFAULT CURRENT_TIMESTAMP,
	BR_STATUS	VARCHAR(3) DEFAULT 'Y',
	FOREIGN KEY(U_NO) REFERENCES USER(U_NO)  -- (수정) board_re 테이블 외래키 설정
);

-- INSERT INTO BOARD_RE VALUES(1, 15, 1, "테스트 댓글1", default, default, default);
-- DELETE FROM BOARD_RE WHERE BR_NO = 5;
SELECT * FROM BOARD_RE;





DROP TABLE IF EXISTS STAMP;
CREATE TABLE STAMP (
	S_NO	INT	AUTO_INCREMENT PRIMARY KEY,
	U_NO	INT,
	SINLA	INT,
	BEKJE	INT,
	GOGURYEO	INT
);

SELECT * FROM STAMP;



DROP TABLE IF EXISTS EVENT;
CREATE TABLE EVENT (
	E_NO	INT	PRIMARY KEY,
	subTitle	VARCHAR(500),
	subContent	VARCHAR(2000),
	sDate	VARCHAR(500),
	eDate	VARCHAR(500),
	subDesc	VARCHAR(500),
	subDesc1	VARCHAR(500),
	image	VARCHAR(2000),
	sido	VARCHAR(100),
	gogun	VARCHAR(100),
	subDate	VARCHAR(2000)
);

INSERT INTO EVENT VALUES(1,'종가의 정성','종부에게 배우는 종가의 음식을 알아보고 체험해 보는 프로그램' ,'20221101' ,'20221101', '의정공김국광종택','일반인','미정','충청남도', '논산시','11월1일-8일-15일-22일 매주 화요일 오전 09:30~12:30');
INSERT INTO EVENT VALUES(2,'에헴! 이리오너라 향교나들이','향교나들이를 통해 전통예절을 배우고 익히는 인성교육의 전당' ,20221101 ,20221101, '영천향교',' 어린이집 어린이','미정','경상북도', '영천시 ','11/1, 11/8, 11/15, 11/22, 11/29 (09:00~14:00) 화요일');
INSERT INTO EVENT VALUES(3,'찾아가는향교',' 인성예절 및 전통놀이' ,20221101 ,20221101, '장애인작업장, 지역아동센터','장애인 및 초등학생','미정','강원도 ', '정선군 ',' 11/1, 11/2, 11/3, 11/8, 11/9, 11/10, 11/15, 11/16, 11/17 (총 9회) // 11:00~18:00 ');
INSERT INTO EVENT VALUES(4,'법고창신 전통문화체험','예절, 한복입기,한옥, 전통혼례, 국궁, 투호, 덕메치기, 윷놀리, 다도, 야행 ' ,20221101 ,20221101, '경주향교','일반시민 ','미정','경상북도 ', '경주시 ','11/2, 11/8, 11/9, 11/14, 11/16, 11/18');
INSERT INTO EVENT VALUES(5,'양주향교와 함께하는 시간여행','종양주향교 해설사의 안내를 통해 향교와 인근 역사문화유산 체험 및 탐방' ,20221101 ,20221101, '양주향교','시민','미정','경기도 ', '양주시 ',' 11/2, 11/5, 11/9, 11/12, 11/16, 11/23, 11/26, 11/30 (총 9회) // 10:00~16:00 ');
INSERT INTO EVENT VALUES(6,'외규장각 의궤, 그 고귀함의 의미','외규장각 의궤의 존재를 세상에 알리고 연구에 헌신하다 2011년 11월 23일 타계하신 고故 박병선 박사를 기리며 추모기간 동안 무료로 전시장을 개방합니다. (추모기간: 2022. 11. 21.(월) ~ 11. 27.(일) / 1주일)' ,20221101 ,20221101, '국립중앙박물관','시민','미정','서울특별시', '용산구 ',' 2022년 11월 1일(화) ~ 2023년 3월 19일(일)
월,화,목,금,일요일 10:00~18:00(발권마감 17:20 입장마감 17:30)/ 수,토요일 10:00~21:00(발권마감 20:20 입장마감 20:30) *관람 시간 내 관람 원하시는 시간대에 입장 가능합니다. *휴관일 1.1.(신정), 1.22.(설날 당일) ');
SELECT * FROM EVENT;

ALTER TABLE COLLECTION ADD CONSTRAINT FK_USER_TO_COLLECTION_1 FOREIGN KEY (
	U_NO
)
REFERENCES USER (
	U_NO
);

ALTER TABLE HERITAGE_IMAGE ADD CONSTRAINT FK_HERITAGE_TO_HERITAGE_IMAGE_1 FOREIGN KEY (
	H_NO
)
REFERENCES HERITAGE (
	H_NO
);

ALTER TABLE BOARD ADD CONSTRAINT FK_USER_TO_BOARD_1 FOREIGN KEY (
	U_NO
)
REFERENCES USER (
	U_NO
);

ALTER TABLE BOARD_RE ADD CONSTRAINT FK_BOARD_TO_BOARD_RE_1 FOREIGN KEY (
	B_NO
)
REFERENCES BOARD (
	B_NO
);

ALTER TABLE BOARD_RE ADD CONSTRAINT FK_USER_TO_BOARD_RE_1 FOREIGN KEY (
	U_NO
)
REFERENCES USER (
	U_NO
);

ALTER TABLE COLLECTION_RE ADD CONSTRAINT FK_COLLECTION_TO_COLLECTION_RE_1 FOREIGN KEY (
	CT_NO
)
REFERENCES COLLECTION (
	CT_NO
);

ALTER TABLE COLLECTION_RE ADD CONSTRAINT FK_USER_TO_COLLECTION_RE_1 FOREIGN KEY (
	U_NO
)
REFERENCES USER (
	U_NO
);

ALTER TABLE STAMP ADD CONSTRAINT FK_USER_TO_STAMP_1 FOREIGN KEY (
	U_NO
)
REFERENCES USER (
	U_NO
);

ALTER TABLE COLLECTION_LIKE ADD CONSTRAINT FK_COLLECTION_TO_COLLECTION_LIKE_1 FOREIGN KEY (
	CT_NO
)
REFERENCES COLLECTION (
	CT_NO
);

ALTER TABLE COLLECTION_LIKE ADD CONSTRAINT FK_USER_TO_COLLECTION_LIKE_1 FOREIGN KEY (
	U_NO
)
REFERENCES USER (
	U_NO
);

ALTER TABLE HERITAGE_RE ADD CONSTRAINT FK_HERITAGE_TO_HERITAGE_RE_1 FOREIGN KEY (
	H_NO
)
REFERENCES HERITAGE (
	H_NO
);

ALTER TABLE HERITAGE_RE ADD CONSTRAINT FK_USER_TO_HERITAGE_RE_1 FOREIGN KEY (
	U_NO
)
REFERENCES USER (
	U_NO
);

ALTER TABLE COLLECTION_INPUT_H ADD CONSTRAINT FK_COLLECTION_TO_COLLECTION_INPUT_H_1 FOREIGN KEY (
	CT_NO
)
REFERENCES COLLECTION (
	CT_NO
);

ALTER TABLE COLLECTION_INPUT_H ADD CONSTRAINT FK_HERITAGE_TO_COLLECTION_INPUT_H_1 FOREIGN KEY (
	H_NO
)
REFERENCES HERITAGE (
	H_NO
);