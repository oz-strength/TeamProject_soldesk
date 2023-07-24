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
    SET m_photo = 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fcjodbn%2FbtqHJjKxxy3%2FsXsQvdlt6GMgKmuCoerZiK%2Fimg.jpg'
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
    SET m_photo = 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FdLHLdR%2FbtqEoU8d7nF%2FDkuI09OcFWqoapUmMr2Kpk%2Fimg.jpg'
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
    SET m_photo = 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F256D3A4C570C42EB35'
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
    SET m_photo = 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F257B24475799B1490E'
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
    SET m_photo = 'https://www.samcheok.go.kr/CmsMultiFile/view.do?multifileId=TT00000034&idx=125&'
    WHERE m_name = '응봉산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F99EE6D4F5B8E8CC512'
    WHERE m_name = '장안산';

-- 산 사진 추가 71 ~ 80
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.miryang.go.kr/cmm/fms/getImage.do;jsessionid=92E5F0D1026DC2AEB71F13C8ECB47915.was1?atchFileId=FILE_000000000001662&fileSn=6'
    WHERE m_name = '재약산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.ttlnews.com/upload/editor_content_images/1632730421332_editor_image.wm.jpg'
    WHERE m_name = '적상산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://www.foresttrip.go.kr/portal/images/content/route/jumbongsan-img2.jpg'
    WHERE m_name = '점봉산';
UPDATE soldesk_mountain_tb
    SET m_photo = 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F250CFE4B53AB5C0A2B'
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
    SET m_photo = 'https://tour.yd21.go.kr/_prog/download/index.php?func_gbn_cd=tourist&site_dvs_cd=tour&atch=atch_img&mng_no=22'
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