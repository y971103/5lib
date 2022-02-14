
/* Drop Tables */

DROP TABLE comments CASCADE CONSTRAINTS;
DROP TABLE essay CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE shelf CASCADE CONSTRAINTS;
DROP TABLE book CASCADE CONSTRAINTS;
DROP TABLE genre CASCADE CONSTRAINTS;
DROP TABLE genre_info CASCADE CONSTRAINTS;
DROP TABLE habit CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE QnA_reply CASCADE CONSTRAINTS;
DROP TABLE QnA CASCADE CONSTRAINTS;
DROP TABLE members CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE book
(
	-- 책 번호
	booknum number NOT NULL,
	-- 책 제목
	title varchar2(200),
	-- 작가
	author varchar2(20),
	-- 출판사
	publisher varchar2(50),
	-- 출판 일자
	p_date date,
	-- 평점
	score float,
	-- 장르
	genre_type number,
	-- 책 소개글
	introduce varchar2(2000),
	-- 책 사진
	book_photo number,
<<<<<<< HEAD
	-- 책 파일
=======
	book_introduce varchar2(2000),
	-- å ����
>>>>>>> 844147ebadfdc44cd94a0f6d04f214640af6d069
	bookfile number,
	genre_num number(2) NOT NULL,
	PRIMARY KEY (booknum)
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
<<<<<<< HEAD
	-- 에세이 작성 일자
=======
	-- ��ȸ��
	hits number,
	-- ������ �ۼ� ����
>>>>>>> 844147ebadfdc44cd94a0f6d04f214640af6d069
	inputdate date DEFAULT SYSDATE,
	-- 책 번호
	booknum number NOT NULL,
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
	password varchar2(20),
	-- 회원 이름
	name varchar2(20),
	-- 회원 전화번호
	phone number,
	-- 회원 이메일
	email varchar2(20),
	-- 회원 구독 정보
	sub number,
	genre_num number,
	PRIMARY KEY (id)
);


CREATE TABLE notice
(
	-- 공지 번호
	infonum number NOT NULL,
	-- 공지 제목
	title varchar2(200),
<<<<<<< HEAD
	-- 공지 내용
=======
	-- ��ȸ��
	hits number,
	-- ���� ����
>>>>>>> 844147ebadfdc44cd94a0f6d04f214640af6d069
	content varchar2(2000),
	-- 공지 작성 일자
	inputdate date DEFAULT SYSDATE,
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 조회수
	hits number,
	PRIMARY KEY (infonum)
);


CREATE TABLE QnA
(
	-- 문의 번호
	QnAnum number NOT NULL,
	-- 문의 제목
	QnAtitle varchar2(200),
	-- 문의 내용
	QnAcontent varchar2(2000),
<<<<<<< HEAD
	-- 문의 작성 날짜
=======
	-- ��ȸ��
	hits number,
	-- ���� �ۼ� ��¥
>>>>>>> 844147ebadfdc44cd94a0f6d04f214640af6d069
	inputdate date DEFAULT SYSDATE,
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 조회수
	hits number,
	PRIMARY KEY (QnAnum)
);


CREATE TABLE QnA_reply
(
	-- QnA 댓글 번호
	QnAreplynum number NOT NULL,
	content varchar2(200),
	-- 문의 번호
	QnAnum number NOT NULL,
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	PRIMARY KEY (QnAreplynum)
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
<<<<<<< HEAD
	-- 내 서재에 등록된 책 수
	shelfnum number NOT NULL,
	-- 회원 아이디
	id varchar2(20) NOT NULL,
	-- 책 번호
	booknum number NOT NULL
=======
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	-- å ��ȣ
	booknum number NOT NULL,
	-- �� ���翡 ��ϵ� å ��
	shelfnum number NOT NULL
>>>>>>> 844147ebadfdc44cd94a0f6d04f214640af6d069
);



/* Create Foreign Keys */

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


ALTER TABLE book
	ADD FOREIGN KEY (genre_num)
	REFERENCES genre_info (genre_num)
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



/* Comments */

