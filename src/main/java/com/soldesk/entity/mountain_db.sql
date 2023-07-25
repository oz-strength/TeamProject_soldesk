-- 산 테이블 생성
create table soldesk_mountain_tb(
	m_no number(4) primary key,
	m_name varchar2(20 char) not null,
	m_height number(4) not null,
	m_location varchar2(20 char) not null,
	m_address varchar2(100 char) not null,
	m_photo varchar2(100 char) 
);

-- 산 테이블 시퀀스 생성
CREATE SEQUENCE seq_soldesk_mountain_tb
    INCREMENT BY 1
       START WITH 1
       MINVALUE 1
       MAXVALUE 999999999
       NOCYCLE
       NOCACHE
       NOORDER;

-- 산 테이블 조회
select * from SOLDESK_MOUNTAIN_TB;
-- 산 테이블 삭제
drop table SOLDESK_MOUNTAIN_TB cascade constraint purge;
-- 산 시퀀스 삭제
drop sequence seq_soldesk_mountain_tb;


-- 산 테이블 -> 'ㄱ' 16개
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '가리산', 1051, '강원', '강원특별자치도 홍천군 두촌면 천현리 산 134-133');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '가리왕산', 1562, '강원', '강원특별자치도 평창군 진부면 장전리 산 1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '가야산', 1433, '경북', '경북 성주군 가천면 법전리 산 162');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '가지산', 1240, '울산', '울산 울주군 상북면 덕현리 산 232-2');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '감악산', 675, '경기', '경기 파주시 적성면 객현리');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '강천산', 584, '전북', '전북 순창군 팔덕면 청계리 산 263-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '계룡산', 845, '충남', '충남 계룡시 신도안면 부남리 1063-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '계방산', 1577, '강원', '강원특별자치도 홍천군 내면 창촌리');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '공작산', 887, '강원', '강원특별자치도 홍천군 화촌면 군업리 산 10');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '관악산', 632, '서울', '서울 관악구 신림동 산 56-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '구병산', 876, '충북', '충북 보은군 마로면 갈평리 산 13-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '금산', 681, '경남', '경남 남해군 상주면 상주리 산 257-3');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '금수산', 1016, '충북', '충북 제천시 수산면 상천리 산 12-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '금오산', 977, '경북', '경북 구미시 남통동 산 33');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '금정산', 802, '경남', '경남 양산시 동면 가산리 산 1-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '깃대봉', 368, '전남', '전남 신안군 흑산면 홍도리 산 17');

-- 산 테이블 -> 'ㄴ' 3개
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '남산', 468, '경북', '경북 경주시 배동 산 72-6');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '내연산', 710, '경북', '경북 포항시 북구 송라면 중산리 산 103-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '내장산', 763, '전북', '전북 정읍시 내장동 산 231');

-- 산 테이블 -> 'ㄷ' 10개
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '대둔산', 878, '전북', '전북 완주군 운주면 산북리 산 15-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '대암산', 1304, '강원', '강원특별자치도 인제군 북면 월학리 산 439');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '대야산', 931, '경북', '경북 문경시 가은읍 완장리 산 75-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '덕숭산', 495, '충남', '충남 예산군 덕산면 광천리 산 7');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '덕유산', 1614, '전북', '전북 무주군 설천면 삼공리 산 109');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '덕항산', 1071, '강원', '강원특별자치도 삼척시 신기면 대기리 산 2');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '도락산', 964, '충북', '충북 단양군 단성면 벌천리 산 1-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '도봉산', 740, '서울', '서울 도봉구 도봉동 산 31');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '두륜산', 700, '전남', '전남 해남군 북일면 흥촌리 산 117-8');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '두타산', 1353, '강원', '강원특별자치도 동해시 삼화동 산 267');
-- 위치 정정
update soldesk_mountain_tb set m_location='강원', m_address='강원특별자치도 동해시 삼화동 산 267' where m_name='두타산';

-- 산 테이블 -> 'ㄹ' 0개

-- 산 테이블 -> 'ㅁ' 9개
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '마니산', 469, '인천', '인천 강화군 화도면 문산리 산 55');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '마이산', 687, '전북', '전북 진안군 마령면 동촌리 산 18');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '명성산', 923, '강원', '강원특별자치도 철원군 갈말읍 신철원리 산 26-23');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '명지산', 1267, '경기', '경기 가평군 북면 적목리 산 1-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '모악산', 793, '전북', '전북 완주군 구이면 모악산길 111-3');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '무등산', 1187, '광주', '광주 북구 금곡동 산 1-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '무학산', 761, '경남', '경남 창원시 마산회원구 내서읍 감천리 산 13');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '미륵산', 461, '경남', '경남 통영시 봉평동 산 19-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '민주지산', 1242, '충북', '충북 영동군 상촌면 물한리 산 39-2');

-- 산 테이블 -> 'ㅂ' 10개
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '방장산', 743, '전북', '전북 고창군 신림면 가평리 산 25');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '방태산', 1444, '강원', '강원특별자치도 인제군 상남면 미산리 산 1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '백덕산', 1350, '강원', '강원특별자치도 영월군 무릉도원면 법흥리 산 1-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '백암산', 742, '전남', '전남 장성군 북하면 신성리 산 1-11');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '백운산(광양)', 1222, '전남', '전남 광양시 옥룡면 동곡리 산 136');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '백운산(정선)', 883, '강원', '강원특별자치도 정선군 고한읍 고한리');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '백운산(포천)', 904, '경기', '경기 포천시 이동면 도평리 산 1-2');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '변산', 509, '전북', '전북 부안군 변산면 중계리');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '북한산', 836, '경기', '경기 고양시 덕양구 북한동 산 1-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '비슬산', 1084, '대구', '대구 달성군 유가읍 양리 산 3-1');

-- 산 테이블 -> 'ㅅ' 9개
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '삼악산', 654, '강원', '강원특별자치도 춘천시 서면 덕두원리 산 164-23');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '서대산', 904, '충남', '충남 금산군 군북면 보광리 산 56-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '선운산', 336, '전북', '전북 고창군 심원면 연화리 산 130');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '설악산', 1708, '강원', '강원특별자치도 양양군 서면 오색리 산 1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '성인봉', 984, '경북', '경북 울릉군 울릉읍 사동리 산 35');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '소백산', 1439, '충북', '충북 단양군 가곡면 어의곡리 산 59-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '소요산', 587, '경기', '경기 동두천시 상봉암동 산 1-5');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '속리산', 1058, '충북', '충북 보은군 속리산면 사내리 산 1-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '신불산', 1159, '울산', '울산 울주군 상북면 등억알프스리 산 180');

-- 산 테이블 -> 'ㅇ' 12개
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '연화산', 528, '경남', '경남 고성군 개천면 좌연리 산 284');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '오대산', 1563, '강원', '강원특별자치도 평창군 진부면 동산리 산 1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '오봉산', 779, '강원', '강원특별자치도 춘천시 북산면 청평리 산 189-2');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '용문산', 1157, '경기', '경기 양평군 옥천면 용천리 산 20-3');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '용화산', 878, '강원', '강원특별자치도 춘천시 사북면 고성리');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '운문산', 1159, '경남', '경남 밀양시 산내면 삼양리 산 1-2');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '운악산', 936, '경기', '경기 포천시 화현면 화현리 산 202');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '운장산', 1126, '전북', '전북 진안군 부귀면 황금리 산 190');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '월악산', 1094, '충북', '충북 제천시 덕산면 월악리 산 14-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '월출산', 809, '전남', '전남 영암군 영암읍 개신리 산 89-2');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '유명산', 862, '경기', '경기 가평군 설악면 가일리 산 58-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '응봉산', 999, '강원', '강원특별자치도 삼척시 가곡면 풍곡리');

-- 산 테이블 -> 'ㅈ' 9개
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '장안산', 1237, '전북', '전북 장수군 계남면 장안리 산 116-3');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '재약산', 1108, '경남', '경남 밀양시 단장면 구천리 산 1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '적상산', 1034, '전북', '전북 무주군 적상면 북창리 산 117');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '점봉산', 1424, '강원', '강원특별자치도 양양군 서면 오색리 산 1-15');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '조계산', 887, '전남', '전남 순천시 송광면 장안리 산 1-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '주왕산', 721, '경북', '경북 청송군 주왕산면 상의리 산 8-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '주흘산', 1106, '경북', '경북 문경시 문경읍 상초리 산 42-58');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '지리산(통영)', 398, '경남', '경남 통영시 사량면 돈지리 산 151');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '지리산', 1915, '경남', '경남 함양군 마천면 추성리 산 100');

-- 산 테이블 -> 'ㅊ' 9개
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '천관산', 723, '전남', '전남 장흥군 관산읍 외동리 산 51-4');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '천마산', 810, '경기', '경기 남양주시 오남읍 팔현리 산 14');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '천성산', 812, '경남', '경남 양산시 하북면 용연리 산 63-2');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '천태산', 715, '충남', '충남 금산군 제원면 신안리 산 30-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '청량산', 870, '경북', '경북 봉화군 명호면 북곡리 산 60-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '추월산', 731, '전남', '전남 담양군 용면 쌍태리 산 6');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '축령산', 879, '경기', '경기 가평군 상면 행현리');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '치악산', 1288, '강원', '강원특별자치도 원주시 소초면 학곡리 산 33');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '칠갑산', 561, '충남', '충남 청양군 대치면 광대리 산 30');

-- 산 테이블 -> 'ㅋ' 0개

-- 산 테이블 -> 'ㅌ' 2개
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '태백산', 1567, '강원', '강원특별자치도 태백시 혈동 산 87-2');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '태화산', 1027, '충북', '충북 단양군 영춘면 오사리 산 1');

-- 산 테이블 -> 'ㅍ' 3개
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '팔공산', 1193, '대구', '대구 군위군 부계면 동산리 산 74-18');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '팔봉산', 302, '강원', '강원특별자치도 홍천군 서면 팔봉리 산 225');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '팔영산', 609, '전남', '전남 고흥군 영남면 금사리 산 37-1');

-- 산 테이블 -> 'ㅎ' 8개
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '한라산', 1947, '제주', '제주특별자치도 서귀포시 서홍동 산 1-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '화악산', 1468, '경기', '경기 가평군 북면 화악리 산 228-5');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '화왕산', 757, '경남', '경남 창녕군 고암면 우천리 산 80-2');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '황매산', 1108, '경남', '경남 합천군 가회면 둔내리 산 219');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '황석산', 1235, '경남', '경남 함양군 안의면 상원리 산 156-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '황악산', 1111, '충북', '충북 영동군 매곡면 어촌리 산 106-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '황장산', 1077, '경북', '경북 문경시 동로면 생달리 산 8-1');
insert into SOLDESK_MOUNTAIN_TB(m_no, m_name, m_height, m_location, m_address)
values(seq_soldesk_mountain_tb.nextval, '희양산', 998, '경북', '경북 문경시 가은읍 원북리 산 1-1');

-- 사진 주소 길이 확장
ALTER TABLE soldesk_mountain_tb MODIFY m_photo VARCHAR2(500 char);

-- 산 사진 추가 1 ~ 10
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.san.chosun.com/news/photo/201902/12491_52343_410.jpg'
    WHERE m_name = '가리산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/Vn1I-FRV4_I0yLeM7CU8lGJBPOehEHnv8axPsw9ZN8T4_n_7C-ARY9wYXCttpPrIVx6mQA3OTl01c3moyu7uGvORbCXsTVKmv7krj1_w6m9gGY83JGbAZ4kF_bZvi6CQXF294KtlomKJqRgXN6tGVQ.webp'
    WHERE m_name = '가리왕산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://img3.yna.co.kr/etc/inner/KR/2021/08/12/AKR20210812048400063_03_i_P4.jpg'
    WHERE m_name = '가야산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/yTf0paNPgHS9GJonZT5G4g1Gj0Ovn_Y8EUHTdWZ9U1cTgWKixo3NSQ2mMmNL3tds5q7UGt9w5YCXkQt_4nemnXw2v8aM7JPYIz-VqATXUuH8OY7WGRxpdIqW3oPvnbt3Q7bhhik1C-PmbSwqs_Zj9g.webp'
    WHERE m_name = '가지산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/DqVMxqN8e0LT4mfw1QptSGWnWfmzAQOoCnT5juylu5JG1CYNX1zoaBqHfuMXwg-diVBbTr6AQW6yHNDBp8fYT7sxN1G3xyibKzX2LFnw_EvQfFcmnxlBipm-t4JXBN0X-GyonQgi1vZASFsTlRuTyA.webp'
    WHERE m_name = '감악산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.san.chosun.com/news/photo/202010/14299_60046_2819.jpg'
    WHERE m_name = '강천산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/KmLmnHgLwIPE6afrlDR4pofkhNGOadgN9JF0dajyK2fZ0O755iNnWV1QWQs1BR0k8GIewetCTfkBWdBEkv1ZGF9v2lrmfuWRWMsCqLBdLDoUm4vEEkjdLBrJIDK3jDgygqbk3I2O8MfTa6fQOK4-lQ.webp'
    WHERE m_name = '계룡산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/0sYAblHjvB5ng3ucJqQ_wx74y_6qlU4e47XfDJ5x9CovZTVAV1Ri4n57-9zdEqqTOaiPHVBXU-pNeC5zkolkF199hSUbDnYoukRj69Gw67SzrLuyehc8Ke7r9l1v8Wh8yQvZn8zNqnRqrnZFwL6Oew.webp'
    WHERE m_name = '계방산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.hongcheon.go.kr/DATA/tour/2033/thumb/p_20210109023401215rQetP8.jpg'
    WHERE m_name = '공작산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.san.chosun.com/news/photo/202207/20076_77794_5432.jpg'
    WHERE m_name = '관악산';

