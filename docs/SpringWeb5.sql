[ springWeb5 프로젝트 테이블 구조 ]

--회원 정보 테이블
create table web5_member (
	id			varchar2(20) primary key,	--회원ID
	password	varchar2(20) not null,		--비밀번호
	name		varchar2(20) not null,		--이름
	phone		varchar2(20),				--전화번호
	address		varchar2(100),				--주소
	email		varchar2(50)				--이메일주소
);

--게시판 본문 글 테이블
create table web5_board (
	boardnum	number primary key,			--글번호
	id			varchar2(20) not null, 		--작성자ID
	title		varchar2(200) not null,		--제목
	contents	varchar2(2000) not null, 	--내용
	inputdate	date default sysdate, 		--작성일,
	hits		number default 0,			--조회수
	originalfile	varchar2(200),			--첨부파일 원래이름
	savedfile		varchar2(100)			--첨부파일 저장된 이름
);

--게시판 글 번호에 사용할 시퀀스
create sequence web5_board_seq;

--댓글 테이블
create table web5_reply (
	replynum		number	primary key,		--댓글번호
	boardnum		number not null,			--본문 글번호
	id				varchar2(20) not null,		--작성자 ID
	text			varchar2(200) not null,		--내용
	inputdate		date 	default sysdate,	--작성일
	constraint reply_fk foreign key(boardnum)
		references web5_board(boardnum) on delete cascade
);

--댓글 번호에 사용할 시퀀스
create sequence web5_reply_seq;

--저장 예
insert into web5_member values 
	('aaa', 'aaa', '홍길동', '010-111-1111', '서울시', 'aaa@aaa.com');
	
insert into web5_board (boardnum, id, title, contents) 
	values (web5_board_seq.nextval, 'aaa', '글제목', '글내용');
	
insert into web5_reply (replynum, boardnum, id, text) 
	values (web5_reply_seq.nextval,  1 , 'aaa', '리플 내용');


