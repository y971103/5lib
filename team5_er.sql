
/* Drop Tables */

DROP TABLE reply CASCADE CONSTRAINTS;
DROP TABLE board CASCADE CONSTRAINTS;
DROP TABLE comments CASCADE CONSTRAINTS;
DROP TABLE essay CASCADE CONSTRAINTS;
DROP TABLE genre CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE shelf CASCADE CONSTRAINTS;
DROP TABLE kakaobook CASCADE CONSTRAINTS;
DROP TABLE genre_info CASCADE CONSTRAINTS;
DROP TABLE habit CASCADE CONSTRAINTS;
DROP TABLE members CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE board
(
	-- �Խñ� ��ȣ
	boardnum number NOT NULL,
	-- �Խñ� Ÿ��
	board_type number,
	-- ���� ����
	title varchar2(200),
	-- ��ȸ��
	hits number,
	-- ���� ����
	content varchar2(2000),
	-- ���� �ۼ� ����
	inputdate date DEFAULT SYSDATE,
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	PRIMARY KEY (boardnum)
);


CREATE TABLE comments
(
	-- ���� ���� ���� ��ȣ (�ٱ�)
	commentnum number NOT NULL,
	-- ���� ���� ���� ����
	content varchar2(2000),
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	-- å ��ȣ
	isbn varchar2(200) NOT NULL,
	PRIMARY KEY (commentnum)
);


CREATE TABLE essay
(
	-- ������(���İ�) ��ȣ (���� �� ��)
	essaynum number NOT NULL,
	-- ������ ����
	title varchar2(200),
	-- ������ ����
	content varchar2(2000),
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	-- ��ȸ��
	hits number,
	-- ������ �ۼ� ����
	inputdate date DEFAULT SYSDATE,
	-- å ��ȣ
	isbn varchar2(200) NOT NULL,
	PRIMARY KEY (essaynum)
);


CREATE TABLE genre
(
	-- ȸ�� ���̵�
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
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	-- ���� �ð�
	time number,
	-- ���� �Ǽ�
	amount number,
	-- Ÿ�Ӱ� ���� ���� �ð�
	inputdate date DEFAULT SYSDATE
);


CREATE TABLE kakaobook
(
	-- å ��ȣ
	isbn varchar2(200) NOT NULL,
	-- å ����
	title varchar2(200),
	-- �۰�
	author varchar2(20),
	-- ���ǻ�
	publisher varchar2(50),
	-- ���� ����
	datetime date,
	-- �帣
	genre_type number,
	-- å ����
	thumbnail number,
	content varchar2(2000),
	-- å ����
	bookfile number,
	genre_num number(2) NOT NULL,
	PRIMARY KEY (isbn)
);


CREATE TABLE members
(
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	-- ȸ�� ��й�ȣ
	password varchar2(20),
	-- ȸ�� �̸�
	name varchar2(20),
	-- ȸ�� ��ȭ��ȣ
	phone number,
	-- ȸ�� �̸���
	email varchar2(20),
	-- ȸ�� ���� ����
	sub number,
	genre_num number,
	PRIMARY KEY (id)
);


CREATE TABLE reply
(
	-- ��� ��ȣ
	replynum number NOT NULL,
	-- reply ����
	content varchar2(200),
	-- reply ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	-- �Խñ� ��ȣ
	boardnum number NOT NULL,
	PRIMARY KEY (replynum)
);


CREATE TABLE review
(
	-- ������ ��ȣ (���̺귯��)
	reviewnum number NOT NULL,
	-- ������ �ۼ� ��¥
	inputdate date,
	-- ������ ����
	content varchar2(200),
	-- ������ ���ƿ�
	likecnt number,
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	-- å ��ȣ
	isbn varchar2(200) NOT NULL,
	PRIMARY KEY (reviewnum)
);


CREATE TABLE shelf
(
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	-- å ��ȣ
	isbn varchar2(200) NOT NULL,
	-- �� ���翡 ��ϵ� å ��
	shelfnum number NOT NULL
);



/* Create Foreign Keys */