-- 산 사진 추가 11 ~ 20
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://img.khan.co.kr/news/2009/04/14/20090415.01100121000001.01L.webp'
    WHERE m_name = '구병산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.sisajournal.com/news/photo/201911/193269_98152_597.jpg'
    WHERE m_name = '금산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.kbmaeil.com/news/photo/201507/357290_772040_1315.jpg'
    WHERE m_name = '금수산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/JQo8Us4qsYj6YuOQPBgCk44VMeDy9EYoxhrvWJEk__7bL_jxQru2tSHoUnh0tNJkb_Bj5SVAcCxhNzdoo7_0nNy_09Shd8NExvqSGr9Jc56Om3GbdqrHkTyyDLaBE-5ZVKv7_6PSgtVF_N_2low_qQ.jpg'
    WHERE m_name = '금오산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/cOMZSccvTdVNotAp3ssUAzJXc_gDmGbIu3guvSWd0ReTSuk3NJL7fpJR9LavtgD-1euEM2WdAViqKrzyQx70R7bgQor6qb9r69RzlBq0g_XeZxAwY4Xtlvpnca6mJarOarvAgDjDqOM-4yjZzb0ZjA.webp'
    WHERE m_name = '금정산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20200625_170%2F1593074701128W9qv6_JPEG%2FnA6beBTS_EOKZ3hEQiWIYFT5.jpg'
    WHERE m_name = '깃대봉';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/KNW3qff5zlk5ZhrsTCBcayc3d81i0n0zmx1vweiO3VOd6l0AoOppuG0jrcx9ABfTzR9ZZLS3oP_f8TLDfNh2Sc5XNgMVhTe4AsUtiUqd7s-FxkPS5EFXbGseNQ7XllNXcqXwj_vzX3T4EpCSMKSU2g.webp'
    WHERE m_name = '남산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/IVctTQBoEQMgxt1KBgKNoYIST_WszjQhzzvcDT9D83xlW7Ggnu-wBY-gCjjljY1UskGCDJHOyn2N5r0VwzWJ4_-U4si1cPrTkbCtd0Sqwh7fjL6cN5RxDTe0K0NjyLRQB6Dx0Z_nHCQueidt5CJCrQ.webp'
    WHERE m_name = '내연산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/O_osdoFVtZT6d-nsFFOeOOZvkizZ9mwuMi108Lzy270eCLkyh56RLTl3hV-p3JVk5ixRKw9uWRA1K4rQRs5YBz80uTZe_FACQRICWi-_RNHHtVbEnuiTynDep-Tw3vo4bmMTqhEdlw8zWG8N89-Odg.jpg'
    WHERE m_name = '내장산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/dWv8Qwj-OE-YXsni9dX9empb-l9KQ5miM_3g3ZbUoc57ci6gJavZZ-G-hGcl9MohpRi4MOwEbDsz3XTsWhmDt3utiKK2bJw9-SL_SHcSSNF8fiHEROjyBazdJXMu0nTAbHkT3LFT4HA4QqBU3k6Rzw.webp'
    WHERE m_name = '대둔산';

-- 산 사진 추가 21 ~ 30
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.san.chosun.com/news/photo/201908/12944_54531_1050.jpg'
    WHERE m_name = '대암산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/oRL-GA9LM7gn0H5wxY_JJRSrkK-6quNF2_TDUx_ZPIMKhlGlTg6Pk5VRloYU2AyIkvOhDaTxRxQglBk7XzmPKTSojkygPjh4gPKGrGmb0kFfMxmqCnZypAnO_rmZ24aQfI6rG3lQ_5TOBltd4p6sxA.webp'
    WHERE m_name = '대야산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.yesan.go.kr/images/tour/sub02/img_020601_01.jpg'
    WHERE m_name = '덕숭산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/uqZuFzKgeDb706woR2FmSbvYqKacBXdbK_2oMthIUrwI-Ao-_gAJlLSXydQl9L4-Hku59f0P6oHHWn1dETU1UsQlTBL_R2olh0DpPlqlPUYT2O6HH5t710kG7n6nXH8p65DE9pOdJhOxWq1yPMpXhw.webp'
    WHERE m_name = '덕유산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.kado.net/news/photo/201008/476772_155096_3459.jpg'
    WHERE m_name = '덕항산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://img.khan.co.kr/news/2008/11/27/20081128.01100125000001.01L.webp'
    WHERE m_name = '도락산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/7_SpialswBQFCwZwQXMvdRxF6tTm69gfoPenBW-v4vzN0vkYsTS5ukNH9YfcozgpZMywS_4xhrlv8RX0vLhib0znAQNIVX4UzQ6Z71IfhUxR22q-n4xPw89AZQfgmZ0lZHUT8IsEISESPQZDqCLBdw.webp'
    WHERE m_name = '도봉산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/pJp_LVfGaSP4gNsjXzUVM8n0gouHMtc5lH1eOokaElMjPtt2U3u1J5-JKgMbSsQ2E6ZnCkQ0nC5kc1b9FVukkRV7LEUk_s66xOfu2YMdWujwoNdcJJLmgn2qE-HejOWhVQZIYKb6wYBnhe6JvqlKLw.webp'
    WHERE m_name = '두륜산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/xF7VFnEXJlxIH_ZndevWYI2qZrfKtNMWLALPI7M68wOyNjJRzP8rGcP9eNk1Xgc1cAk9-5VYTTZkV0edZwE_indhDAYAzz5LyN6W6d8HOpayCUJWohBAeeiF80wK33BSWeJdezgPqMcV8OLfach_Ww.webp'
    WHERE m_name = '두타산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://img.khan.co.kr/news/2007/08/23/7h23k13a.webp'
    WHERE m_name = '마니산';

-- 산 사진 추가 31 ~ 40
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/nY5Dtry-lE_je3moA9TP_Yqll0HUJ0Pvaw23SKZZcXESQIEVsp6fgWV1bLEWQ5elvW5fu8SEHNUa4lcY86fAzeyRDeqVc8pU37G80-hMwxFfOHzEglOhm6pNer5WEbmJgmYIR54ibLvdT1rU6pq7dQ.webp'
    WHERE m_name = '마이산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/202106/23/96d7a497-5ce2-4154-86c2-9d8879ae36a8.jpg'
    WHERE m_name = '명성산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/f04cQrHMClAM2cQj0iBa3bh-4KCD7MmIo5QDsaBmKm2420n6_C1ZFHvdSqsRkbiEyn9tLfi2FQBc3tcDFxlyKXXw8I-fAtDdBT6oknhdoEN8BkqMTMP_pUlNLDRBhtw9VOfeoP9VbsNYiiaTcUfk7Q.webp'
    WHERE m_name = '명지산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/GBCJ8mcuemjRKJ_8Vc4p024UHaHd0kiQam6D7z3Bk1nsLHFLlegt2qyJWZyWjC8xhm4GrZYlhD5eiNYFCyCFO8EiUHOTeqDTm9ZJfVzx1pVt-l-xBhVrXtECaA1L8-8dPctl-QX5p_-NRPmFGDjoWQ.webp'
    WHERE m_name = '모악산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/8iwShm-OG6PID1oby63WhJGKuBz60VOjtDabof4OpxWEVW-dHGEtduNAYITsWEkbIBDp6W_xtKNDIiuTuO_OZ35n_vWOQHi_qQ3ynRowrEI3l8nyQt4PmuvbMqAgt4Sqqt5WlTtdrSa9TinroPzXZA.webp'
    WHERE m_name = '무등산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.busan.com/nas/wcms/wcms_data/photos/2020/07/29/2020072919232889385_l.jpg'
    WHERE m_name = '무학산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://img.khan.co.kr/news/2008/05/22/20080523.01100125000001.03L.webp'
    WHERE m_name = '미륵산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/YiNK3weagpCXJ1HocrlMpQz7Mn266x9EPBK9sMgfZu3a0l_UWMiA-ihbuWW9HgR1sSpuBjHzxAWfL9nLf0II2kn-mPYojnfTGz5mCz2KtMY5ipkARm_3C1zKkplZnURkkHASl0G9osSUbkV6lLJVXg.webp'
    WHERE m_name = '민주지산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://blogfiles.pstatic.net/MjAyMDA2MDFfNDAg/MDAxNTkwOTg5MjE2MzM3.yGZ4FobMBEOTyJEDGwFCKj73rJRv2Kqo1AU4GPaswTgg.ufcqVSfm8b12zm28cvtmDbHh33wpVY3JXxLFt0FW12Ag.JPEG.mko0506/1590989217789.jpg'
    WHERE m_name = '방장산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.kado.net/news/photo/200804/358951_93308_4851.jpg'
    WHERE m_name = '방태산';

-- 산 사진 추가 41 ~ 50
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/tSX4k8SYRHAwHgbJeviL0S60O3--H6PgO6DIejdRO96Zm7F-ATZQWa2uPMR_QUKUJeCmQP_aKUe6YL66QXTE76t3d3KKqiZPVqBgVXhKQ0KOIz7qcqL0OuPgEanJ5gJ1czI9bnX1xo0d5Z6q56zHdQ.webp'
    WHERE m_name = '백덕산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://minio.nculture.org/amsweb-opt/multimedia_assets/245/85175/84670/c/152_%EC%9E%A5%EC%84%B1-%EB%B0%B1%EC%95%94%EC%82%B0_%EA%B0%80%EC%9D%84_1_%EB%AC%B8%ED%99%94%EC%9E%AC%EC%B2%AD_%EC%A0%9C4%EC%9C%A0%ED%98%95-full-size.jpg'
    WHERE m_name = '백암산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://img.khan.co.kr/news/2007/08/16/7h16k09a.webp'
    WHERE m_name = '백운산(광양)';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://img.khan.co.kr/news/2008/04/24/20080425.01100125000005.03L.webp'
    WHERE m_name = '백운산(정선)';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://mblogthumb-phinf.pstatic.net/20131224_296/bee1478_1387872247278bkDV3_JPEG/DSCF7645.JPG?type=w800'
    WHERE m_name = '백운산(포천)';
UPDATE soldesk_mountain_tb
    SET m_photo = 'http://www.shnews.net/news/photo/201912/32362_13521_3717.jpg'
    WHERE m_name = '변산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/MHLg4PpkvQDGI-unwKwCRRMMpN-ly-8fGRTVHjl6gFVWWZzqPn3pv4cme8G3UWITA4EZZB1T0hk5tLlDitYS4o4JPQ3MKyKMHU7wgxODjwEGHf2j-J0S3TL1JT8wa8dsgzEdIepkdZiGI-UxS4_AEQ.webp'
    WHERE m_name = '북한산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/DBdM2MYcp0SynGTcjb0p-tovdIbir7nKpQgayC7y5-XoNsnLkQ2zE-Zilu5pHZGYP9sUchQUA27YNJEgTMmwY43asasOyYwKv9LYSsnrZVQv6ltofHlerqIQgcD_n33PlRyITnnFbdp9IuoO37JB2Q.webp'
    WHERE m_name = '비슬산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.heritage.go.kr/unisearch/images/monument/1647744.jpg'
    WHERE m_name = '삼악산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.san.chosun.com/news/photo/202203/15660_65773_20.jpg'
    WHERE m_name = '서대산';

-- 산 사진 추가 51 ~ 60
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA1MjJfNjEg%2FMDAxNjg0Njg2NzYxMDA5.JijpMCo3nfF6rRqhJkGZtdiP8CbmWMEkecNh2-nJKXgg.ykUqGyovvH6pEVaGBFGmK7fINJbHioBb9RERM86N8_og.JPEG.sanghun10045%2F20230514_121852.jpg'
    WHERE m_name = '선운산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/CZJ1jKFJjZSX01HQIgfOzrtwI8SrVuWuzDMaJjluvdDrnJ5JWTOGVC7hKQIZUrPTViepNoH3ujHyubbxbm2XWaowMBt0NohHbyGd3ponglMbVOkJNkviVIg4HIH_vGZTeEJb4mYHV4PQzHCwG7jwaQ.webp'
    WHERE m_name = '설악산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/2sM_KqX5aauXZ8qrtuMEqsX4NxejYY1LSqivSdyHpUDaZ1lwTouteyo2ZMtf6mWh6LTmrv3HC8-Kvx7sS_jG6--zpeqfnfijR9Ha3-4iI4X6YKE7eSUTrbYAid99XsaS4Fg-2e9lTrc_SVvfLVoAPw.webp'
    WHERE m_name = '성인봉';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/NZbF4JHBM3y_1QyuiA253WfN4BjYdLx3km4SIhLoTYV6f-rJ4XCXkvU3wek-3iCokcN8AIPJOAxrSGcRBEkWrlQawWeL718XRQvjArn6gIj43f1C9nCIGvmxwbhaPAS2xzxk_UoC7x3bO-RFksCj8A.webp'
    WHERE m_name = '소백산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/lTxjwTMTBzNtm3TlZWvNWcCD97_UfGjziDw53kVmk54O7tOEUAgtK_IDw6i3b53Zb1bx9NulpGpB0BGkJOpCuIM5XlTdUtv_xgQVrssKevdCdCY9jITA7XVazNSdFSxFJdAxPYRAEiaXTDbVFmEXbw.webp'
    WHERE m_name = '소요산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/VHuXeFCgZorgsYD0OPBebmYPHiZzbfUX7T-yKyX4jU2M8VoMgmdbUNJeN4LrchkfTtaeyvIEyA_NeSpqzEQmtBbSp6byVL3S_hswvlcqn545ufOT4vDLUNxGvn7LPpUnDwuJ04-jCKOMZEmY2_fqcA.webp'
    WHERE m_name = '속리산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/JQOzwL8tO1Ijm_VlPqQe7355smBIKp0bvzYRLRqG__8eMsrUZmmmhgyAlHb_YqDwsHz4O7P6rWQUIsdKjRaPixmt1CbMLtU20NBD5xRZdxZqBADKH7cxbFW4n7aUXcBTrpkN4Kmphm5zYJ3t2k41jw.webp'
    WHERE m_name = '신불산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'http://db.kookje.co.kr/news2000/photo/2022/0630/l20220630.22012006143i1.jpg'
    WHERE m_name = '연화산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/u5Ze6LH4MVs7WGvEwp-zUDCDkXgXTQOIDMI72PeM_4td_ZZfocz4QPZvlb5kCm_5wyOZCPjQD19JvwK3uF_R1vRtbQGoSy4y1opJyw1Zwl_y6BxfGzgxNSaLZiE2RScTqTkuA5XLTToftBXqpolVqw.webp'
    WHERE m_name = '오대산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://mblogthumb-phinf.pstatic.net/20160710_213/1009king_1468157419082YFqUt_JPEG/20160710_110141.jpg?type=w2'
    WHERE m_name = '오봉산';

