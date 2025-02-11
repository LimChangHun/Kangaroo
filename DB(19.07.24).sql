--Final----------------------------------------------------------------------------------
drop table admin;
drop sequence admin_seq;
drop table members;
drop table title_img;
drop table notice;
drop table message;
drop table payments;
drop table inquiring;
drop table report;
drop table point_using;
drop table point_charging;
drop table auction_board;
drop table auction_img_board;
drop table used_transaction_board;
drop table used_transaction_img_board;
drop table tender;
drop table comments;
drop table order_t;
drop table delivery;
drop table trade_cart;
drop table auction_cart;
drop table comments2;
drop sequence tender_seq;
drop sequence comments_seq;
drop sequence t_no_seq;
drop sequence n_no_seq;
drop sequence p_no_seq;
drop sequence e_no_seq;
drop sequence r_no_seq;
drop sequence a_no_seq;
drop sequence a_i_seq;
drop sequence u_no_seq;
drop sequence u_t_i_no_seq;
drop sequence p_u_no_seq;
drop sequence p_c_no_seq;
drop sequence order_seq;
drop sequence delivery_seq;
drop sequence comments_seq2;
<<<<<<< HEAD
<<<<<<< HEAD
create table members( --회원가입 테이블
=======
create table members( --�쉶�썝媛��엯 �뀒�씠釉�
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table members( --�쉶�썝媛��엯 �뀒�씠釉�
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    id varchar(30) primary key,
    pw varchar(100) ,
    name varchar(20),
    phone varchar(20),
    point number default 0,
    zipcode varchar(100) ,
    address1 varchar(100) ,
    address2 varchar(100) ,
    joindate timestamp default sysdate,
    ipaddress varchar(20) not null,
    logintype varchar(20) not null,
<<<<<<< HEAD
<<<<<<< HEAD
    member_class varchar(20) default '보통',
    blacklist char(1) default 'n',
    admin char(1) default 'n'
);
create table title_img( --메인화면 이미지
=======
=======
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    member_class varchar(20) default '蹂댄넻',
    blacklist char(1) default 'n',
    admin char(1) default 'n'
);
create table title_img( --硫붿씤�솕硫� �씠誘몄��
<<<<<<< HEAD
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    no number not null,
    filename varchar(300) not null,
    oriflename varchar(300) not null,
    filepath varchar(300) not null,
    filesize number not null
);

create sequence t_no_seq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
<<<<<<< HEAD
create table notice( --공지사항 테이블
=======
create table notice( --怨듭���궗�빆 �뀒�씠釉�
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table notice( --怨듭���궗�빆 �뀒�씠釉�
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    no number not null,
    title varchar(100) not null,
    contents varchar(3000) not null,
    image varchar(300),
   viewcount number default 0,
     joindate timestamp default sysdate
);

create sequence n_no_seq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
<<<<<<< HEAD
create table message( --쪽지 테이블
=======
create table message( --履쎌�� �뀒�씠釉�
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table message( --履쎌�� �뀒�씠釉�
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    id varchar(50) not null,
    receiver varchar(50) not null,
    title varchar(100) not null,
    contents varchar(3000) not null,
     joindate timestamp default sysdate
);

<<<<<<< HEAD
<<<<<<< HEAD
create table payments( --결제 테이블
=======
create table payments( --寃곗젣 �뀒�씠釉�
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table payments( --寃곗젣 �뀒�씠釉�
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    no number not null,
    name varchar(20) not null ,
    id varchar(50) not null,
    phone varchar(20) not null,
    price number not null,
    joindate timestamp default sysdate
);

create sequence p_no_seq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
<<<<<<< HEAD
create table inquiring( --댓글 테이블
=======
create table inquiring( --�뙎湲� �뀒�씠釉�
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table inquiring( --�뙎湲� �뀒�씠釉�
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    no number not null,
    id varchar(50) not null,
    name varchar(20) ,
    contents varchar(3000) not null,
    joindate timestamp default sysdate,
    seller varchar(1) check (seller in ('n','y'))
);

create sequence e_no_seq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
<<<<<<< HEAD
create table report( --신고 테이블
=======
create table report( --�떊怨� �뀒�씠釉�
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table report( --�떊怨� �뀒�씠釉�
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    no number not null,
    title varchar(1000) not null,
    sender varchar(50) not null,
    reason varchar(100)not null, 
    contents varchar(1000) not null
);

create sequence r_no_seq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
<<<<<<< HEAD
create table point_using( --포인트 사용내역
=======
create table point_using( --�룷�씤�듃 �궗�슜�궡�뿭
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table point_using( --�룷�씤�듃 �궗�슜�궡�뿭
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
no number primary key,
    id varchar(50) not null,
    title varchar(100) not null,
    payment number not null,
     joindate timestamp default sysdate
);
create sequence p_u_no_seq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;
<<<<<<< HEAD
<<<<<<< HEAD
create table point_charging( --포인트 충전내역
=======
create table point_charging( --�룷�씤�듃 異⑹쟾�궡�뿭
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table point_charging( --�룷�씤�듃 異⑹쟾�궡�뿭
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
       no number primary key,
    id varchar(50) not null,
    money number not null,
     joindate timestamp default sysdate
);
create sequence p_c_no_seq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
<<<<<<< HEAD
create table auction_board( --경매 게시판
=======
create table auction_board( --寃쎈ℓ 寃뚯떆�뙋
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table auction_board( --寃쎈ℓ 寃뚯떆�뙋
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    no number primary key,
    id varchar(50) not null,
    title varchar(100) not null,
    title_img varchar(300) not null,
    phone varchar(20) not null,
    contents varchar(3000) not null,
    viewCount number default 0,
<<<<<<< HEAD
<<<<<<< HEAD
    start_date varchar(50) default to_char(sysdate,'YY-MM-DD HH:mi:ss'),   -- 시작일
    end_date varchar(50) not null,  -- 종료일
    starting_price number not null, -- 시작가
    min_price number not null,      -- 최소 입찰 단위
    present_price number default 0, -- 현재가
    member_class varchar(20) not null, -- 회원등급
    account varchar(30) not null,      --계좌
    bid_count number default 0, --몇명인 입찰했는지
    category varchar(20) not null,
    trade_type varchar(30) not null, --어떤 종류 거래인지
    delivery varchar(30) default '무료배송', -- 선불/ 착불/ 무료배송
    delivery_cost number default 0 ,-- 택배비용
    onGoing char(1) default 'y' --진행중인지?
=======
=======
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    start_date varchar(50) default to_char(sysdate,'YY-MM-DD HH:mi:ss'),   -- �떆�옉�씪
    end_date varchar(50) not null,  -- 醫낅즺�씪
    starting_price number not null, -- �떆�옉媛�
    min_price number not null,      -- 理쒖냼 �엯李� �떒�쐞
    present_price number default 0, -- �쁽�옱媛�
    member_class varchar(20) not null, -- �쉶�썝�벑湲�
    bid_count number default 0, --紐뉖챸�씤 �엯李고뻽�뒗吏�
    category varchar(20) not null,
    delivery varchar(30) default '臾대즺諛곗넚', -- �꽑遺�/ 李⑸텋/ 臾대즺諛곗넚
    delivery_cost number default 0 ,-- �깮諛곕퉬�슜
    onGoing char(1) default 'y' --吏꾪뻾以묒씤吏�?
<<<<<<< HEAD
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
);

create sequence a_no_seq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
<<<<<<< HEAD
create table auction_img_board( --경매 게시판 이미지 테이블
=======
create table auction_img_board( --寃쎈ℓ 寃뚯떆�뙋 �씠誘몄�� �뀒�씠釉�
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table auction_img_board( --寃쎈ℓ 寃뚯떆�뙋 �씠誘몄�� �뀒�씠釉�
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    no number primary key,
    title_img varchar(300) not null,
    middle1_img varchar(300) not null,
    middle2_img varchar(300),
    middle3_img varchar(300),
    middle4_img varchar(300),
    middle5_img varchar(300),
    middle6_img varchar(300),
    middle7_img varchar(300),
    middle8_img varchar(300),
    middle9_img varchar(300),
    middle10_img varchar(300)
);

create sequence a_i_seq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
<<<<<<< HEAD
create table used_transaction_board( --중고거래 게시판 테이블
=======
create table used_transaction_board( --以묎퀬嫄곕옒 寃뚯떆�뙋 �뀒�씠釉�
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table used_transaction_board( --以묎퀬嫄곕옒 寃뚯떆�뙋 �뀒�씠釉�
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    no number primary key,
    id varchar(50),
    title varchar(100) not null,
    title_img varchar(300) not null,
    phone varchar(20) not null,
    contents varchar(3000) not null,
    viewCount number default 0,
    price number not null,
    member_class varchar(20) not null,
<<<<<<< HEAD
<<<<<<< HEAD
    account varchar(20) not null,
    category varchar(20) not null,
    trade_type varchar(30) not null,       -- 직거래? 안심거래?
    delivery varchar(30) default '무료배송',  -- 선불/ 착불/ 무료배송
    delivery_cost number default 0   ,      -- 택배비용
=======
=======
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    category varchar(20) not null,
    trade_type varchar(30) not null,       -- 吏곴굅�옒? �븞�떖嫄곕옒?
    delivery varchar(30) default '臾대즺諛곗넚',  -- �꽑遺�/ 李⑸텋/ 臾대즺諛곗넚
    delivery_cost number default 0   ,      -- �깮諛곕퉬�슜
<<<<<<< HEAD
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    joindate varchar(50) default to_char(sysdate,'YY-MM-DD HH:mi:ss'),
    onGoing char(1) default 'y'
);

create sequence u_no_seq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
<<<<<<< HEAD
create table used_transaction_img_board( --중고거래 게시판 이미지 테이블
=======
create table used_transaction_img_board( --以묎퀬嫄곕옒 寃뚯떆�뙋 �씠誘몄�� �뀒�씠釉�
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table used_transaction_img_board( --以묎퀬嫄곕옒 寃뚯떆�뙋 �씠誘몄�� �뀒�씠釉�
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    no number primary key,
    title_img varchar(300) not null,
    middle1_img varchar(300) not null,
    middle2_img varchar(300),
    middle3_img varchar(300),
    middle4_img varchar(300),
    middle5_img varchar(300),
    middle6_img varchar(300),
    middle7_img varchar(300),
    middle8_img varchar(300),
    middle9_img varchar(300),
    middle10_img varchar(300)
);

create sequence u_t_i_no_seq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
<<<<<<< HEAD
create table tender(--입찰 
=======
create table tender(--�엯李� 
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table tender(--�엯李� 
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    seq number ,
    board_num number not null,
    board_title varchar(100) not null,
    board_img varchar(100),
    id VARCHAR(100),
    point number,
    time timestamp default sysdate,
    ipaddress VARCHAR(20),
    onGoing char(1) default 'y'
);  

create sequence tender_seq
start with 1
increment by 1
nocache
nomaxvalue;

<<<<<<< HEAD
<<<<<<< HEAD
create table comments(-- 댓글
=======
create table comments(-- �뙎湲�
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table comments(-- �뙎湲�
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    seq number primary key,
    boardNum number not null,
    id varchar(30) not null,
    contents VARCHAR(500) not null,
    time timestamp default sysdate,
    ipaddress varchar(30) not null
);

create sequence comments_seq
start with 1
increment by 1
nocache
nomaxvalue;
create table order_t(
    seq number primary key,
    product_num number not null,
    product_title varchar(100) not null,
    product_img varchar(200) ,
    seller varchar(50) not null,
    buyer varchar (50)not null,
    price number not null,
    type varchar(50) not null,
    join_date timestamp default sysdate,
<<<<<<< HEAD
<<<<<<< HEAD
    situation varchar(100) default '입금완료' not null
=======
    situation varchar(100) default '�엯湲덉셿猷�' not null
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
    situation varchar(100) default '�엯湲덉셿猷�' not null
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
);
create sequence order_seq
start with 1
increment by 1
nocache
nomaxvalue;

<<<<<<< HEAD
<<<<<<< HEAD
create table admin(		      -- 관리자(방문자 수) 테이블
=======
create table admin(		      -- 愿�由ъ옄(諛⑸Ц�옄 �닔) �뀒�씠釉�
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table admin(		      -- 愿�由ъ옄(諛⑸Ц�옄 �닔) �뀒�씠釉�
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
no number primary key,
visitDate varchar2(50) default to_char(sysdate,'YY-MM-DD HH:mi:ss'),
visitCount number not null
);

<<<<<<< HEAD
<<<<<<< HEAD
create sequence admin_seq	      -- 관리자(방문자 수) 시퀀스
=======
create sequence admin_seq	      -- 愿�由ъ옄(諛⑸Ц�옄 �닔) �떆����뒪
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create sequence admin_seq	      -- 愿�由ъ옄(諛⑸Ц�옄 �닔) �떆����뒪
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
<<<<<<< HEAD
create table delivery( --배송 정보 t
=======
create table delivery( --諛곗넚 �젙蹂� t
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table delivery( --諛곗넚 �젙蹂� t
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
	seq number primary key,
	product_num number not null,
	company_code number not null,
	waybill_num varchar(200) not null,
	sender varchar(100) not null,
	recipient varchar(100) not null
);
<<<<<<< HEAD
<<<<<<< HEAD
create sequence delivery_seq	      --배송 seq 
=======
create sequence delivery_seq	      --諛곗넚 seq 
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create sequence delivery_seq	      --諛곗넚 seq 
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
<<<<<<< HEAD
create table trade_cart(   --찜 목록
=======
create table trade_cart(   --李� 紐⑸줉
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
create table trade_cart(   --李� 紐⑸줉
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    id varchar(50),
    no number not null,
    title_img varchar(300) not null,
    title varchar(100) not null,
<<<<<<< HEAD
<<<<<<< HEAD
    trade_type varchar(30) not null,       -- 직거래? 안심거래?
    delivery varchar(30) not null, -- 선불/ 착불/ 무료배송
=======
    trade_type varchar(30) not null,       -- 吏곴굅�옒? �븞�떖嫄곕옒?
    category varchar(50) not null,
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
    trade_type varchar(30) not null,       -- 吏곴굅�옒? �븞�떖嫄곕옒?
    category varchar(50) not null,
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    price number not null
);

create table auction_cart(
    id varchar(50),
    no number not null,
    title_img varchar(300) not null,
    title varchar(100) not null,
    end_date varchar(50) not null,
<<<<<<< HEAD
<<<<<<< HEAD
    delivery varchar(30) not null,
    price number not null
);  
create table comments2(-- 댓글
=======
=======
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    category varchar(30) not null,
    price number not null
);  
create table comments2(-- �뙎湲�
<<<<<<< HEAD
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
    seq number primary key,
    boardNum number not null,
    id varchar(30) not null,
    contents VARCHAR(500) not null,
    time timestamp default sysdate,
    ipaddress varchar(30) not null
);

create sequence comments_seq2
start with 1
increment by 1
nocache
nomaxvalue;


<<<<<<< HEAD
<<<<<<< HEAD
update members set point = 1000000;
insert into members values('admin@admin.com','13a95c75b44f95ead23f47f0bf10667e57b44ec5150180c8a39a39361cf56169','admin',null,default,null,null,null,default,'a','admin','우수','n','y');
=======

insert into members values('admin@admin.com','13a95c75b44f95ead23f47f0bf10667e57b44ec5150180c8a39a39361cf56169','admin',null,default,null,null,null,default,'a','admin','�슦�닔','n','y');
>>>>>>> f5ac47c307626585a93715a9fe3db152f37b2db1
=======

insert into members values('admin@admin.com','13a95c75b44f95ead23f47f0bf10667e57b44ec5150180c8a39a39361cf56169','admin',null,default,null,null,null,default,'a','admin','�슦�닔','n','y');
>>>>>>> 14142d8e3e049b241370c33bbb8d6f94789ff56c
commit;
