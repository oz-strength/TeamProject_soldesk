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