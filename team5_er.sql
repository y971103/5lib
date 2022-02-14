
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
	-- å ��ȣ
	booknum number NOT NULL,
	-- å ����
	title varchar2(200),
	-- �۰�
	author varchar2(20),
	-- ���ǻ�
	publisher varchar2(50),
	-- ���� ����
	p_date date,
	-- ����
	score float,
	-- �帣
	genre_type number,
	-- å ����
	book_photo number,
	-- å ����
	bookfile number,
	genre_num number(2) NOT NULL,
	PRIMARY KEY (booknum)
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
	booknum number NOT NULL,
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
	-- ������ �ۼ� ����
	inputdate date DEFAULT SYSDATE,
	-- å ��ȣ
	booknum number NOT NULL,
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


CREATE TABLE notice
(
	-- ���� ��ȣ
	infonum number NOT NULL,
	-- ���� ����
	title varchar2(200),
	-- ���� ����
	content varchar2(2000),
	-- ���� �ۼ� ����
	inputdate date DEFAULT SYSDATE,
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	PRIMARY KEY (infonum)
);


CREATE TABLE QnA
(
	-- ���� ��ȣ
	QnAnum number NOT NULL,
	-- ���� ����
	QnAtitle varchar2(200),
	-- ���� ����
	QnAcontent varchar2(2000),
	-- ���� �ۼ� ��¥
	inputdate date DEFAULT SYSDATE,
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	PRIMARY KEY (QnAnum)
);


CREATE TABLE QnA_reply
(
	-- QnA ��� ��ȣ
	QnAreplynum number NOT NULL,
	content varchar2(200),
	-- ���� ��ȣ
	QnAnum number NOT NULL,
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	PRIMARY KEY (QnAreplynum)
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
	booknum number NOT NULL,
	PRIMARY KEY (reviewnum)
);


CREATE TABLE shelf
(
	-- �� ���翡 ��ϵ� å ��
	shelfnum number NOT NULL,
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	-- å ��ȣ
	booknum number NOT NULL,
	PRIMARY KEY (shelfnum)
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
COMMENT ON COLUMN notice.content IS '���� ����';
COMMENT ON COLUMN notice.inputdate IS '���� �ۼ� ����';
COMMENT ON COLUMN notice.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN QnA.QnAnum IS '���� ��ȣ';
COMMENT ON COLUMN QnA.QnAtitle IS '���� ����';
COMMENT ON COLUMN QnA.QnAcontent IS '���� ����';
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
COMMENT ON COLUMN shelf.shelfnum IS '�� ���翡 ��ϵ� å ��';
COMMENT ON COLUMN shelf.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN shelf.booknum IS 'å ��ȣ';