-- 산 사진 추가 61 ~ 70
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/AE5uCx8gWYg2g8OmeoHaALtji4OJE5V3UkYazxx-08xexEzI_czNn2GIV_0uNLPgMTMMA62Cszf29wx5d__7dH2w65VB3AYpa51ouClZ3hbma3_skuNUCmjc5cnxqscGGIUkWfVV9xtGW1Xtvnsgeg.webp'
    WHERE m_name = '용문산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/n82gLqirnjahoOInOmUnhKGk1XTL_B4tS3OejtOZ7j-_5aNOwxSeI9CHtZkUD97PmjVXEHz1u3TVPm0tnlv4C9HbfBlt890_kawS_i7wYxMZX8xQYNQ9KqKCmNs3hrwaU3KzYnKymLPTD-VDkQfW1g.webp'
    WHERE m_name = '용화산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.ulsanpress.net/news/photo/202107/381475_165131_4823.jpg'
    WHERE m_name = '운문산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://t1.daumcdn.net/cfile/tistory/260C654955F4DC0F34'
    WHERE m_name = '운악산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://jinan.go.kr/tour//upload/images/main_contents_1478670597.jpg'
    WHERE m_name = '운장산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/7np1H5Qa8maiQ6v7L1pBgByzOuUMqwPHX9ffXyqn95oOeqDud3ZSEdGz9LSGbj2bSWh9FmSxOcujmdNZE8EYhk2dfLjyTVeHws--oX7ACwE3gS12OITaGA2-kh4dmeFR3i3sMWlGCCacgP1JMKki5Q.webp'
    WHERE m_name = '월악산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/13jlQqjBed99Pp5L5jJTLgA046nSzpPO_ugfTCNwWXMP1YDv4nQ7Ejk-mEUorrUS7rZiJmFgZKNYWsYtOzYmzd5FBIP8K7lit73dvCw4lkhWLw6q5Vhus-ih_jiOMQEzYVlxEHG3Vz6eJvlfqLWdVQ.webp'
    WHERE m_name = '월출산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/IrX8zTzupHTsqIdNW8KJRmAJdLnTWtKSZI1Gm6j1RVS8xPhn36MUtBDeJ6KBrj8a0QUMs0Zw6KRxGe2TNuQHp43kuwU2rJ_1oHYtq9rIbbTLghiKhZcJv4opZfTyXHSH1kF602IStSPuk5dnSWnCfw.webp'
    WHERE m_name = '유명산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.san.chosun.com/news/photo/201712/11425_47447_5335.jpg'
    WHERE m_name = '응봉산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20150901_277%2F1441045630437IsYan_JPEG%2F13491468_0.jpg'
    WHERE m_name = '장안산';

-- 산 사진 추가 71 ~ 80
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.idomin.com/news/photo/202110/774584_456142_1021.jpg'
    WHERE m_name = '재약산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.ttlnews.com/upload/editor_content_images/1632730421332_editor_image.wm.jpg'
    WHERE m_name = '적상산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.foresttrip.go.kr/portal/images/content/route/jumbongsan-img2.jpg'
    WHERE m_name = '점봉산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://mblogthumb-phinf.pstatic.net/MjAyMDA4MjJfMjc2/MDAxNTk4MDc0Njg1OTA4.oeeX6AvAbnhZ_BQacNdjO2jGD08VPG5YOy3v_TDTPWsg.b_zCqEi38TXFM3fddsXl3PL7vWRoHUqlh5dfnmP5km4g.JPEG.ihappy4080/1598074681103.jpg?type=w800'
    WHERE m_name = '조계산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/TnAXWbiFEXzeuJ1_G0u-fc5yxXqkBHeEdPDBXpTQnxZcJjWCi_BOREcQsx73hRNML8SrqH3AJlSn0LlY86QvlBgaRST1z59aUmcMldRmAtunvqO9PZ5OAQkMOYPDzJu72AH-bmDVk-7eSi3PhpEb3Q.webp'
    WHERE m_name = '주왕산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/7nkSNU51ezhuj1iBDtayF8Z2Rc-RxW8tc6N8QZ8aLJxA3OkqwPuM6s-Gx-HSBH80RleK2z_E_K1BJC7GNhng4z4nr2OG35xwbOYKDmnP5kuObv5q-qwDC5CRfE2ZfP2L8z4CyNSIDIh-31fUAtUGSw.webp'
    WHERE m_name = '주흘산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/8Bvagl1seJqmkxVeZhkdxo1-CxXu_9XpzNL4vHmX-4K407wLb5GsiBUzqjyyNmLobbC-TT1R91j2_lZXj5wlkVemGX9SIjtIiX78E04LNQqzQ8Nih21kCNXZPxXcPdEo2nB8DI8T49JsEogQmIimkg.webp'
    WHERE m_name = '지리산(통영)';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/IeU1rNr8sLF9WWFUJ2gYIO4EzBSCc9gRtUpIca02GHlqAI7FhkPmn_3dz64rGpkAMe5OWfb6J1Y3q-Ynt7i1ZXC45kggssU2vlIV7L4TdwPZU6QcMPlleSG5LQYnt5BRm9ddW2962WJGjm3JWA9sVA.webp'
    WHERE m_name = '지리산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.jangheung.go.kr/contents/14500/hiking.jpg?build_20230722001'
    WHERE m_name = '천관산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.gokseong.go.kr/tour/build/images/1550/15501348/1550134848.jpg/500x334x85/500x334_1550134848.jpg'
    WHERE m_name = '천마산';

-- 산 사진 추가 81 ~ 90
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/XF4duV7bo_mTM6qQzLsCNOl-ic3Y2nd6owXX63PTMNccCjerNKc9HDgZ05JPnuLX9h02BFtPCALPT0Dg6llfDSbf1aNzCjvk9rS3JIVSOHa0yZmwBplVmDXsVCNCkhC-iHg78tLK3D5lU5aS6dDr8Q.webp'
    WHERE m_name = '천성산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://image.newsis.com/2022/07/26/NISI20220726_0001050329_web.jpg?rnd=20220726161312'
    WHERE m_name = '천태산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/mH2XAA6jsuS2-L-rU6UIj_z3e6wZvypEKJiFNkAlm1DgLPZTQVixZbxmDCF7K7a_9am-Wbd6fxrqHorc7C0ZNjJqCpVMqIOJOcFPd_3QaPx9-Chdvk_rMFykv8gyZazrg82n7qLqoZPxQ7I3rm0Hlw.webp'
    WHERE m_name = '청량산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.heritage.go.kr/unisearch/images/monument/1653940.jpg'
    WHERE m_name = '추월산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://t1.daumcdn.net/cfile/blog/99476E3B5D6DD7D123'
    WHERE m_name = '축령산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/iuYl2yxPkuLfbxU6ggd6gZ8qKFb4Fg14jWiepAWTitTtiZzmEJKWb1ghzunw_ZbuwHr3EOnVGO-gWAHgjte8Iq8CYuf4NCOKfFYTwHlD0Z6zpdGAY07F6ffnDTvjJ6IGfuJBec788gJAzlNle__r1Q.webp'
    WHERE m_name = '치악산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'http://청양펜션회룡대별장.com/files/attach/images/906/027/001/482e921fdee22d108986452c9fc29a0f.jpg'
    WHERE m_name = '칠갑산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/P_NF7YEUNdxX7gFgUqkPivDS2ZHsp1R0Ezf5yTMsPGzJac6mSK_hQoBxFxlObrmxtoducuAZdnDOOVdkYH-sTxMgN4J7BoezDKpKpDgvxXAlIlec59McD00kCcozSG8Fy_XTwwswsGvw5kdF5plOKg.webp'
    WHERE m_name = '태백산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.sansan.co.kr/news/photo/202107/20047_20009_237.jpg'
    WHERE m_name = '태화산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'http://photo.sentv.co.kr/photo/2021/10/28/20211028095404.jpg'
    WHERE m_name = '팔공산';

-- 산 사진 추가 91 ~ 100
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.hongcheon.go.kr/site/tour/images/contents/cts1816_img2-1.png'
    WHERE m_name = '팔봉산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://soso-k.com/wp-content/uploads/kboard_attached/2/201904/5caed54f9f1711505833.jpg'
    WHERE m_name = '팔영산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/g9ycAQH9-gpykjbQoFRt0bCVbImbBKPQ4lBRXZg8vXU48L2ikCmEYrksFKMWIdYGOBmk7jpZDEJmC2d-pJoWnhn5jbchPQG7-24gj_Jyzmt4Lz_Oc6AVRqBmyMUQXRpHUBfcoARIljngCdXZR-5dZA.webp'
    WHERE m_name = '한라산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/FrjXnNawU1Bh8m0aJnAgmSf51RUBr8rw5DQPmZ0-TPWKORTMlY8M2Y9sBfbNzmVp7P0qW92h6HfA074Wf9wHb3o_Fyr1tQvG9n2fXKGGylRVcyYEZelJ01CIfg2_flyjx_ejXcg_I0n_hE81eZjTww.webp'
    WHERE m_name = '화악산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://i.namu.wiki/i/kFK5JSX_W9HXaSQsVfRVRGODoPGh6e4HykFIkuDFu6-4WR_q2RZmrmocqtPdSdEL9RB0Sbie8qJgSZ-bmuCmZckugIcEzaXJxK1ZdQRNxwpbBcuyJXQ3OvD5T-ELbMOJzytUNCfjNeX7dflQ40CDfA.webp'
    WHERE m_name = '화왕산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'http://www.ktsketch.co.kr/news/photo/202304/7503_38205_4518.jpg'
    WHERE m_name = '황매산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://mblogthumb-phinf.pstatic.net/MjAxNzA1MjJfODQg/MDAxNDk1NDUzNjgwNzcw.XtwkH1HnQMFoyIljTpG5iu8PSFOt-63JO57xToRatlYg.HqMDfRe8_uVczZWF5N9gyckOkPPloiyznuysSm_zh1Mg.JPEG.kh4563/DSC06990.JPG?type=w800'
    WHERE m_name = '황석산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.kbmaeil.com/news/photo/201501/342291_762706_2421.jpg'
    WHERE m_name = '황악산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://img.khan.co.kr/news/2009/03/24/20090325.01100121000003.01L.webp'
    WHERE m_name = '황장산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://cdn.ibulgyo.com/news/photo/202106/212395_226170_459.jpg'
    WHERE m_name = '희양산';
    
    
-- 산 상세설명 추가
-- 산 상세설명 추가 1 ~ 10
UPDATE soldesk_mountain_tb
    SET m_detail = '가리산(加里山)은 강원특별자치도 춘천시와 홍천군에 걸쳐 있는 산이다.

대체로 육산이고, 홍천강의 발원지 및 소양강의 수원(水源)을 이루고 있다.'
    WHERE m_name = '가리산';
UPDATE soldesk_mountain_tb
    SET m_detail = '가리왕산(加里王山)은 강원특별자치도 정선군과 평창군에 걸쳐 있는 산이다.오대산의 남쪽에 있으면서 높이도 비슷하여 오대산과 더불어 태백산맥의 지붕노릇을 하고 있다.

전형적인 육산이며 능선에는 고산식물인 주목, 잣나무, 단풍나무등 각종 수목이 울창하다.

갈왕(葛王)이 난을 피하여 숨어든 곳이라 하여 갈왕산(葛王山)이라 불리다가 일제 강점기를 거치면서 가리왕산(加里王山)으로 불리고 있다. 정선아리랑의 고장이다.

지금은 가리왕산 안에 국립 자연 휴양림이 있으며 예약은 국립휴양림(www.huyang.go.kr/)에서 이용 가능하다'
    WHERE m_name = '가리왕산';
UPDATE soldesk_mountain_tb
    SET m_detail = '가야산(伽倻山)은 대한민국 경상북도 성주군과 경상남도 합천군, 거창군에 걸쳐 있는 산이다.

가야산은 예로부터 소백산, 오대산과 함께 삼재(화재, 수재, 풍재)가 들지 않은 산으로 알려져 왔다.

지질은 화강편마암 및 화강암으로 이루어져 있고, 한국의 3대 사찰 중 하나인 해인사와 신촌락(新村落)이 있는 치인리골과 홍류동계곡은 화강암 침식곡이다.'
    WHERE m_name = '가야산';
UPDATE soldesk_mountain_tb
    SET m_detail = '가지산(迦智山)은 울산광역시 울주군과 경상남도 밀양시, 경상북도 청도군의 경계에 있는 산이다. 1979년 11월 5일에 도립공원으로 지정되었다.

동쪽 산기슭에는 신라 헌덕왕 16년에 도의국사가 창건했다는 석남사가 자리잡고 있다. 보물 369호 도의국사의 부도와 3층 대석탑 등 유물이 보존되어 있다.'
    WHERE m_name = '가지산';
UPDATE soldesk_mountain_tb
    SET m_detail = '감악산(紺岳山)은 경기도 파주시, 양주시, 연천군 사이에 있는 높이 675m의 산이다. 예부터 바위 사이로 검은빛과 푸른빛이 동시에 쏟아져 나온다하여 감악(紺岳), 즉 감색 바위산이라 불렀다.'
    WHERE m_name = '감악산';
UPDATE soldesk_mountain_tb
    SET m_detail = '강천산(剛泉山)은 전라북도 순창군과 전라남도 담양군의 경계에 있는 높이 583.7m의 산이다. 1981년 1월 7일에 첫 번째 군립공원으로 지정되었다.

