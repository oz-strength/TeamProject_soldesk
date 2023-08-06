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

select * from SOLDESK_WEATHER_TB order by w_no;

select * from soldesk_weather_tb where w_basedate "202307241400" and w_fcstdate in "202307241500" order by w_no
truncate table SOLDESK_WEATHER_TB;

drop table SOLDESK_WEATHER_TB cascade constraint purge;
