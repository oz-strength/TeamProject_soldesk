-- n_master -> user email 연동하기
create table soldesk_nft_tb (
    n_no number(3) not null primary key,
    n_hash varchar2(100) not null unique,
    n_master varchar2(30) not null,
    n_img varchar2(100) not null unique,
    n_status number(2) not null,
    n_brand varchar2(20) not null,
    n_name varchar2(30) not null
);

create sequence soldesk_nft_tb_seq;
drop sequence soldesk_nft_tb_seq;

select * from soldesk_nft_tb order by n_no;
truncate table soldesk_nft_tb;

drop table soldesk_nft_tb cascade constraint purge;

select max(n_no) from soldesk_nft_tb;