사적 353호, 금성산성(金城山城) 등의 문화재가 산재해 있다. 이 산성은 삼국시대에 축조되었고, 조선 태종 9년(1409년)에 고쳐 쌓은 후 광해군 2년(1610년)에 보수공사를 하면서 내성도 함께 만들었다. 광해군 14년(1622년)에는 내성 안에 관청을 건립하고 효종 4년(1653년)에 성 위의 작은 담(여장)을 수리하면서, 전반적으로 성의 면모를 갖추게 되었다. 외성은 2km, 내성은 700ｍ 길이에 돌로 쌓은 산성이다. 동학 농민 운동 때 건물이 많이 불타 없어지고 현재는 동·서·남·북문의 터가 남아 있다. 내성 앞에는 국문영 장군의 비석이 남아 있다.'
    WHERE m_name = '강천산';
UPDATE soldesk_mountain_tb
    SET m_detail = '계룡산(鷄龍山)은 충청남도 공주시와 논산시, 계룡시 그리고 대전광역시 유성구에 걸쳐 있는 높이 845m의 산이다. 1968년 12월 31일에 2번째 국립공원으로 지정되었다.

계룡산은 충청지역에서 대표적인 산이나 높이나 면적에서 최고나 최대는 아니다. 계룡산의 천황봉과 연천봉, 삼불봉을 잇는 능선이 닭의 볏을 쓴 용을 닮았다하여 계룡산이라는 이름이 붙여졌다. 최고봉인 천황봉의 높이는 해발 845m이고 계룡산 전체면적은 65.335km2이다. 계룡산 기슭에는 동학사, 갑사, 신원사 등 유명한 사찰이 있으며, 국어교과서에 소개되었던 남매탑이 있다. 계룡산의 남쪽 지역인 신도안은 조선 왕조 개국 직전 도읍 후보지로 꼽히기도 했다. 계룡산은 국립공원으로 지정되어 있으며, 그 구역은 3개로 나뉘는데 동학사지구, 갑사지구, 신원사ㆍ수통골지구이다.'
    WHERE m_name = '계룡산';
UPDATE soldesk_mountain_tb
    SET m_detail = '계방산(桂芳山)은 강원특별자치도 평창군과 홍천군 사이에 있는 높이 1,577m의 산이다.

주목, 철쭉 등이 군락을 이루고 있어 일대가 생태계 보호지역으로 지정되었다.

정상의 동남쪽 아래 방아다리약수터 일대의 수만 평에 조성한 낙엽송 전나무 숲과 주목 군락은 일찍이 여느 산에서 찾아볼 수 없는 장관이기도 하다.

약수터와 이승복기념관이 있고 접근로도 좋은 편이어서 찾는 이가 많다.'
    WHERE m_name = '계방산';
UPDATE soldesk_mountain_tb
    SET m_detail = '공작산(孔雀山)은 강원특별자치도 홍천군에 있는 높이 887m의 산이다. 이곳 산기슭에는 수타사가 있다.'
    WHERE m_name = '공작산';
UPDATE soldesk_mountain_tb
    SET m_detail = '관악산(冠岳山)은 서울특별시 관악구·금천구와 경기도 안양시·과천시의 경계에 있는 높이 632 m의 산이다. 한남정맥이 수원 광교산에서 북서쪽으로 갈라져 한강 남쪽에 이르러 마지막으로 우뚝 솟아 있다. 관악이란 이름은 산의 모양이 마치 ''삿갓(冠)''처럼 생겼기 때문에 붙여진 이름이다. 산의 최고봉은 현재 기상관측소 옆 연주대 불꽃바위(632m)이다.

우암 송시열은 최치원의 광분첩석을, 추사 김정희는 신위의 호인 단하시경을 암각하는 등 많은 학자들과 문인들이 산의 빼어난 산세를 예찬한 바 있다. 관악산은 바위봉우리가 많고 계곡이 깊어 언제 찾아도 산행의 재미를 느낄 수 있는 산으로 꼽힌다. 도심에서 가깝고 교통이 편리해 연평균 700여만 명의 등산객이 찾는다.'
    WHERE m_name = '관악산';

-- 산 상세설명 추가 11 ~ 20
UPDATE soldesk_mountain_tb
    SET m_detail = '구병산(九屛山)은 충청북도 보은군 마로면과 경상북도 상주시 화북면에 걸쳐 있는 높이 876m의 산이다. 또한 구병산은 속리산 국립공원의 남쪽에 위치하면서 국도 변 가까이 위치해 있다. 그리고 주능선이 동쪽에서 서쪽으로 길게 이어지면서 마치 병풍을 두른 듯 아홉 개의 봉우리가 이어져 있으므로 구병산 또는 구봉산(九峰山)이라고도 불린다'
    WHERE m_name = '구병산';
UPDATE soldesk_mountain_tb
    SET m_detail = '금산(錦山)은 경상남도 남해군 상주면에 있는 높이 681m의 산이다. 원래는 원효가 이 산에 보광사라는 절을 세웠기 때문에 ''보광산''이라고도 불렸지만, 이성계가 비단을 덮었다고 해서 조선 시대부터 금산이라고 불리게 되었다.

다도해에서 유일하게 체적이 큰 화강암 산임에도 불구하고 토산 성격이 강해 남해안에서 가장 큰 규모의 낙엽수 군락을 이루고 있다.'
    WHERE m_name = '금산';
UPDATE soldesk_mountain_tb
    SET m_detail = '금수산(錦繡山)은 충청북도 단양군 적성면과 제천시에 걸쳐 있는 높이 1,016m의 산이다. 백암산 (白岩山)이라고도 불렸는데, 이황이 군수 재임시에 그 경치가 ''비단에 수를 놓은것 같다''하여 금수산으로 바뀌었다고 한다. 이 산을 바짝끼고 충주호의 푸른 물이 감싸고 돌기 때문에 주변경관도 아름답지만 이름 그대로 마치 비단에 수를 놓은 듯 기암절벽을 이룬 능선과 깊은 골짜기가 어울린 아름다운 산세가 처음부터 눈길을 사로잡는다.'
    WHERE m_name = '금수산';
UPDATE soldesk_mountain_tb
    SET m_detail = '금오산(金烏山)은 대한민국 경상북도 구미시, 칠곡군, 김천시에 걸쳐 있는 높이 976m의 산이다. 전체 면적은 37.65제곱킬로미터이며 동쪽에 최고봉인 현월봉을 비롯해 약사봉(958m), 보봉(933m) 등이 솟았고 남쪽에는 만봉(873m), 서쪽에는 서봉(851m)이 자리한다.시생대와 원생대에 속하는 화강편마암과 화강암으로 이루어져 있으며, 암석이 노출된 화강암 부분이 많고 화강편마암이 일부 산재해 있다.

1970년 6월 1일에 도립공원 제1호로 지정되었다. 영남팔경의 하나로 불리며, 자연보호운동의 발상지이기도 하다. 2001년 5월 10일에 대한민국 최초로 ISO로부터 환경관리분야 국제표준인증 ISO 14001을 획득하였다.'
    WHERE m_name = '금오산';
UPDATE soldesk_mountain_tb
    SET m_detail = '금정산(金井山)은 부산광역시 금정구·북구와 양산시 동면과의 경계에 있는 산이다. 이 산을 따라서 부산광역시와 양산시의 경계가 결정되며, 가장 높은 지점은 고당봉은 801.5 미터이다.

많은 사람들이 등산을 하며 주말에 많이 온다. 정상은 케이블 카를 통해서 갈 수 있다. 다양한 등산로가 있는데, 명륜역 근처의 금강공원에서 올라가거나, 온천장역 근처에서 버스를 타고 산성마을로 가거나 화명역, 수정역, 덕천역 근처에서 버스를 타고 산성마을로 가는 방법이 있다.

금정산에는 금정산성과 범어사가 있다. 또한 양산시 방면으로는 호포역과 호포차량사업소가 위치하고 있다'
    WHERE m_name = '금정산';
UPDATE soldesk_mountain_tb
    SET m_detail = '깃대봉(-峯)은 전라남도 신안군 홍도에 있는 산이다. 봉우리가 깃대 모양의 바위로 이루어져 깃대봉으로 부르며, 홍도의 최고봉이다. 홍도 남쪽에 해발 232m의 양산봉이 있다. 2002년 대한민국 산림청이 100대 명산의 하나로 지정했다. 덩굴사철과 식나무, 동백림 등이 자생하는 등 생태적 가치가 커서 1965년 섬 전체가 천연보호구역으로 지정된 홍도천연보호구역에 속해 있다.'
    WHERE m_name = '깃대봉';
UPDATE soldesk_mountain_tb
    SET m_detail = '남산(南山)은 경상북도 경주시 인왕동, 탑동, 배동, 내남면에 걸쳐있는 산이다. 북쪽의 금오봉(金鰲峰, 468m)을 금오산(金鰲山), 남쪽의 고위봉(高位峰, 494.6m)을 고위산(高位山)으로, 각각 독립된 이름으로 부르기도 한다.

보물 제913호인 용장사지 마애여래좌상 등 불상 80여 체, 탑 60여 기, 절터 110여 개소가 산 곳곳에 흩어져 있다.'
    WHERE m_name = '남산';
UPDATE soldesk_mountain_tb
    SET m_detail = '내연산(內延山)은 경상북도 포항시와 영덕군에 걸쳐있는 산이다. 12개의 폭포를 보유하고 있다. 영화 《가을로》의 한 부분이 연산폭포에서 촬영되었다. 내연산의 최고봉인 향로봉은 높이가 930m이다.'
    WHERE m_name = '내연산';
UPDATE soldesk_mountain_tb
    SET m_detail = '내장산(內藏山)은 전라북도 정읍시와 순창군 경계에 있는 산이다. 호남 지방의 5대 명산(지리산·월출산·천원산·방장산)과 한국 팔경 중 하나로서 500여 년 전부터 단풍 명소로 널리 알려졌으며, 내장사가 있다. 1969년 1월 21일 관광지로 널리 지정되었으며 1971년 11월 17일 국립공원으로 지정되었다. 단풍 성수기에는 하루 10만의 인파가 단풍을 보기 위해 내장산을 찾는 외에 연중 100만 이상의 관광객이 내장산을 찾고 있다. 봄에는 푸른 신록 사이로 피어나는 벚꽃의 아름다움과 여름에는 푸른 산록, 가을은 불타는 단풍, 겨울에는 설경의 아름다움으로 4계절 관광명소이다.'
    WHERE m_name = '내장산';
UPDATE soldesk_mountain_tb
    SET m_detail = '대둔산(大芚山)은 충청남도 논산시, 금산군과 전라북도 완주군에 걸쳐 있는 산이다. 논산시에 가장 많은 면적이 속해 있다. 호서 지방과 호남 지방을 구분하는 자연적 경계이다. 충청남도 토박이들은 예로부터 한듬산이라고 불렀고, 대둔산의 명칭은 이를 한자화한 것이다. 1977년 3월 전라북도 완주군 운주면의 38.1km2가 전라북도 도립공원으로 지정되었고, 1980년 5월 충청남도 논산시 벌곡면·양촌면과 금산군 진산면 일대의 24.54km2가 충청남도 도립공원으로 각각 지정되었다.

동북쪽으로 유등천, 북쪽으로 갑천, 서쪽으로 논산천 등 금강의 지류가 흐른다. 동·남·북의 3면에서 오랜 두부침식을 받아 기괴석을 이루고, 협곡을 따라 대전~전주 간 17번 국도가 지난다.

해발 878m의 마천대를 중심으로 뻗어내린 웅장한 산세와 기암괴석이 병풍처럼 펼쳐져 절경을 이루고 있다. 낙조대·월성고지·매봉·철모·깃대봉 등의 경승지가 있고, 구름다리·케이블카 등의 관광시설이 있다. 임금바위와 입석대를 잇는 높이 81m, 폭 1m의 금강 구름다리가 있다. 1977년 도립공원 지정하면서 처음 만들어졌고, 1985년과 2021년 두 차례에 걸쳐 다시 만들어졌다. 금강 구름다리를 건너면 약수정이 나오고 여기서 삼선다리(삼선계단 1985년 건설)를 타면 왕관바위로 간다. 봉우리마다 한폭의 산수화로 그 장관을 뽐내는 대둔산은 낙조대와 금강폭포, 동심바위, 금강계곡, 삼선약수터, 옥계동 등이 절경을 이룬다. 충청남도 금산군 진산면에는 신라시대 사찰인 태고사가 있고, 전라북도 완주군 운주면에는 안심사가 있으며, 충청남도 논산시 벌곡면에는 수락계곡, 선녀폭포와 충남경찰청에서 건립한 대둔산 승전탑이 있다.'
    WHERE m_name = '대둔산';

-- 산 상세설명 추가 21 ~ 30
UPDATE soldesk_mountain_tb
    SET m_detail = '대암산(大岩山)은 강원특별자치도 인제군과 양구군에 걸쳐 있는 높이 1,310m의 산이다.

대우산과 함께 대암산·대우산 천연보호구역으로 지정되었으며, 지정된 지역은 분지·습원등 지형적으로 다양한 특징을 지니고 있고, 기후 조건이 특이하여 희귀 동·식물이 서식하고 있다.

식물의 종류는 총 59과 123종으로 그중 고층 습원의 특유종이 19종, 미기록종 15종이 알려져 있는 생물의 보고이다.

또한 동식물의 남북한계·동서 구분의 현상이 나타나는 등 식물생태학·식물지리학적·식물분류학적 연구 가치가 매우 클 뿐만 아니라 다양한 동물상, 특이한 지형·지세 및 기후적 특성 등 다양한 자연 환경을 가지고 있어 쳔연기념물로 지정·보호하고 있다.

정상은 통제구역으로 등산은 생태식물원을 들머리로 한 정상 서남쪽 능선 코스만 가능하다.'
    WHERE m_name = '대암산';
UPDATE soldesk_mountain_tb
    SET m_detail = '대야산(大耶山)은 속리산 국립공원 안에 있는 산으로, 경상북도 문경시 가은읍과 충청북도 괴산군 청천면의 경계에 있다.

