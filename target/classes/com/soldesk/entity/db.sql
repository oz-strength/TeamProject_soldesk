-- 회원 테이블 생성
create table test_user(
	u_idx number not null,
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
create sequence test_user_seq;
drop sequence test_user_seq;

select * from test_user;
delete from test_user ; 
drop table test_user cascade constraints;

insert into test_user(u_idx, u_email, u_pw, u_name, u_birth, u_gender)
values(test_user_seq.nextval, 'test@test.com', '1111', 'testman', '19911011','male');
insert into test_user(u_idx, u_email, u_pw, u_name, u_birth, u_gender)
values(test_user_seq.nextval, 'test@test2.com', '1111', 'testman', '19911011','male');
insert into test_user(u_idx, u_email, u_pw, u_name, u_birth, u_gender)
values(test_user_seq.nextval, 'test@test3.com', '1111', 'testman', '19911011','male');
	



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


drop table test_board cascade constraints;

select * from test_board order by b_no desc;

