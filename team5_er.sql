
/* Drop Tables */

DROP TABLE reply CASCADE CONSTRAINTS;
DROP TABLE board CASCADE CONSTRAINTS;
DROP TABLE comments CASCADE CONSTRAINTS;
DROP TABLE essay CASCADE CONSTRAINTS;
DROP TABLE habit CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE shelf CASCADE CONSTRAINTS;
DROP TABLE kakaobook CASCADE CONSTRAINTS;
DROP TABLE members CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE board
(
	-- 게시글 번호
	boardnum number NOT NULL,
	-- 게시글 타입 (공지 / 문의)
	board_type number,
	-- 공지 제목
	title varchar2(200),
	-- 조회수
	hits number,
	-- 공지 내용
	content varchar2(2000),
	-- 공지 작성 일자
	inputdate date DEFAULT SYSDATE,
	-- 글 작성한 회원 아이디
	id varchar2(20) NOT NULL,
	PRIMARY KEY (boardnum)
);


CREATE TABLE comments
(
	-- 나만 보는 리뷰 번호 (줄글)
	commentnum number NOT NULL,
	-- 나만 보는 리뷰 내용
	content varchar2(2000),
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 책 번호
	isbn varchar2(200) NOT NULL,
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
	-- 조회수
	hits number,
	-- 에세이 작성 일자
	inputdate date DEFAULT SYSDATE,
	PRIMARY KEY (essaynum)
);


CREATE TABLE habit
(
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 독서 시간
	time number,
	-- 뷰어를 연 시각
	inputdate date DEFAULT SYSDATE,
	-- 읽은 도서
	isbn varchar2(200) NOT NULL,
	-- 뷰어 연 횟수(sum으로 계산)
	hits number DEFAULT 0 NOT NULL
);


CREATE TABLE kakaobook
(
	-- 책 번호
	isbn varchar2(200) NOT NULL,
	-- 책 제목
	title varchar2(200),
	-- 작가
	author varchar2(20),
	-- 책 소개
	contents varchar2(2000),
	-- 출판 일자
	datetime varchar2(100),
	-- 출판사
	publisher varchar2(50),
	-- 책 사진
	thumbnail varchar2(200),
	-- 책번호
	booknum number,
	-- 장르
	genre varchar2(200),
	-- 베스트셀러용 책 조회수
	hits number DEFAULT 0 NOT NULL,
	PRIMARY KEY (isbn)
);


CREATE TABLE members
(
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 회원 비밀번호
	password varchar2(20),
	-- 회원 이름
	name varchar2(20),
	-- 회원 전화번호
	phone varchar2(20),
	-- 회원 이메일
	email varchar2(20),
	-- 회원 구독 정보
	sub varchar2(20),
	-- 선호 장르
	genre varchar2(50),
	PRIMARY KEY (id)
);


CREATE TABLE reply
(
	-- 댓글 번호
	replynum number NOT NULL,
	-- 댓글 내용
	content varchar2(200),
	-- 댓글 작성 회원 아이디
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
	inputdate date DEFAULT SYSDATE,
	-- 한줄평 내용
	content varchar2(200),
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 책 번호
	isbn varchar2(200) NOT NULL,
	PRIMARY KEY (reviewnum)
);


CREATE TABLE shelf
(
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 책 번호
	isbn varchar2(200) NOT NULL,
	-- 내서재에 찜한 날짜
	inputdate date DEFAULT SYSDATE,
	-- 찜한 도서의 작가
	authors varchar2(20),
	-- 찜한 도서의 제목
	title varchar2(200),
	-- 찜한 도서의 표지
	thumbnail varchar2(200)
);



/* Create Foreign Keys */

ALTER TABLE reply
	ADD FOREIGN KEY (boardnum)
	REFERENCES board (boardnum)
;


ALTER TABLE comments
	ADD FOREIGN KEY (isbn)
	REFERENCES kakaobook (isbn)
;


ALTER TABLE review
	ADD FOREIGN KEY (isbn)
	REFERENCES kakaobook (isbn)
;


ALTER TABLE shelf
	ADD FOREIGN KEY (isbn)
	REFERENCES kakaobook (isbn)
;


ALTER TABLE board
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;


ALTER TABLE comments
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;