대하산·대화산·대산·상대산 등으로도 불렸고, 1789년에 발행된 《문경현지》는 대야산으로 적고 있다. 용추계곡의 양쪽 옆 바위에는 신라시대 최치원이 쓴 세심대·활청담·옥하대·영차석 등의 글씨가 음각으로 새겨져 있다.'
    WHERE m_name = '대야산';
UPDATE soldesk_mountain_tb
    SET m_detail = '덕숭산(德崇山)은 충청남도 예산군 덕산면에 있는 산이다.

높이는 495m. 수덕산(修德山)이라고도 하며, 이곳에는 가요 ''수덕사의 여승''으로 널리 알려진 수덕사(修德寺)가 있다.'
    WHERE m_name = '덕숭산';
UPDATE soldesk_mountain_tb
    SET m_detail = '덕유산(德裕山)은 전라북도 무주군·장수군과 경상남도 거창군 ·함양군에 걸쳐 있는 높이 1,614m의 산이다. 1975년 2월 1일 10번째로 국립공원으로 지정되었다.

덕유산의 깃대종에는 한국의 특산 동 · 식물인 구상나무, 금강모치가 있다.'
    WHERE m_name = '덕유산';
UPDATE soldesk_mountain_tb
    SET m_detail = '덕항산(德項山)은 강원특별자치도 삼척시 신기면과 하장면에 걸쳐 자리하고 있는 높이 1,071m의 산이다. 산 중턱에 지하 금강산이라 불리는 동양 최대 크기의 석회암 동굴인 환선굴이 있어 천연기념물 제178호로 지정되어 있다.'
    WHERE m_name = '덕항산';
UPDATE soldesk_mountain_tb
    SET m_detail = '도락산(道樂山)은 충청북도 단양군에 있는 높이는 964m의 산이다. 소백산과 월악산의 중간쯤에 형성된 바위산으로 현재 일부가 월악산 국립공원에 포함되어 있다.

산의 이름은 우암 송시열이 깨달음을 얻는데는 나름대로 길이 있어야하고 거기에는 필수적으로 즐거움이있어야 한다는 뜻에서 지었다는 일화가 전해온다.

산을 끼고 북으로는 사인암이, 서로는 상선암. 중선암.하선암 등 이른바 단양 8경의 4경이 인접해있으므로 주변 경관이 더욱 아름답다.'
    WHERE m_name = '도락산';
UPDATE soldesk_mountain_tb
    SET m_detail = '도봉산(道峰山, 영어: Dobongsan)은 서울특별시 도봉구와 경기도 의정부시 호원동, 양주시 장흥면에 걸쳐 있는 산이다. 북한산 국립공원의 일부이다.

백두대간의 분수령에서 서남쪽으로 뻗은 한북정맥의 연봉을 따라 운악산·불곡산을 거쳐 남서쪽으로 내려오다가 서울 동북쪽에서 우뚝 솟아 우이령을 경계로 북한산으로 이어진다. 최고봉인 자운봉(紫雲峰, 739.5m), 남쪽으로 만장봉(萬丈峰)·선인봉(仙人峰), 서쪽으로 오봉(五峰)·여성봉이 있다.'
    WHERE m_name = '도봉산';
UPDATE soldesk_mountain_tb
    SET m_detail = '두륜산(頭輪山)은 전라남도 해남군에 있는 산이다. 가련봉(703m), 두륜봉(630m), 고계봉(638m), 노승봉(능허대 685m), 도솔봉(672m), 혈망봉(379m), 향로봉(469m), 연화봉(613m)의 8개 봉우리가 능선을 이루고 있다. 대흥산·대둔산이라고도 부른다.

난대성 상록활엽수와 온대성 낙엽 활엽수들이 숲을 이루고 있어 식물분포 학상 중요한 가치를 지니고 있다. 1979년 12월 26일에 도립공원으로 지정되었다.

정상 부근의 북미륵암에 보물 301호 대흥사 북미륵암삼층석탑이 세워져있는데, 2단의 기단(基壇) 위에 3층의 탑신(塔身)을 세운 모습이다.'
    WHERE m_name = '두륜산';
UPDATE soldesk_mountain_tb
    SET m_detail = '두타산(頭陀山)은 강원특별자치도 동해시 삼화동과 삼척시 하장면, 미로면에 걸쳐 있는 산이다. 부처가 누워있는 형상으로 박달령을 사이에 두고 청옥산을 마주 보고 있다. 입구에서 삼화동 남쪽으로 4km쯤 계곡을 들어가면 관광 코스로 유명한 무릉계곡이 나온다. 현재 위도상 동경 129°1′, 북위 37°26′에 위치하여 강원도 중간 산악에 있다. 높이는 1,353m이다.'
    WHERE m_name = '두타산';
UPDATE soldesk_mountain_tb
    SET m_detail = '마니산(摩尼山)은 인천광역시의 강화도에 있는 해발 472.1 m의 산이다.

《고려사》,《세종실록지리지》,《태종실록》 등에는 머리, 우두머리라는 뜻의 마리산(摩利山) 또는 두악(頭嶽)이라고 기록하고 있는데, 마리(摩利)는 머리의 중세 동형어인 마리의 취음표기이다.

산 꼭대기에는 제단인 참성단이 있으며, 전국체육대회 성화를 이곳에서 채화한다.'
    WHERE m_name = '마니산';

-- 산 상세설명 추가 31 ~ 40
UPDATE soldesk_mountain_tb
    SET m_detail = '마이산(馬耳山)은 전라북도 진안군 진안읍에 있는 산이다. 1979년 10월 16일 도립공원으로 지정되었고, 2003년 10월 31일 대한민국의 명승 제12호로 지정되었다.

이 산은 신라 시대에는 서다산(西多山), 고려 시대에는 용출산(龍出山), 조선 초기에는 속금산(束金山)이라고 불렀으며, 태종 때부터 본격적으로 말의 귀를 닮았다 하여 마이산이라 불리어 왔다.

중생대 후기 약 1억년전까지 호수였으나 대홍수시 모래, 자갈 등이 물의 압력에 의하여 이루어진 수성암으로 약 7천만년 전 지각 변동으로 융기되어 지금의 마이산이 이루어졌으며 지금도 민물고기 화석이 간혹 발견된다.'
    WHERE m_name = '마이산';
UPDATE soldesk_mountain_tb
    SET m_detail = '명성산 (鳴聲山)은 대한민국 강원특별자치도 철원군 갈말읍과 경기도 포천시의 경계에 있는 높이 923m의 산이다.'
    WHERE m_name = '명성산';
UPDATE soldesk_mountain_tb
    SET m_detail = '명지산(明智山)은 경기도 가평군 북면 하면에 걸쳐 있는 높이 1,267m의 산이다. 1991년 10월 9일에 군립공원으로 지정되었다.'
    WHERE m_name = '명지산';
UPDATE soldesk_mountain_tb
    SET m_detail = '모악산(母岳山)은 전라북도 김제시와 완주군에 걸쳐있는 높이 793m의 산이다. 1971년 12월 1일에 도립공원으로 지정되었다. 모악산 도립공원 입구에는 백제 법왕 원년에 창건된 금산사 절이 있다.

2002년 10월 산림청이 모악산을 대한민국 100대 명산 중 하나로 선정하였다.

모악산 정상에 있는 구조물은 방송사 송신탑(JTV, KBS전주)으로 1977년 KBS전주방송국이 TV방송 전파송출을 위해 세워졌고 이후에 모악산 정상 복원을 위해 철거해야 한다는 지적을 받아 오다가 2008년 송신탑 옥상이 일반에 개방되었다.'
    WHERE m_name = '모악산';
UPDATE soldesk_mountain_tb
    SET m_detail = '무등산(無等山)은 대한민국 광주광역시 및 전라남도 화순군 · 담양군에 걸쳐 있는 해발 1,187m의 산이다. 1972년 5월 22일에 도립공원으로 지정되었으며, 2013년 3월 4일, 국립공원으로 지정되었다. 대한민국 21번째 국립공원이며 1988년 변산반도·월출산 이후 24년 만의 신규 지정이었다. 정상은 천왕봉이나 1966년 공군부대가 주둔해서 정상 부근이 군사시설 보호구역으로 통제되는 바람에 일반 등산객이 올라갈 수 있는 가장 높은 지점은 서석대(해발 1,100m)다.

천왕봉 남쪽의 지공너덜과 증심사 동쪽의 덕산너덜은 다른 산에서 볼 수 없는 경관을 연출하고 있다. 정상에서 바라보면 제주도에 있는 한라산과 경상남도 남해에 있는 거제도가 보인다.'
    WHERE m_name = '무등산';
UPDATE soldesk_mountain_tb
    SET m_detail = '무학산(舞鶴山)은 경상남도 창원시 서쪽의 마산회원구와 마산합포구를 병풍처럼 둘러싸고 있으며, 크고 작은 능선과 여러 갈래의 계곡으로 이루어진 산이다. 특히 동쪽의 서원곡 계곡이 무성한 수목과 경관으로, 창원 시민들이 즐겨 찾는 휴식처가 되고 있다. 옛 마산시에서 관광객 유치 홍보를 위해 선정한 9경(景) 5미(味) 중 9경의 하나이기도 하다.

신라 말기에 이곳에 머무르던 최치원이 산을 보고는 학이 나는 형세라고 했다고 해서 이때부터 무학산으로 불렀다고 하며, 원래 이름은 풍장산이었다고 한다. 마산시내 어느 곳에서도 쉽게 무학산을 등산할 수 있는데, 700m급의 산이 이처럼 도심과 인접해 있는 경우도 보기 힘들 것 같다.'
    WHERE m_name = '무학산';
UPDATE soldesk_mountain_tb
    SET m_detail = '미륵산(彌勒山)은 대한민국 경상남도 통영시 봉평동에 있는 해발 461m의 산이다. 2002년 ‘세계 산의 해’를 맞아 산림청이 지정한 《100대 명산》으로 선정되었다.'
    WHERE m_name = '미륵산';
UPDATE soldesk_mountain_tb
    SET m_detail = '민주지산(岷周之山)은 대한민국 충청북도 영동군, 전라북도 무주군, 경상북도 김천시의 경계에 있는 높이 1,242m의 산이다. 충청·전라·경상, 삼도를 가르는 삼도봉을 거느린 명산으로 옛 삼국 시대는 신라와 백제가 접경을 이루었던 산이기도 하다. 이 산을 중심으로 북쪽으로는 충북 영동군의 절경 물한리 계곡과 경북 김천시 황악산 기슭의 직지사가 유명하고, 동남쪽으로는 마애삼두불의 미소를 머금은 해발 1,200m의 석기봉과 태종 14년(1414년) 전국을 8도로 나눌 때 삼도의 분기점이 된 해발 1,181m의 삼도봉이 웅거하여 삼남을 굽어보며, 《동국여지승람》과 《대동여지도》에는 백운산(白雲山)으로 기록되어 있으나 일제강점기에 민주지산으로 바뀌었다.'
    WHERE m_name = '민주지산';
UPDATE soldesk_mountain_tb
    SET m_detail = '방장산(方丈山)은 전라북도 고창군과 전라남도 장성군에 걸쳐 있는 산이다. 높이는 743m이다.

옛 이름은 반등산(半登山, 半燈山) 또는 방등산(方登山, 方等山)으로, 지리산, 무등산과 함께 호남의 삼신산으로 불려 왔다.'
    WHERE m_name = '방장산';
UPDATE soldesk_mountain_tb
    SET m_detail = '방태산(芳台山)은 강원특별자치도 인제군에 있는 산이다. 가칠봉(1,241m), 응복산(1,156m), 구룡덕봉(1,388m), 주걱봉(1,444m) 등 고산준봉을 거느리고 있다.

인제군과 홍천군의 경계를 이루고, 북쪽으로 설악산, 점봉산, 남쪽으로 개인산과 접하고 있다. 긴 능선과 깊은 골짜기를 뻗고 있는 풍광이 뛰어나 《정감록》 산세에 대해 여러 번 언급하고 있다.

높이 1,300m를 넘는 봉우리만도 8개에 이르고 산아래 남쪽으로는 개인약수가, 북쪽으로는 방동약수가 유명하다.'
    WHERE m_name = '방태산';

-- 산 상세설명 추가 41 ~ 50
UPDATE soldesk_mountain_tb
    SET m_detail = '백덕산(白德山)은 강원특별자치도 영월군과 평창군 사이에 있는 차령산맥 줄기의 이름난 산이다. 능선 곳곳에 절벽이 깎아지른 듯 서 있고, 바위 틈에서 자라는 소나무는 분재와 같이 장관을 이루고 있다.

해발 800m 이상에는 천연침엽수와 활엽수의 혼합림으로 이루어져 있으며 멧돼지와 꿩이

많아 사냥터로서도 널리 알려진 곳이다.'
    WHERE m_name = '백덕산';
UPDATE soldesk_mountain_tb
    SET m_detail = '백암산(白巖山)은 전라북도, 전라남도의 내장산(內藏山) 줄기에 있는 산이다. 암석이 모두 흰색이라 백암산이라 하였다. 산 아래에 백양사가 있어서 백양산(白羊山)으로 아는 경우도 있다.

내장산 국립공원에 속해 있으며, 높이는 741미터이다. 한국 8경 중의 하나로 선정된 명승지로, ''가을의 내장''에 대하여 ''봄의 백양''이라 할 만큼 봄 경치가 아름답다. 산 속에는 천연기념물인 비자나무 숲이 울창하여 남국의 정취를 돋워준다. 학바위(鶴岩)도 이곳에서 빼놓을 수 없는 존재이다.'
    WHERE m_name = '백암산';
UPDATE soldesk_mountain_tb
    SET m_detail = '백운산(白雲山)은 전라남도 광양시에 있는 소백산맥의 산이다. 백두대간에서 갈라져 나와 호남정맥을 완성하고 섬진강 550리 물길을 마무리한다.