<<<<<<< HEAD
COMMENT ON COLUMN book.booknum IS '책 번호';
COMMENT ON COLUMN book.title IS '책 제목';
COMMENT ON COLUMN book.author IS '작가';
COMMENT ON COLUMN book.publisher IS '출판사';
COMMENT ON COLUMN book.p_date IS '출판 일자';
COMMENT ON COLUMN book.score IS '평점';
COMMENT ON COLUMN book.genre_type IS '장르';
COMMENT ON COLUMN book.book_photo IS '책 사진';
COMMENT ON COLUMN book.bookfile IS '책 파일';
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
=======
COMMENT ON COLUMN book.booknum IS 'å ��ȣ';
COMMENT ON COLUMN book.title IS 'å ����';
COMMENT ON COLUMN book.author IS '�۰�';
COMMENT ON COLUMN book.publisher IS '���ǻ�';
COMMENT ON COLUMN book.p_date IS '���� ����';
COMMENT ON COLUMN book.score IS '����';
COMMENT ON COLUMN book.genre_type IS '�帣';
COMMENT ON COLUMN book.book_photo IS 'å ����';
COMMENT ON COLUMN book.bookfile IS 'å ����';
COMMENT ON COLUMN comments.commentnum IS '���� ���� ���� ��ȣ (�ٱ�)';
COMMENT ON COLUMN comments.content IS '���� ���� ���� ����';
COMMENT ON COLUMN comments.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN comments.booknum IS 'å ��ȣ';
COMMENT ON COLUMN essay.essaynum IS '������(���İ�) ��ȣ (���� �� ��)';
COMMENT ON COLUMN essay.title IS '������ ����';
COMMENT ON COLUMN essay.content IS '������ ����';
COMMENT ON COLUMN essay.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN essay.hits IS '��ȸ��';
COMMENT ON COLUMN essay.inputdate IS '������ �ۼ� ����';
COMMENT ON COLUMN essay.booknum IS 'å ��ȣ';
COMMENT ON COLUMN genre.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN habit.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN habit.time IS '���� �ð�';
COMMENT ON COLUMN habit.amount IS '���� �Ǽ�';
COMMENT ON COLUMN habit.inputdate IS 'Ÿ�Ӱ� ���� ���� �ð�';
COMMENT ON COLUMN members.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN members.password IS 'ȸ�� ��й�ȣ';
COMMENT ON COLUMN members.name IS 'ȸ�� �̸�';
COMMENT ON COLUMN members.phone IS 'ȸ�� ��ȭ��ȣ';
COMMENT ON COLUMN members.email IS 'ȸ�� �̸���';
COMMENT ON COLUMN members.sub IS 'ȸ�� ���� ����';
COMMENT ON COLUMN notice.infonum IS '���� ��ȣ';
COMMENT ON COLUMN notice.title IS '���� ����';
COMMENT ON COLUMN notice.hits IS '��ȸ��';
COMMENT ON COLUMN notice.content IS '���� ����';
COMMENT ON COLUMN notice.inputdate IS '���� �ۼ� ����';
COMMENT ON COLUMN notice.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN QnA.QnAnum IS '���� ��ȣ';
COMMENT ON COLUMN QnA.QnAtitle IS '���� ����';
COMMENT ON COLUMN QnA.QnAcontent IS '���� ����';
COMMENT ON COLUMN QnA.hits IS '��ȸ��';
COMMENT ON COLUMN QnA.inputdate IS '���� �ۼ� ��¥';
COMMENT ON COLUMN QnA.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN QnA_reply.QnAreplynum IS 'QnA ��� ��ȣ';
COMMENT ON COLUMN QnA_reply.QnAnum IS '���� ��ȣ';
COMMENT ON COLUMN QnA_reply.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN review.reviewnum IS '������ ��ȣ (���̺귯��)';
COMMENT ON COLUMN review.inputdate IS '������ �ۼ� ��¥';
COMMENT ON COLUMN review.content IS '������ ����';
COMMENT ON COLUMN review.likecnt IS '������ ���ƿ�';
COMMENT ON COLUMN review.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN review.booknum IS 'å ��ȣ';
COMMENT ON COLUMN shelf.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN shelf.booknum IS 'å ��ȣ';
COMMENT ON COLUMN shelf.shelfnum IS '�� ���翡 ��ϵ� å ��';
>>>>>>> 844147ebadfdc44cd94a0f6d04f214640af6d069



