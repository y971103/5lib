CREATE TABLE kakaobook
(
	-- 저자
	authors varchar2(20),
	-- 제목
	title varchar2(100),
	-- 내용
	contents varchar2(2000),
	-- 출간일자
	datetime varchar2(100), 
	-- isbn코드
	isbn varchar2(200),
	-- 출판사
	publisher varchar2(20),
	-- 썸네일
	thumbnail varchar2(200),
	-- 책 번호(DB)
	booknum number,
	PRIMARY KEY (isbn)
);

-- kakaobook 테이블에 insert 예시
insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('염한승', '책 제목', '내용', '2021-02-22', '12345556', '출판사', '3.jpg', 3); 


CREATE TABLE comments
(
	-- 나만 보는 리뷰 번호 (줄글)
	commentnum number NOT NULL,
	-- 나만 보는 리뷰 내용
	content varchar2(2000),
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 책 번호
	booknum number NOT NULL,
	PRIMARY KEY (commentnum)
);

CREATE TABLE essay
(
	-- 에세이(독후감) 번호 (남들 다 봄)
	essaynum number NOT NULL,
	-- 에세이 제목
	title varchar2(200),
	-- 에세이 내용
	content varchar2(2000),
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 에세이 작성 일자
	inputdate date DEFAULT SYSDATE,
	-- 조회수
	hits number,
	PRIMARY KEY (essaynum)
);

CREATE TABLE genre
(
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	genre_num number(2) NOT NULL,
	UNIQUE (id, genre_num)
);

CREATE TABLE genre_info
(
	genre_num number(2) NOT NULL,
	genre_name varchar2(100),
	PRIMARY KEY (genre_num)
);

CREATE TABLE habit
(
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 독서 시간
	time number,
	-- 읽은 권수
	amount number,
	-- 타임과 비교할 현재 시각
	inputdate date DEFAULT SYSDATE
);

CREATE TABLE members
(
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 회원 비밀번호
	password varchar2 NOT NULL,
	-- 회원 이름
	name varchar2(20),
	-- 회원 전화번호
	phone number,
	-- 회원 이메일
	email varchar2(20),
	-- 회원 구독 정보
	sub varchar2(20),
	genre_num varchar2(20),
	PRIMARY KEY (id)
);

CREATE TABLE board
(
	-- 게시판 번호 
	boardnum number NOT NULL,
	-- 게시판 타입 (공지사항, QnA)
	board_type number,
	-- 글 제목 
	title varchar2(200),
	-- 조회수 
	hits number,
	-- 글 내용 
	content varchar2(2000),
	-- 작성 시간 
	inputdate date DEFAULT SYSDATE,
	-- 아이디 
	id varchar2(20) NOT NULL,
	PRIMARY KEY (boardnum)
);


CREATE TABLE reply
(
	-- 게시글 댓글 번호 
	replynum number NOT NULL,
	-- 게시글 댓글 내용 
	content varchar2(200) NOT NULL,
	-- 댓글 아이디 
	id varchar2(20) NOT NULL,
	-- 게시글 번호 
	boardnum number NOT NULL,
	PRIMARY KEY (replynum)
);


CREATE TABLE review
(
	-- 한줄평 번호 (라이브러리)
	reviewnum number NOT NULL,
	-- 한줄평 작성 날짜
	inputdate date,
	-- 한줄평 내용
	content varchar2(200),
	-- 한줄평 좋아요
	likecnt number,
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 책 번호
	booknum number NOT NULL,
	PRIMARY KEY (reviewnum)
);

CREATE TABLE shelf
(
	-- 내 서재에 등록된 책 수
	shelfnum number NOT NULL,
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 책 번호
	booknum number NOT NULL
);

ALTER TABLE comments
	ADD FOREIGN KEY (booknum)
	REFERENCES book (booknum)
;

ALTER TABLE essay
	ADD FOREIGN KEY (booknum)
	REFERENCES book (booknum)
;

ALTER TABLE review
	ADD FOREIGN KEY (booknum)
	REFERENCES book (booknum)
;

ALTER TABLE shelf
	ADD FOREIGN KEY (booknum)
	REFERENCES book (booknum)
;