지질은 변성암과 화강암, 충적층이 주를 이루고 곳에 따라 화산암 등도 분포되어 있다. 섬진강을 사이에 두고 지리산과 남북으로 마주하고 있다. 1, 080여종이 넘는 식물이 분포하고 있는데, 이는 한라산 다음으로 많은 수이다.

9월 18일 전라남도에 따르면 고로쇠 수액이 지리적표시 등록되었다.'
    WHERE m_name = '백운산(광양)';
UPDATE soldesk_mountain_tb
    SET m_detail = '백운산(白雲山)은 강원특별자치도 정선군 주변에 두 곳이 존재한다. 하나는 정선군 신동읍과 평창군 미탄면에 걸쳐있는 산으로 높이는 883m이다. 다른 하나는 정선군 고한읍과 영월군 상동읍에 걸쳐 있는 산으로 높이는 1,426m이며, 북쪽 사면에 하이원리조트가 자리잡고 있다.'
    WHERE m_name = '백운산(정선)';
UPDATE soldesk_mountain_tb
    SET m_detail = '백운산(白雲山)은 경기도 포천시 이동면과 강원특별자치도 화천군 사내면의 경계에 있는 높이 904m의 산이다.'
    WHERE m_name = '백운산(포천)';
UPDATE soldesk_mountain_tb
    SET m_detail = '변산(邊山)은 전라북도 부안군 변산면에 위치한 산이다. 변산을 포함한 변산반도 일대는 국립공원으로 지정되어 있다.

세부적으로 바다를 따라 도는 외변산과 남서부 산악지역의 내변산으로 구분하여 부른다. 최고봉은 의상봉으로 509m이고, 쌍선봉(459m)과 관음봉(433m, 또는 가인봉), 선인봉, 옥녀봉 등이 있다.

외변산이라고 부르는 해안 지역에는 변산 해수욕장을 비롯하여 고사포해수욕장, 격포해수욕장 등이 있어 여름 휴양지로 인기가 높다.'
    WHERE m_name = '변산';
UPDATE soldesk_mountain_tb
    SET m_detail = '북한산(北漢山)은 서울특별시 강북구·도봉구·은평구·성북구·종로구와 경기도 고양시 덕양구·양주시·의정부시의 경계에 있는 높이 835.6m(2013년 6월 국토지리정보원 지도)의 산으로, 이름은 조선 후기시대때 한성의 북쪽이라는 뜻에서 유래되었다.

북한산은 1억 7천만년전에 형성되었으며, 최초로는 마한의 땅으로 삼국시대 백제에서는 한산(漢山)이라 불렸고 인수봉은 부아악(負兒嶽)이라 불렸으며 시조 비류와 온조 형제가 올랐다는 기록이 남아있다. 31년 이후 횡악(橫嶽)이라고도 불렸다. 475년 고구려가 이곳을 정벌하여 북한산군(北漢山郡)이라 칭한다. 신라가 이곳을 정벌하고(553년) 난 후 557년에 일시적으로 ''북한산주(北漢山州)''를 설치하였다. 이때 북한산 신라 진흥왕 순수비가 세워졌다.

남북국시대 통일신라에서는 부아산(負兒山)이라고도 불렀고, 993년 이후 때 부아봉(현 인수봉 810.5m), 중봉(현 백운대 835.6m), 국망봉(현 만경대 800.6m, 국토지리정보원) 세 봉우리가 모여 있어 삼각(三角)처럼 보여 삼각산(三角山)으로 불려왔다. 조선 시대에 들어와서 고려시대에 측성한 중흥산성을 보수축하여 북한산성을 축성(1711년)한 이후 한성의 북쪽이라는 의미에서 북한산(北漢山)이란 산명을 별칭으로 사용해 오다가, 일제강점기 이후로 점차 북한산(北漢山)이란 산명을 정식으로 사용하게 되었다.

1983년에 대한민국의 국립공원 북한산으로 지정되었고, 2010년에는 북한산 둘레길 코스가 개방되었다.'
    WHERE m_name = '북한산';
UPDATE soldesk_mountain_tb
    SET m_detail = '비슬산(琵瑟山)은 대구광역시 달성군과 경상북도 청도군, 경상남도 창녕군의 사이에 있는 높이 1,084m의 산이다. 1986년 2월 22일에 군립공원으로 지정되었다.

''신증동국여지승람''과 ''달성군지''에는 비슬산을 일명 포산(苞山, 수목에 덮여 있는 산)이라 한다고 기록되어 있다. ''유가사사적(瑜伽寺寺蹟)''에는 산의 모습이 거문고와 같아서 비슬산(琵瑟山)이라고 하였다는 기록이 있다.

암괴류(岩塊流)는 큰 자갈 또는 바위 크기의 둥글거나 각진 암석 덩어리들이 집단적으로 산 사면이나 골짜기에 아주 천천히 흘러내리면서 쌓인 암괴류는 중생대 백악기 화강암의 거석들로 이루어진 특이한 경관을 보여준다.

뿐만 아니라 규모가 길이 2km, 폭 80m, 두께 5m에 달하고, 암괴들의 직경이 약 1∼2m에 이르는 것으로 국내에 분포하는 수 개의 암괴류 중 규모가 가장 커 학술적·자연학습적 가치가 매우 높다.'
    WHERE m_name = '비슬산';
UPDATE soldesk_mountain_tb
    SET m_detail = '삼악산(三岳山)은 강원특별자치도 춘천시 서면에 있는 산으로 높이는 654m이다.'
    WHERE m_name = '삼악산';
UPDATE soldesk_mountain_tb
    SET m_detail = '서대산(西臺山)은 대한민국 충청남도 금산군 추부면 서대리와 군북면 보광리 사이에 있는 높이 904m의 산이다. 충청남도에서 가장 높은 산이다. 화강암으로 이루어진 원추형 암산이다.'
    WHERE m_name = '서대산';

-- 산 상세설명 추가 51 ~ 60
UPDATE soldesk_mountain_tb
    SET m_detail = '선운산(禪雲山)은 전라북도 고창군에 있는 높이 336m의 산이다.

1979년 12월 27일에 도립공원으로 지정되었다.

이 산은 도솔산이라고도 불리는데 선운은 구름 속에서 참선한다는 뜻이고 도솔은 미륵불이 있는 도솔천궁이다.

선운산은 그리 높지는 않지만 다양한 비경으로 수많은 산행인들을 불러 모은다.'
    WHERE m_name = '선운산';
UPDATE soldesk_mountain_tb
    SET m_detail = '설악산(雪嶽山, Seoraksan, Mt. Seorak)은 강원특별자치도 속초시, 양양군, 인제군, 고성군에 걸쳐 있는 해발고도 1,708미터의 산이다. 대한민국에서는 한라산과 지리산 다음으로 높은 산이다. 추석 무렵부터 눈이 내리기 시작하며 여름이 되어야 녹는 까닭으로 이렇게 이름 지었다. 해방 및 분단 이후 한국 전쟁 때까지는 이 산이 조선민주주의인민공화국 영토에 속했으나 한국 전쟁 이후에는 대한민국 영토가 되었다.'
    WHERE m_name = '설악산';
UPDATE soldesk_mountain_tb
    SET m_detail = '성인봉(聖人峰)은 대한민국 경상북도 울릉군에 있는 높이 984m의 성층화산이다.

화산섬인 울릉도에서 가장 높은 산으로, 섬의 중앙에 있다. 등산 코스로는 크게 도동과 천부리 등 2개가 있다.

일본 오키 제도의 최고봉인 다이만지산에서 독도를 아예 바라볼 수 없는 것과는 달리, 아주 맑은 날에는 독도는 물론이며 운이 좋으면 강원도 동해안의 아름다운 석양도 볼 수 있다.'
    WHERE m_name = '성인봉';
UPDATE soldesk_mountain_tb
    SET m_detail = '소백산(小白山)은 대한민국 경상북도 영주시와 충청북도 단양군에 걸쳐 있는 산으로 일찍부터 태백산과 함께 신령시 되어 온 산이다. 삼재(화재 수재 풍재)가 들지 않은 산이라 하여 풍수의 명당으로 꼽혀 조선시대 병란과 기근을 피할 수 있는 십승지지(十勝之地)의 하나로 거론되기도 했다. 1987년에 국립공원으로 지정되었다. 2007년 IUCN 국립공원(Ⅱ)으로 인증되었다.'
    WHERE m_name = '소백산';
UPDATE soldesk_mountain_tb
    SET m_detail = '소요산(逍遙山)은 경기도 동두천시에 있는 해발 고도 536m의 산이다. 산세가 수려해 경기의 소금강이라고도 불린다. 645년, 신라고승 원효가 세운 자재암이 있다. 단풍으로 유명한 산이며, 1981년에 국민관광지로 지정되었다. 화담 서경덕, 봉래 양사언과 매월당 김시습이 자주 소요하였다 하여 ''소요산''이라 불리게 되었다.

2002년 세계 산의 해를 기념하여 산림청이 선정한 한국 100명산 중 한 곳이다.

또한 한국의 산하 인기 명산 100산 중에서 38위에 올라 있을 정도로 지명도가 높다.'
    WHERE m_name = '소요산';
UPDATE soldesk_mountain_tb
    SET m_detail = '속리산(俗離山, Sokri Mountain)은 대한민국 충청북도 보은군과 괴산군, 경상북도 상주시와 문경시에 걸쳐 있는 높이 1,058m의 산이다. 화강암을 기반으로 변성퇴적암이 섞여 있고 화강암 부분은 날카롭게 솟아오르고 변성퇴적암 부분은 깊게 패여 높고 깊은 봉우리와 계곡이 절경을 이루고 있어 광명산(光明山), 미지산(彌智山), 소금강산(小金剛山)으로 불리기도 한다. 1970년 3월 24일에 6번째 대한민국의 국립공원으로 지정되었다. 속리산 자체가 분할한 면적은 60평방킬로미터이다.'
    WHERE m_name = '속리산';
UPDATE soldesk_mountain_tb
    SET m_detail = '신불산(神佛山)은 울산광역시 울주군 상북면과 삼남면과 경상남도 양산시 하북면의 경계를 이루는 산이다.

태백산맥의 남쪽 끝에 있는 내방산맥 줄기에 있다. 영남 알프스에서 가지산에 이어 두 번째로 높은 산이다. 정상에 암봉이 솟은 가지산과는 달리 토산이며, 1983년 11월 3일 간월산과 함께 군립공원으로 지정되었다.

동쪽은 절벽이고 서쪽은 완만한 구릉으로 이루어져 있다. 설악산의 공룡능선보다 작은 규모의 암릉길인 신불산 공룡릉이 등산 코스로 즐겨 이용된다.

대한민국 산림청이 선정한 한국의 100대 명산 중 하나이다.

신불산에서 취서산에 이르는 광활한 능선 위에 가득히 펼쳐진 억새 밭은 좀처럼 다른 산에서 찾아볼 수 없는 장관이다.'
    WHERE m_name = '신불산';
UPDATE soldesk_mountain_tb
    SET m_detail = '연화산(蓮華山)은 경상남도 고성군에 있는 산으로 옥녀봉, 선도봉, 망선봉의 세 봉우리로 이루어져 있다. 1983년 9월 29일에 도립공원으로 지정되었다.

비슬산이라고 불렸는데 이 비슬(毘瑟)은 산의 동북쪽에 선유(仙遊), 옥녀(玉女), 탄금(彈琴)의 세 봉우리가 둘러있어 마치 선인이 거문고를 타고, 옥녀가 비파를 다루고 있는 형국이었기 때문이었다. 조선 인조때 학명대사가 연화산으로 고쳐 부르기 시작하였는데, 연화산이라는 이름은 산의 형상이 연꽃을 닮았다하여 붙여진 이름이라 전해진다.'
    WHERE m_name = '연화산';
UPDATE soldesk_mountain_tb
    SET m_detail = '오대산(五臺山)은 강원특별자치도 강릉시와 평창군 및 홍천군 경계에 있는 높이 1,563m의 산이다. 1975년에 국립공원으로 지정되었다. 기암들의 모습이 금강산을 보는 듯하다고 해서 소금강, 또 학의 날개를 펴는 형상을 했다고 해서 일명 청학산이라고도 불린다. 조선 후기에는 실록을 보관하는 사고(史庫)도 설치되어 오늘날에도 건물은 보존되어 있다.'
    WHERE m_name = '오대산';
UPDATE soldesk_mountain_tb
    SET m_detail = '오봉산(五峰山)은 대한민국 강원특별자치도 춘천시에 있는 산이다. 이 산은 경운산 또는 경수산, 청평산으로도 불려왔고 근래에 와서 비로봉, 보현봉, 문수봉, 관음봉, 나한봉의 다섯 봉우리가 연이어 있어 오봉산으로 부르게 되었다.

정상에서 남쪽 산자락에는, 고려 광종 24년(973년)에 창건한 청평사(강원특별자치도기념물 55호)가 자리잡고 있다.'
    WHERE m_name = '오봉산';

-- 산 상세설명 추가 61 ~ 70
UPDATE soldesk_mountain_tb
    SET m_detail = '용문산(龍門山)은 경기도 양평군에 있는 산이다.

이 산은 남한강과 홍천강에 둘러싸여 있고, 주변에는 유명산을 비롯하여 중원산, 도일봉 등이 산세를 더하고 있는 암산이다.

경기도에서 네 번째로 높은 산으로 미지산이라는 이름으로 불리었는데 조선을 개국한 이성계가 등극하면서 ''용문산''이라 바꿔 부르게 되었다는 전설이 있다.

800m 이상의 봉우리만도 15개 이상이 한데 모여 제법 산세가 크고 당당하다. 특히 정상 동쪽에 있는 용계와 조계 등 뛰어난 경관을 지닌 계곡이며 기암절벽을 이룬 연릉과 암봉이 소나무와 어울린 산세가 아름다워 예로부터 경기의 금강이라고 일컬어 왔다.'
    WHERE m_name = '용문산';
