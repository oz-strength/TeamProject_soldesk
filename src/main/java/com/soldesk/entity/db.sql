-- 회원 테이블 생성
create table test_user(
	u_email varchar2(30 char) primary key,
	u_pw varchar2(20 char) not null,
	u_name varchar2(20 char) not null,
	u_birth date not null,
	u_gender varchar2(10 char) not null,
	u_admin number(2) default 0 not null,
	u_public_key varchar2(100 char) default 'none' not null, 
	u_private_key varchar2(100 char) default 'none' not null,
	u_wallet_cash number(5) default 0 not null
);
 
select * from test_user;
delete from test_user ; 
drop table test_user cascade constraints;

insert into test_user(u_email, u_pw, u_name, u_birth, u_gender)
values('test@test.com', 'aaaa1111!', 'testman', '19911011','male');
insert into test_user(u_email, u_pw, u_name, u_birth, u_gender)
values('test@test2.com', 'aaaa1111!', 'testman', '19911011','male');
insert into test_user(u_email, u_pw, u_name, u_birth, u_gender)
values('test@test3.com', 'aaaa1111!', 'testman', '19911011','male');

-- 어드민 계정 생성
insert into test_user(u_email, u_pw, u_name, u_birth, u_gender, u_admin)
values('admin@admin.com', 'aaaa1111!', '관리자', '19991111','male', 1);


-- 자유 게시판 테이블 생성
create table test_board(
	b_no number primary key,
    b_email varchar2(30 char) not null,
    b_title varchar2(50 char) not null,
    b_writer varchar2(20 char) not null,
    b_content varchar2(1000 char) not null,
    b_indate date default sysdate,
    b_count number default 0,
    b_photo varchar2(100 char),
    boardGroup number,
	boardSequence number,
	boardLevel number,
	boardAvailable number,
    constraint fk_b_email foreign key(b_email) references test_user (u_email)
);
create sequence test_board_seq;
drop sequence test_board_seq;

INSERT INTO test_board (b_no, b_email, b_title, b_writer, b_content, b_indate, b_count, boardGroup, boardSequence, boardLevel, boardAvailable)
SELECT nvl(max(b_no)+1, 1), 'test@test.com', '게시판연습', '홍길동', '반갑습니다', sysdate, 0, NVL(MAX(boardGroup) + 1, 0), 0, 0, 1
FROM test_board;
INSERT INTO test_board (b_no, b_email, b_title, b_writer, b_content, b_indate, b_count, boardGroup, boardSequence, boardLevel, boardAvailable)
SELECT nvl(max(b_no)+1, 1), 'test@test2.com', '게시판연습', '유재석', '안녕', sysdate, 0, NVL(MAX(boardGroup) + 1, 0), 0, 0, 1
FROM test_board;
INSERT INTO test_board (b_no, b_email, b_title, b_writer, b_content, b_indate, b_count, boardGroup, boardSequence, boardLevel, boardAvailable)
SELECT nvl(max(b_no)+1, 1), 'test@test3.com', '게시판연습', '강호동', '반가워', sysdate, 0, NVL(MAX(boardGroup) + 1, 0), 0, 0, 1
FROM test_board;
INSERT INTO test_board (b_no, b_email, b_title, b_writer, b_content, b_indate, b_count, boardGroup, boardSequence, boardLevel, boardAvailable)
SELECT nvl(max(b_no)+1, 1), 'aa@aa.com', '게시판연습', '홍길동', '반가워', sysdate, 0, NVL(MAX(boardGroup) + 1, 0), 0, 0, 1
FROM test_board;

drop table test_board cascade constraints;

select * from test_board order by b_no desc;

-- 산 테이블 생성
create table test_mountain(
	m_name varchar2(10 char) primary key,
    m_latitude varchar2(10 char) not null,
    m_longitude varchar2(10 char) not null
);
drop table test_mountain cascade constraints;

INSERT INTO test_mountain (m_name, m_latitude, m_longitude)
SELECT '오대산', '37.8847', '128.2897' FROM DUAL UNION ALL
SELECT '함백산', '37.3500', '127.4611' FROM DUAL UNION ALL
SELECT '계방산', '36.2686', '127.0500' FROM DUAL UNION ALL
SELECT '감악산', '37.4044', '127.1947' FROM DUAL UNION ALL
SELECT '관악산', '37.4453', '126.9644' FROM DUAL UNION ALL
SELECT '도봉산', '37.6675', '127.0400' FROM DUAL UNION ALL
SELECT '북한산', '37.6642', '127.0136' FROM DUAL UNION ALL
SELECT '대둔산', '35.7586', '128.4531' FROM DUAL UNION ALL
SELECT '칠갑산', '36.6014', '128.0603' FROM DUAL UNION ALL
SELECT '소백산', '36.5836', '127.7142' FROM DUAL UNION ALL
SELECT '속리산', '36.0944', '127.4783' FROM DUAL UNION ALL
SELECT '가야산', '35.8572', '127.4694' FROM DUAL UNION ALL
SELECT '비슬산', '35.9433', '128.0422' FROM DUAL UNION ALL
SELECT '주왕산', '35.4644', '128.0950' FROM DUAL UNION ALL
SELECT '재약산', '35.1133', '127.4747' FROM DUAL UNION ALL
SELECT '금정산', '35.3192', '129.0294' FROM DUAL UNION ALL
SELECT '마이산', '35.8428', '126.6978' FROM DUAL UNION ALL
SELECT '선운산', '34.9644', '127.9822' FROM DUAL UNION ALL
SELECT '월출산', '34.8656', '128.2147' FROM DUAL UNION ALL
SELECT '무등산', '35.1547', '126.9686' FROM DUAL;

select * from test_mountain;

-- nft 파일
create table nft_pic(
	file_num number not null,
	o_name varchar2(100 char),
	saveFileName varchar2(100 char),
	filePath varchar2(100 char)
);

create sequence nft_pic_seq;
drop sequence nft_pic_seq;
select * from nft_pic;
drop table nft_pic cascade constraints;
select n_photo from nft_pic where n_idx = 9; 
delete * from nft_pic;

-----------------------------------------------------------------
create table SOLDESK_WEATHER_TB (
    w_NO number(5) not null primary key,
	w_LOC varchar2(10 char) not null,
	w_BASEDATE Date not null, -- 관측기준 날짜 + 시간
	w_FCSTDATE Date not null, -- 미래 날짜 + 시간
	w_TMP number(3) not null, -- 기온
	w_TMX number(3) default 999 not null, -- 최고기온
	w_TMN number(3) default -999 not null, -- 최저기온
	w_REH number(3) not null, -- 습도
	w_POP number(3) not null, -- 강수확률
	w_VEC number(4) not null, -- 풍향
	w_WSD number(3,1) not null, -- 풍속
	w_SKY number(2) not null
);

create sequence SOLDESK_WEATHER_TB_SEQ;
drop sequence SOLDESK_WEATHER_TB_SEQ;

select * from SOLDESK_WEATHER_TB;
truncate table SOLDESK_WEATHER_TB;

drop table SOLDESK_WEATHER_TB cascade constraint purge;


-----------------------------------------------------------------