ALTER TABLE reply
	ADD FOREIGN KEY (boardnum)
	REFERENCES board (boardnum)
;


ALTER TABLE genre
	ADD FOREIGN KEY (genre_num)
	REFERENCES genre_info (genre_num)
;


ALTER TABLE kakaobook
	ADD FOREIGN KEY (genre_num)
	REFERENCES genre_info (genre_num)
;


ALTER TABLE comments
	ADD FOREIGN KEY (isbn)
	REFERENCES kakaobook (isbn)
;


ALTER TABLE essay
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


ALTER TABLE genre
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

COMMENT ON COLUMN board.boardnum IS '�Խñ� ��ȣ';
COMMENT ON COLUMN board.board_type IS '�Խñ� Ÿ��';
COMMENT ON COLUMN board.title IS '���� ����';
COMMENT ON COLUMN board.hits IS '��ȸ��';
COMMENT ON COLUMN board.content IS '���� ����';
COMMENT ON COLUMN board.inputdate IS '���� �ۼ� ����';
COMMENT ON COLUMN board.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN comments.commentnum IS '���� ���� ���� ��ȣ (�ٱ�)';
COMMENT ON COLUMN comments.content IS '���� ���� ���� ����';
COMMENT ON COLUMN comments.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN comments.isbn IS 'å ��ȣ';
COMMENT ON COLUMN essay.essaynum IS '������(���İ�) ��ȣ (���� �� ��)';
COMMENT ON COLUMN essay.title IS '������ ����';
COMMENT ON COLUMN essay.content IS '������ ����';
COMMENT ON COLUMN essay.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN essay.hits IS '��ȸ��';
COMMENT ON COLUMN essay.inputdate IS '������ �ۼ� ����';
COMMENT ON COLUMN essay.isbn IS 'å ��ȣ';
COMMENT ON COLUMN genre.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN habit.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN habit.time IS '���� �ð�';
COMMENT ON COLUMN habit.amount IS '���� �Ǽ�';
COMMENT ON COLUMN habit.inputdate IS 'Ÿ�Ӱ� ���� ���� �ð�';
COMMENT ON COLUMN kakaobook.isbn IS 'å ��ȣ';
COMMENT ON COLUMN kakaobook.title IS 'å ����';
COMMENT ON COLUMN kakaobook.author IS '�۰�';
COMMENT ON COLUMN kakaobook.publisher IS '���ǻ�';
COMMENT ON COLUMN kakaobook.datetime IS '���� ����';
COMMENT ON COLUMN kakaobook.genre_type IS '�帣';
COMMENT ON COLUMN kakaobook.thumbnail IS 'å ����';
COMMENT ON COLUMN kakaobook.bookfile IS 'å ����';
COMMENT ON COLUMN members.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN members.password IS 'ȸ�� ��й�ȣ';
COMMENT ON COLUMN members.name IS 'ȸ�� �̸�';
COMMENT ON COLUMN members.phone IS 'ȸ�� ��ȭ��ȣ';
COMMENT ON COLUMN members.email IS 'ȸ�� �̸���';
COMMENT ON COLUMN members.sub IS 'ȸ�� ���� ����';
COMMENT ON COLUMN reply.replynum IS '��� ��ȣ';
COMMENT ON COLUMN reply.content IS 'reply ����';
COMMENT ON COLUMN reply.id IS 'reply ȸ�� ���̵�';
COMMENT ON COLUMN reply.boardnum IS '�Խñ� ��ȣ';
COMMENT ON COLUMN review.reviewnum IS '������ ��ȣ (���̺귯��)';
COMMENT ON COLUMN review.inputdate IS '������ �ۼ� ��¥';
COMMENT ON COLUMN review.content IS '������ ����';
COMMENT ON COLUMN review.likecnt IS '������ ���ƿ�';
COMMENT ON COLUMN review.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN review.isbn IS 'å ��ȣ';
COMMENT ON COLUMN shelf.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN shelf.isbn IS 'å ��ȣ';
COMMENT ON COLUMN shelf.shelfnum IS '�� ���翡 ��ϵ� å ��';