UPDATE soldesk_mountain_tb
    SET m_detail = '용화산(龍華山)은 강원특별자치도 화천군과 춘천시의 경계에 있는 높이 875m의 산이다. 주봉은 만장봉이다.'
    WHERE m_name = '용화산';
UPDATE soldesk_mountain_tb
    SET m_detail = '운문산(雲門山)은 경상북도 청도군 운문면과 경상남도 밀양시 산내면에 걸쳐있는 높이 1,195.1m의 산이다. 인근의 고헌산, 가지산, 천황산, 간월산, 신불산, 취서산, 문복산 등과 함께 영남 알프스라고 불린다.'
    WHERE m_name = '운문산';
UPDATE soldesk_mountain_tb
    SET m_detail = '운악산(雲岳山)은 경기도 포천시 화현면과 가평군 조종면의 경계에 있는 높이 936m의 산이다.

일명 현등산이라고도 부르며 지도상에 현등산으로 표기된 것도 많다. 예로부터 기암 괴봉으로 이뤄진 산세가 아름다워 경기의 소금강이라고 불리어 왔다.

경기의 5악의 하나로 화악산, 관악산, 감악산 송악산과 함께 이름난 바위산이지만, 그 중에서도 제일 수려한 산으로 꼽힌다.'
    WHERE m_name = '운악산';
UPDATE soldesk_mountain_tb
    SET m_detail = '운장산(雲長山)은 대한민국 전라북도 진안군에 있는 높이 1126m의 산이다.

호남지방 노령산맥 중 제일 높은 산이다.

과거에는 주줄산(珠崒山), 주출산, 주화산(珠華山) 등으로 불리다 중봉인 운장대의 이름이 산이름으로 되었다. 한자 표기로는 雲藏臺이지만 일제시대부터 雲長山으로 표기 되었다. (일설로 전해지는 송익필의 자(字)가 산이름이 되었다는 것은 사실이 아니다. 일반적으로 자(字)를 지명으로 쓰는 경우는 없다. 서인인 송익필과 동인인 정여립의 관계를 생각하면 더욱 수긍하기 힘들다. 또한, 구봉산을 송익필의 호에서 가져왔다는 것도 사실과 다르다. 구봉산은 아홉 봉우리를 뜻하는 九峰이고, 송익필의 호는 龜峰이다. 龜峰은 현재 파주 심학산이다.)

최정상은 동봉(삼장봉 1,133m), 서봉(칠성대 1,120m), 중봉(운장대 1,126m) 이렇게 세 개의 봉우리로 이루어져 있다. 동봉인 삼장봉이 1,133m로 가장 높지만 대다수 자료에 중봉인 운장대의 높이로 표기되어 있다.'
    WHERE m_name = '운장산';
UPDATE soldesk_mountain_tb
    SET m_detail = '월악산(月岳山)은 충청북도 제천시, 충주시와 경상북도 문경시에 걸쳐 있는 높이 1,097m의 산이다. 1984년 12월 31일 국립공원으로 지정되었다. 면적 대부분은 제천시에 있다.'
    WHERE m_name = '월악산';
UPDATE soldesk_mountain_tb
    SET m_detail = '월출산(月出山)은 전라남도 영암군과 강진군에 걸쳐있는 산이다. 1973년 1월 29일에 도립공원으로, 1988년 6월 11일에는 국립공원으로 지정되었다. 월출산이라는 이름은 ''달(月)이 뜨는(出) 산''라는 의미이다.

가장 높은 봉우리는 천황봉(약 809m)이고 구정봉, 사자봉, 도갑봉, 주거봉 등 깎아지른 듯한 기암절벽을 이루고 있다.

면적은 56.1km2에 암석 노출지와 급경사 계곡이 많아 생태계가 풍부하게 유지되기 어려운 조건이지만, 식물 약 700종, 동물 약 800종이 서식하고 있고, 오랜 세월 암석 지형에 적응해 온 생태적인 독‍‍‍‍특성‍‍‍‍과 난대림과 온대림이 혼재하고 있다. 월출산은 백악기 말기에 형성된 ‍‍‍‍화강암이 주를 이루고 있다. 월출산의 깃대종에는 끈끈이주걱과 남생이가 있다.

《속고승전(續高僧傳)》에 의하면 백제시대에는 달나산(達拏山), 《동국여지승람》에 의하면 신라시대에는 월나산(月奈山), 고려 시대에는 월생산(月生山)이라 불렸다고한다.'
    WHERE m_name = '월출산';
UPDATE soldesk_mountain_tb
    SET m_detail = '유명산(有明山)은 경기도 양평군과 가평군 사이에 있는 높이 862m의 산이다. 산 정상에서는 멀리 북한강과 청평호를 비롯해 용문산, 화악산, 명지산 등의 모습이 보이고 발 아래로 남한강도 보인다.

유명산에는 대한민국에서 최초로(1989년) 개장한 휴양림인 유명산휴양림이 있다.'
    WHERE m_name = '유명산';
UPDATE soldesk_mountain_tb
    SET m_detail = '응봉산(應峰山)은 경상북도 울진군과 강원특별자치도 삼척시의 경계에 있는 높이 999m의 산이다.'
    WHERE m_name = '응봉산';
UPDATE soldesk_mountain_tb
    SET m_detail = '장안산(長安山)은 전라북도 장수군에 있는 높이 1,237m의 산이다. 장안산은 일명 영취산(靈鷲山)이라고 하며, 장수, 번암,계남, 장계 등 4개 면의 중앙에 위치하고 백두대간이 뻗어 전국의 팔대 종산중 제일 광활한 면적을 점유하고 있다.1986년 8월 18일에 군립공원으로 지정되었다.

무룡궁이란 곳이 있어 금강과 섬진강의 가장 먼 분수지이다. 무룡이란 용이 춤을 춘다는 말로 이재에서 장안산으로 향하는 기세가 마치 용이 하늘로 오르는 기상이라서 붙여진 이름이다.

산마루 입수처에서는 천지수라는 샘이 있고, 산의 좌우편에는 옥지수라는 샘이 있다. 또한 장안산 산봉을 일명 금봉이라고 하는데 장계면 무룡고개, 계남면 괴목, 번암면 지지, 덕산계곡에서 오르는 등산로가 있다.'
    WHERE m_name = '장안산';

-- 산 상세설명 추가 71 ~ 80
UPDATE soldesk_mountain_tb
    SET m_detail = '재약산(載藥山)은 대한민국 경상남도 밀양시와 울산광역시 울주군의 경계에 있는 높이 1,119.1m의 산이다. 영남 알프스의 일부이다. 인근 천황산과 함께 재약산으로 묶어서 천황산을 재약산 사자봉으로 재약산을 재약산 수미봉으로 부르기도 한다.'
    WHERE m_name = '재약산';
UPDATE soldesk_mountain_tb
    SET m_detail = '적상산(赤裳山)은 전라북도 무주군 적상면에 위치한 산이며, 덕유산국립공원 지역에 속한다.

붉은색 바위지대가 마치 산이 붉은 치마를 입은 것 같다 하여 적상이라는 이름이 생겨났다.

산에는 장군바위. 장도바위등 자연적 명소와 안국사. 적상산성이 있고 해발 800m 지대에는 산정호수인 적상호가 있는데,

양수발전소에 이용할 물을 저장하기 위해 만든 인공호이다.'
    WHERE m_name = '적상산';
UPDATE soldesk_mountain_tb
    SET m_detail = '점봉산(點鳳山)은 강원특별자치도 인제군 기린면 진동리과 양양군 서면에 걸쳐 있는 산으로 높이는 1,424m이다.

한계령에서 북쪽이 설악산이고, 남쪽이 점봉산이다. 등벙산 또는 등붕산(登朋山)이라고도 불리는 점봉산은 태백산맥의 중추를 이루며 오색약수와 점봉산이 사실상 남설악 관광의 핵을 이루고 있다.'
    WHERE m_name = '점봉산';
UPDATE soldesk_mountain_tb
    SET m_detail = '조계산(曹溪山)은 전라남도 순천시에 있는 높이 884m의 산이다. 1979년 12월 26일 도립공원으로 지정되었다.

원래 이름은 송광산(松廣山)인데, 고려 희종이 조계산으로 바꾸었다.

봄철의 벚꽃이 대단하고 가을철의 단풍이 유명하다.'
    WHERE m_name = '조계산';
UPDATE soldesk_mountain_tb
    SET m_detail = '주왕산(周王山)은 경상북도 청송군 주왕산면에 위치하고 있는 산이다. 1976년 3월 30일 12번째 대한민국의 국립공원으로 지정되었다.

이 산 일원의 지질은 풍화와 침식에 대한 저항력이 강한 백악기 경상 누층군 유천층군의 중성 내지 산성 화산암류로 구성되어 있다.

주왕산은 아름다운 계류와 죽순처럼 솟아오른 암봉 및 기암 괴석에다 울창한 송림이 한데 어우러져 한 폭의 산수화 같은 절경을 이루고 있다. 대전사에서 계류를 끼고 올라가는 좌우로 우람하게 치솟은 암봉과 암벽이 마치 바위병풍을 두른 듯하다. 그래서 예전에는 석병산(石屛山)이라 불리기도 하였다고 한다.

주왕산의 깃대종에는 둥근잎꿩의비름과 솔부엉이가 있다.[4] 둥근잎꿩의비름은 주왕산 속 계곡의 바위 틈새에서 주로 서식한다.'
    WHERE m_name = '주왕산';
UPDATE soldesk_mountain_tb
    SET m_detail = '주흘산(主屹山)은 경상북도 문경시에 있는 산으로 소백산맥의 주축에 있다. 문경의 진산(鎭山)인 이 산은 ‘우두머리 의연한 산’이란 한자 뜻 그대로 문경새재의 주산이다. 영남이란 지명은 조령 즉 새재의 남쪽 지방이란 뜻이다'
    WHERE m_name = '주흘산';
UPDATE soldesk_mountain_tb
    SET m_detail = '사량도 지리산 (蛇樑島智異山)은 대한민국 경상남도 통영시 사량도에 있는 높이 398m의 산이다. 지이망산(智異望山)이라고도 한다. 사량도는 크게 서쪽의 상도와 남동쪽의 하도 외 9개의 작은 섬들로 이루어져 있다. 지리산은 사량도 상도에 위치해 있다.'
    WHERE m_name = '지리산(통영)';
UPDATE soldesk_mountain_tb
    SET m_detail = '지리산(智異山)은 경상남도의 하동군, 함양군, 산청군, 전라남도의 구례군, 전라북도의 남원시 등 3개 도, 5개 시군에 걸쳐있는 산이다. 1967년 최초의 대한민국의 국립공원으로 지정되었으며 대한민국에서는 483.022㎢의 가장 넓은 면적을 지닌 산악형 국립공원이다. 둘레가 320여km나 되는 지리산에는 셀 수 없이 많은 봉우리가 천왕봉(1,915m), 반야봉(1,732m), 노고단(1,507m)을 중심으로 병풍처럼 펼쳐져 있으며, 20여 개의 능선 사이로 계곡들이 자리하고 있다. 지리산은 백두대간 끝자락에 자리 잡고 있다. 지리산의 뜻은 다름을 아는 것, 차이를 아는 것, 그리고 그 다름과 차이를 인정하는 것을 의미한다. 또 다른 뜻으로는 어리석은 사람이 머물면 지혜로운 사람이 된다는 뜻이다. 또 백두산의 맥이 흘러 내려왔다고 하여 두류산(頭流山)이라고도 불렸다. 1967년 12월 29일 대한민국 최초의 국립공원으로 지정되었다. 지리산은 예로부터 영산으로 추앙받아 왔으며, 이에 따른 고찰이 많고 근·현대 문화재도 많이 남아 있는 중요한 산이다.'
    WHERE m_name = '지리산';
UPDATE soldesk_mountain_tb
    SET m_detail = '천관산(天冠山)은 전라남도 장흥군 관산읍과 대덕읍 경계에 있는 높이 723m의 산이다. 1998년 10월 13일에 도립공원으로 지정되었다.

예로부터 내장산. 월출산. 변산. 두륜산 등과 더불어 호남의 5대 명산으로 불러온 명산이다.'
    WHERE m_name = '천관산';
UPDATE soldesk_mountain_tb
    SET m_detail = '천마산(天摩山)(고려말 이성계(李成桂)가 이 산이 매우 높아 손이 석자만 길어도 하늘을 만질 수 있겠다 하여 천마산(=하늘을 만질 수 있는 산)이라는 이름이 비롯되었다고 한다.[출처: 한국민족문화대백과사전

천마산(天摩山)은 경기도 남양주시에 있는 산이다. 경춘가도의 마치고개에서 북쪽으로 3km 지점에 위치하며, 산세가 험하고 조잡하다 하여 예로부터 소박맞은 산이라는 별칭도도 있다. 능선이 산정을 중심으로 방사선 형태를 이루고 있어 어느 지점에서도 정상이 바라보인다. 천마산의 북쪽 능선을 따라 괘라리고개에서 서북쪽에 철마산(鐵馬山, 711m)이 있다. 산록부는 밭이나 목장으로 이용되며, 각종 연수원·수련장 등이 있고, 최근 스키장이 조성되어 서울 근교의 위락지로 각광받고 있다. 2019년도에 천마산에 산불이 있었다.

1983년 8월 29일에 자연생태계·풍경지 보호를 위해 군립공원으로 지정됐다. 총 면적은 12.714km2에 이른다.'
    WHERE m_name = '천마산';

-- 산 상세설명 추가 81 ~ 90
UPDATE soldesk_mountain_tb
    SET m_detail = '천성산(千聖山)은 대한민국 경상남도 양산시에 있는 높이 920.17m의 산이다. 산 정상에는 초원과 습지가 발달해 있으며 습지에는 도룡뇽을 비롯한 희귀한 동식물들이 많이 서식하고 있다.