ALTER TABLE essay
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;


ALTER TABLE habit
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;


ALTER TABLE reply
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



/* Comments */

COMMENT ON COLUMN board.boardnum IS '게시글 번호';
COMMENT ON COLUMN board.board_type IS '게시글 타입 (공지 / 문의)';
COMMENT ON COLUMN board.title IS '공지 제목';
COMMENT ON COLUMN board.hits IS '조회수';
COMMENT ON COLUMN board.content IS '공지 내용';
COMMENT ON COLUMN board.inputdate IS '공지 작성 일자';
COMMENT ON COLUMN board.id IS '글 작성한 회원 아이디';
COMMENT ON COLUMN comments.commentnum IS '나만 보는 리뷰 번호 (줄글)';
COMMENT ON COLUMN comments.content IS '나만 보는 리뷰 내용';
COMMENT ON COLUMN comments.id IS '회원 아이디';
COMMENT ON COLUMN comments.isbn IS '책 번호';
COMMENT ON COLUMN essay.essaynum IS '에세이(독후감) 번호 (남들 다 봄)';
COMMENT ON COLUMN essay.title IS '에세이 제목';
COMMENT ON COLUMN essay.content IS '에세이 내용';
COMMENT ON COLUMN essay.id IS '회원 아이디';
COMMENT ON COLUMN essay.hits IS '조회수';
COMMENT ON COLUMN essay.inputdate IS '에세이 작성 일자';
COMMENT ON COLUMN habit.id IS '회원 아이디';
COMMENT ON COLUMN habit.time IS '독서 시간';
COMMENT ON COLUMN habit.inputdate IS '뷰어를 연 시각';
COMMENT ON COLUMN habit.isbn IS '읽은 도서';
COMMENT ON COLUMN habit.hits IS '뷰어 연 횟수(sum으로 계산)';
COMMENT ON COLUMN kakaobook.isbn IS '책 번호';
COMMENT ON COLUMN kakaobook.title IS '책 제목';
COMMENT ON COLUMN kakaobook.author IS '작가';
COMMENT ON COLUMN kakaobook.content IS '책 소개';
COMMENT ON COLUMN kakaobook.datetime IS '출판 일자';
COMMENT ON COLUMN kakaobook.publisher IS '출판사';
COMMENT ON COLUMN kakaobook.thumbnail IS '책 사진';
COMMENT ON COLUMN kakaobook.booknum IS '책번호';
COMMENT ON COLUMN kakaobook.genre IS '장르';
COMMENT ON COLUMN kakaobook.hits IS '베스트셀러용 책 조회수';
COMMENT ON COLUMN members.id IS '회원 아이디';
COMMENT ON COLUMN members.password IS '회원 비밀번호';
COMMENT ON COLUMN members.name IS '회원 이름';
COMMENT ON COLUMN members.phone IS '회원 전화번호';
COMMENT ON COLUMN members.email IS '회원 이메일';
COMMENT ON COLUMN members.sub IS '회원 구독 정보';
COMMENT ON COLUMN members.genre IS '선호 장르';
COMMENT ON COLUMN reply.replynum IS '댓글 번호';
COMMENT ON COLUMN reply.content IS '댓글 내용';
COMMENT ON COLUMN reply.id IS '댓글 작성 회원 아이디';
COMMENT ON COLUMN reply.boardnum IS '게시글 번호';
COMMENT ON COLUMN review.reviewnum IS '한줄평 번호 (라이브러리)';
COMMENT ON COLUMN review.inputdate IS '한줄평 작성 날짜';
COMMENT ON COLUMN review.content IS '한줄평 내용';
COMMENT ON COLUMN review.id IS '회원 아이디';
COMMENT ON COLUMN review.isbn IS '책 번호';
COMMENT ON COLUMN shelf.id IS '회원 아이디';
COMMENT ON COLUMN shelf.isbn IS '책 번호';
COMMENT ON COLUMN shelf.inputdate IS '내서재에 찜한 날짜';
COMMENT ON COLUMN shelf.authors IS '찜한 도서의 작가';
COMMENT ON COLUMN shelf.title IS '찜한 도서의 제목';
COMMENT ON COLUMN shelf.thumbnail IS '찜한 도서의 표지';



