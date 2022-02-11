--3차 역량평가 - 개인 블로그 서비스

--개인정보 테이블
create table blog_member (
	id			varchar2(20) 	primary key,		--회원 ID
	password	varchar2(20) 	not null,			--비밀번호
	name		varchar2(20) 	not null,			--회원 이름
	photo		number(1) 		default 1			--선택한 프로필 사진 (1~4중에서 선택)
);

--블로그 글 테이블
create table blog_board (
	boardnum	number			primary key,		--글 일련번호
	id			varchar2(20)	not null,			--작성자 ID
	title		varchar2(200) 	not null,			--글 제목
	content		varchar2(2000) 	not null,			--글 내용
	inputdate	date			default sysdate,	--작성 날짜
	likecnt		number			default 0,			--추천수
	constraint blog_board_fk foreign key(id) 
		references blog_member (id) on delete cascade
);

--블로그 글 일련번호에 사용할 시퀀스
create sequence blog_board_seq;

--개인정보 입력 예
insert into blog_member values ('aaa', 'aaa', '홍길동', 1);

--블로그 글 입력 예
insert into blog_board (boardnum, id, title, content) values (blog_board_seq.nextval, 'aaa', '글제목', '글내용');