ALTER TABLE genre
	ADD FOREIGN KEY (genre_num)
	REFERENCES genre_info (genre_num)
;

ALTER TABLE comments
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;

ALTER TABLE essay
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;

ALTER TABLE genre
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;

ALTER TABLE habit
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;

ALTER TABLE notice
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;

ALTER TABLE QnA
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;

ALTER TABLE QnA_reply
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;

ALTER TABLE review
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;

ALTER TABLE shelf
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;

ALTER TABLE QnA_reply
	ADD FOREIGN KEY (QnAnum)
	REFERENCES QnA (QnAnum)
;


COMMENT ON COLUMN comments.commentnum IS '나만 보는 리뷰 번호 (줄글)';
COMMENT ON COLUMN comments.content IS '나만 보는 리뷰 내용';
COMMENT ON COLUMN comments.id IS '회원 아이디';
COMMENT ON COLUMN comments.booknum IS '책 번호';
COMMENT ON COLUMN essay.essaynum IS '에세이(독후감) 번호 (남들 다 봄)';
COMMENT ON COLUMN essay.title IS '에세이 제목';
COMMENT ON COLUMN essay.content IS '에세이 내용';
COMMENT ON COLUMN essay.id IS '회원 아이디';
COMMENT ON COLUMN essay.inputdate IS '에세이 작성 일자';
COMMENT ON COLUMN essay.booknum IS '책 번호';
COMMENT ON COLUMN genre.id IS '회원 아이디';
COMMENT ON COLUMN habit.id IS '회원 아이디';
COMMENT ON COLUMN habit.time IS '독서 시간';
COMMENT ON COLUMN habit.amount IS '읽은 권수';
COMMENT ON COLUMN habit.inputdate IS '타임과 비교할 현재 시각';
COMMENT ON COLUMN members.id IS '회원 아이디';
COMMENT ON COLUMN members.password IS '회원 비밀번호';
COMMENT ON COLUMN members.name IS '회원 이름';
COMMENT ON COLUMN members.phone IS '회원 전화번호';
COMMENT ON COLUMN members.email IS '회원 이메일';
COMMENT ON COLUMN members.sub IS '회원 구독 정보';
COMMENT ON COLUMN notice.infonum IS '공지 번호';
COMMENT ON COLUMN notice.title IS '공지 제목';
COMMENT ON COLUMN notice.content IS '공지 내용';
COMMENT ON COLUMN notice.inputdate IS '공지 작성 일자';
COMMENT ON COLUMN notice.id IS '회원 아이디';
COMMENT ON COLUMN QnA.QnAnum IS '문의 번호';
COMMENT ON COLUMN QnA.QnAtitle IS '문의 제목';
COMMENT ON COLUMN QnA.QnAcontent IS '문의 내용';
COMMENT ON COLUMN QnA.inputdate IS '문의 작성 날짜';
COMMENT ON COLUMN QnA.id IS '회원 아이디';
COMMENT ON COLUMN QnA_reply.QnAreplynum IS 'QnA 댓글 번호';
COMMENT ON COLUMN QnA_reply.QnAnum IS '문의 번호';
COMMENT ON COLUMN QnA_reply.id IS '회원 아이디';
COMMENT ON COLUMN review.reviewnum IS '한줄평 번호 (라이브러리)';
COMMENT ON COLUMN review.inputdate IS '한줄평 작성 날짜';
COMMENT ON COLUMN review.content IS '한줄평 내용';
COMMENT ON COLUMN review.likecnt IS '한줄평 좋아요';
COMMENT ON COLUMN review.id IS '회원 아이디';
COMMENT ON COLUMN review.booknum IS '책 번호';
COMMENT ON COLUMN shelf.shelfnum IS '내 서재에 등록된 책 수';
COMMENT ON COLUMN shelf.id IS '회원 아이디';
COMMENT ON COLUMN shelf.booknum IS '책 번호';



-- 게시판 글 번호에 사용할 시퀀스
create sequence board_seq;

-- 게시글 댓글 번호에 사용할 시퀀스 
create sequence reply_seq;

-- 에세이 글 번호에 사용할 시퀀스
create sequence essay_seq;

-- 한줄평 댓글 번호에 사용할 시퀀스
create sequence review_seq;		