대구와 부산을 연결하는 경부고속철도 2단계 사업 때 건설된 원효터널이 천성산을 관통하고 있다. 원효터널 공사 당시 지율 스님을 비롯한 환경 단체 관계자와 시민들은 늪지 훼손, 생태계 파괴 등을 이유로 공사 착공 금지 가처분 신청을 법원에 제출하였으나 부산고등법원의 2차 항고에서 패소했다.'
    WHERE m_name = '천성산';
UPDATE soldesk_mountain_tb
    SET m_detail = '천태산(天台山)은 대한민국 충청북도 영동군과 충청남도 금산군에 걸쳐 있는 높이 715m의 산이다. 암릉과 각종 수목이 계곡의 맑은 물과 어우러진 경치가 ''설악산'' 못지않게 수려해서 ''충북의 설악산''이라고도 불린다.'
    WHERE m_name = '천태산';
UPDATE soldesk_mountain_tb
    SET m_detail = '청량산(淸凉山)은 대한민국 경상북도 봉화군에 있는 산이다. 최고봉은 장인봉이며 1982년(경상북도 고시 제172호)에 도립공원으로 지정되었다.

중생대 백악기에 퇴적된 경상 누층군 청량산층 등의 역암, 사암, 이암층이 융기·풍화·차별침식 등의 작용으로 다양한 지형이 나타나고 있는데, 봉우리들은 모두 역암으로 이루어져 저각도 수평층리구조를 이루고 있으며 V자곡이 발달된 계곡 주변엔 소규모의 수직·수평절리에 의한 풍화혈과 타모니 등이 발달하여 특별한 경관을 보여줄 뿐만 아니라 학술적 가치도 뛰어나다.'
    WHERE m_name = '청량산';
UPDATE soldesk_mountain_tb
    SET m_detail = '추월산(秋月山)은 전라남도 담양군과 전라북도 순창군 걸쳐있는 산이다.

이 산은 봉우리가 보름달에 닿을락말락할 정도로 높다하여 붙여진 이름이라 하는데 일찍이 호남의 명산으로 꼽혀 온 산이다. 소나무와 기암절벽이 어울린 산세가 아름다운데다 담양호가 들어서며 호반과 어울려 한층 더 진가를 올리게 된 산이다.'
    WHERE m_name = '추월산';
UPDATE soldesk_mountain_tb
    SET m_detail = '축령산(祝靈山)은 경기도 남양주시와 가평군 경계에 있는 높이 879m의 산이다.

일명 비룡산이라고도 한다. 고려말 이성계가 등극하기 전 사냥 왔다가 한 마리의 짐승도 잡지 못하고 돌아온 몰이꾼들의 말이 이산은 신령하니 산제를 올려야 한다고 하여 이튿날 정상에서 제를 지낸 후 사냥을 한 사실에서 기원한다.

축령산 서쪽 전지라골에는 축령산자연휴양림이 자리하고 있다. 60년생 잣나무 숲이 울창하고, 물놀이장, 자연관찰원, 잔디광장, 철쭉동산 등이 조성되어 있다. 축령산의 동쪽 기슭(가평군)에는 아침고요수목원이 있다.'
    WHERE m_name = '축령산';
UPDATE soldesk_mountain_tb
    SET m_detail = '치악산(雉岳山)은 강원특별자치도 원주시와 횡성군의 경계에 있는 산이다. 주봉인 해발 1,288 m의 비로봉을 중심으로 남북으로 뻗어 내린 치악산은 남대봉(1,181 m)과 매화산 (1,085 m) 등 1천여 미터의 고봉들이 연이어 있고 곳곳에 가파른 계곡들과 산성(금대산성, 영원산성, 해미산성)과 사찰(구룡사·상원사·석경사·국형사·보문사·입석사), 사적지가 산재하고 있다. 주능선 서쪽이 급경사를 이루고 있으며 동쪽은 비교적 완만한 경사를 이루고 있다. 특히 구룡사에서 비로봉을 향해 뻗은 북쪽의 능선과 계곡은 가파르기로 유명하다. 태백산맥의 허리에서 남서쪽으로 내리닫는 차령산맥 남쪽 끝에 자리잡고 있다. 치악산 일대의 수림은 대체로 활엽수와 침엽수의 혼효림으로 552종의 수목이 울창하다. 1973년 3월 15일에 도립공원으로, 1988년 6월 11일에 국립공원으로 지정되었다. 치악산국립공원의 면적은 약 182.09km2이다. 이 곳에는 파랑새·호반새·오색딱다구리·청딱다구리·꾀꼬리 등 희귀한 조류가 서식하고 있다.'
    WHERE m_name = '치악산';
UPDATE soldesk_mountain_tb
    SET m_detail = '칠갑산(七甲山)은 충청남도 청양군에 있는 산이다. 1973년 3월 6일에 도립공원으로 지정되었다.

백제는 이 산을 사비성 정북방의 진산(鎭山)으로 성스럽게 여겨 제천의식을 행하였다. 그래서 산 이름을 만물생성의 7대 근원 七자와 싹이 난다는 뜻의 甲자로 생명의 시원(始源) 七甲山이라 경칭하여 왔다. 또 일곱 장수가 나올 명당이 있는 산이라고도 전한다. 충청남도의 중앙에 자리잡은 이 산 동쪽의 두솔성지(자비성)와 도림사지, 남쪽의 금강사지와 천장대, 남서쪽의 정혜사, 서쪽의 장곡사가 모두 연대된 백제의 얼이 담긴 천 년사적지이다.'
    WHERE m_name = '칠갑산';
UPDATE soldesk_mountain_tb
    SET m_detail = '태백산(太白山)은 강원특별자치도 영월군, 정선군, 태백시, 경상북도 봉화군 경계에 있는 높이 1,567m의 산이다. 1989년 5월 13일에 강원도 도립공원으로 지정되었으며, 2016년 4월 15일 국립공원으로 승격이 결정, 2016년 8월 22일부터 대한민국의 22번째 국립공원이 되었다.

일찍이 민족의 영산으로 일컬어 오며 신라 때부터 여기서 관리와 백성들이 천제를 지내왔다. 고려 시대까지는 산꼭대기에 제사를 지내는 전각이 있었으나 조선 초기에 파괴되어 현재는 제단이 있다.'
    WHERE m_name = '태백산';
UPDATE soldesk_mountain_tb
    SET m_detail = '태화산(太華山)은 강원특별자치도 영월군과 충청북도 단양군에 걸쳐 있는 산이다. 정상에는 1995년 국립지리원에서 설치한 삼각점이 있다.'
    WHERE m_name = '태화산';
UPDATE soldesk_mountain_tb
    SET m_detail = '팔공산(八公山)은 대구광역시의 동구, 군위군과 경상북도의 경산시, 영천시, 칠곡군에 넓게 걸쳐 있는 태백산맥 줄기의 산이다. 1980년 5월 13일에 도립공원으로 지정되었다가, 2023년 5월 23일, 23번째 국립공원으로 승격되었다. 국립공원 지정 예정 면적은 126.058km2로 기존 125.232km2에서 0.826km2(0.7%) 늘어나게 된다.

삼국시대부터 신라인들이 "아버지의 산[부악(父岳)]" 또는 "중심이 되는 산[중악(中岳)]"으로 신성시하며, 하늘에 제사를 지내던 산이다.

팔공산은 봉황의 모습으로 대구분지를 감싸는 대구의 진산(鎭山)이다. 최고봉인 비로봉(1,192미터)이 봉황의 머리이고, 동봉(1,167미터)과 서봉(1,150미터)이 솟아오른 봉황의 날개라고 한다. 동화사 자리가 봉황의 아기궁이라서, 겨울에도 오동나무 꽃이 필 정도로 따뜻하다.

예로부터 불교 문화의 중심지여서 수많은 사찰들이 산재해있다. 대표적인 사찰로는 동화사, 은해사, 선본사, 송림사, 파계사, 부인사, 북지장사, 환성사, 거조사, 관암사, 관음사, 삼존석굴사(제2석굴암, 군위석굴암) 등이 있다.'
    WHERE m_name = '팔공산';

-- 산 상세설명 추가 91 ~ 100
UPDATE soldesk_mountain_tb
    SET m_detail = '팔봉산(八峰山)은 대한민국 강원특별자치도 홍천군 서면 팔봉리에 있는 산으로 홍천강이 산의 삼면을 둘러 흐르고 있다. 높이는 302m이다.'
    WHERE m_name = '팔봉산';
UPDATE soldesk_mountain_tb
    SET m_detail = '팔영산(八影山)은 전라남도 고흥군에 있는 산으로 소백산맥의 맨 끝부분에 있다. 1998년 7월 30일에 도립공원으로 지정되었다.

위왕이 세수대야에 비친 것을 보고 찾아 나선 신하들이 발견했다고 해서 팔전산이라고 부르던 것을 그림자 영(影)자로 바꿨다고 하며 또 일설에는 팔영산의 그림자가 한양까지 드리워져서 이렇게 불렀다고 한다.

그리고 2011년 1월 10일에 다도해해상국립공원으로 편입, 승격되었다.'
    WHERE m_name = '팔영산';
UPDATE soldesk_mountain_tb
    SET m_detail = '한라산(漢拏山)은 대한민국 제주도 중앙부에 있는 해발 1,947.06m, 면적 약 1,820km2의 화산으로, 제주도의 면적 대부분을 차지하고 있다.

정상에 백록담(白鹿潭)이라는 화산호가 있는데, 백록담이라는 이름은 흰 사슴이 물을 먹는 곳이라는 뜻에서 왔다고 전해진다. 산자락 곳곳에 오름 또는 악(岳)이라 부르는 다양한 크기의 측화산들이 분포해 있는 것이 큰 특징이다. 일반적으로 한라산은 폭발 가능성이 없는 사화산으로 알려져 왔지만 다시 폭발할 수도 있는 활화산일 가능성도 제기되었다.

한국에서는 금강산, 지리산과 함께 삼신산(三神山)이라 불려왔다.

한라산 일대는 천연보호구역으로서 천연기념물 제182호로 지정되어 있고, 1970년 3월 24일에 국립공원으로 지정되었다. 2007년 6월 27일 오후(대한민국 표준시) 유네스코 제31차 세계유산위원회 총회에서 제주 화산섬과 용암 동굴의 일부로 유네스코 세계자연유산으로 등록되었다.'
    WHERE m_name = '한라산';
UPDATE soldesk_mountain_tb
    SET m_detail = '화악산(華岳山)은 경기도 가평군과 강원특별자치도 화천군의 경계에 있는 높이 1,468m의 산이다.

경기도에서 제일 높은 산으로 경기 5악의 하나로 운악산, 관악산, 송악산, 감악산 중에서도 맏형 격인 산이고, 남한에서 10번째 이내에 드는 높이를 자랑한다.'
    WHERE m_name = '화악산';
UPDATE soldesk_mountain_tb
    SET m_detail = '화왕산(火旺山)은 대한민국 경상남도 창녕군에 있는 높이 756m의 산이다. 1984년 1월 11일 군립공원으로 지정되었다.

이 산은 선사시대 화산으로 지금 3개의 못(용지)은 화산의 분화구가 있고 정상 둘레에는 화왕산성(사적 64호)이 있다. 임진왜란 당시 곽재우가 화왕산성을 의지하여 왜병을 물리친 것을 기리는 의병전승비가 세워져 있다.'
    WHERE m_name = '화왕산';
UPDATE soldesk_mountain_tb
    SET m_detail = '황매산(黃梅山)은 경상남도 합천군과 산청군의 경계에 있는 높이 1,113m의 산이다.

가야산(1,430m)과 함께 합천을 대표하는 명산이다'
    WHERE m_name = '황매산';
UPDATE soldesk_mountain_tb
    SET m_detail = '황석산(黃石山)은 경상남도 함양군에 있는 높이 1,190m의 산이다.

백두대간 줄기에서 뻗어 내린 네 개의 산 (기백, 금원, 거망, 황석) 가운데 가장 끝자락에 흡사 칼을 세운 듯 솟구친 봉우리의 산이다.

황석산은 함양 땅 ‘안의’ 사람들의 지조와 절개를 상징하는 중요한 유적이다. 정유재란 당시 왜군에게 마지막까지 항거하던 이들이 성이 무너지자 죽음을 당하고 부녀자들은 천길 절벽에서 몸을 날려 지금껏 황석산 북쪽 바위 벼랑은 핏빛으로 물들었다.'
    WHERE m_name = '황석산';
UPDATE soldesk_mountain_tb
    SET m_detail = '황악산(黃嶽山)은 경상북도 김천시 대항면과 충청북도 영동군 매곡면 및 상촌면에 걸쳐있는 산이다. 주요 봉우리는 비로봉(1,111m)과 신선봉(944m), 백운봉(770m), 운수봉(740m) 등이 있다. 산의 동쪽에 직지사가 자리잡고 있다. KTX 열차는 황악터널을 통해 황악산을 관통한다.

예로부터 학이 많이 찾아와 일명 황학산 (黃鶴山)으로 불렸고 지도에도 그렇게 표기된 곳이 많다.'
    WHERE m_name = '황악산';
UPDATE soldesk_mountain_tb
    SET m_detail = '황장산(黃腸山)은 경상북도 문경시와 충청북도 제천시에 걸쳐 있는 높이 1,077m의 산이다.'
    WHERE m_name = '황장산';
UPDATE soldesk_mountain_tb
    SET m_detail = '희양산(曦陽山)은 충청북도 괴산군과 경상북도 문경시에 걸쳐 있는 산이다. 높이는 해발 999m이며 동·서·남 3면이 화강암 암벽으로 이루어진 거대한 돌산이다.

암봉들이 마치 열두판 꽃잎처럼 펼쳐져 있으며 그 중심에 봉암사가 있다.

경내에는 문경 봉암사 지증대사탑과 부도 등 5점의 보물과 지방유형문화재들이 있다.

현재 건물 대부분은 1992년에 중창된 것이다. 평소에는 일반인 출입이 금지되어 있으나 석가탄신일에는 개방된다.'
    WHERE m_name = '희양산';
