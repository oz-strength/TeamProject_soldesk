-- 회원 테이블 생성
CREATE TABLE SOLDESK_USER_TB(
U_EMAIL VARCHAR2(30 CHAR) PRIMARY KEY,
U_PW VARCHAR2(20 CHAR) NOT NULL,
U_NAME VARCHAR2(20 CHAR) NOT NULL,
U_BIRTH DATE NOT NULL,
U_GENDER VARCHAR2(10 CHAR) NOT NULL,
U_ADMIN NUMBER(2) DEFAULT 0 NOT NULL,
U_PUBLIC_KEY VARCHAR2(100 CHAR) DEFAULT 'NONE' NOT NULL,
U_PRIVATE_KEY VARCHAR2(100 CHAR) DEFAULT 'NONE' NOT NULL,
U_WALLET_CASH NUMBER(5) DEFAULT 0 NOT NULL
);
select * from SOLDESK_USER_TB;

-- 자유 게시판 테이블 생성
CREATE TABLE soldesk_board_free_tb(
    b_no number(10) primary key,
    b_u_email varchar2(30 char) not null,
    b_title varchar2(50 char) not null,
    b_writer varchar2(20 char) not null,
    b_detail varchar2(1000 char) not null,
    b_indate date not null,
    b_count number(10) default 0 not null,
    b_photo varchar2(100 char),
    
    constraint fk_b_u_email foreign key(b_u_email) references SOLDESK_USER_TB (u_email)
);

select * from SOLDESK_BOARD_FREE_TB;

-- 자유 게시판 시퀀스
CREATE SEQUENCE BOARD_FREE_SEQ
    INCREMENT BY 1
       START WITH 1
       MINVALUE 1
       MAXVALUE 999999999
       NOCYCLE
       NOCACHE
       NOORDER;
       
