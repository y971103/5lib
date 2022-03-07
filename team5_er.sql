
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
	-- �Խñ� ��ȣ
	boardnum number NOT NULL,
	-- �Խñ� Ÿ�� (���� / ����)
	board_type number,
	-- ���� ����
	title varchar2(200),
	-- ��ȸ��
	hits number,
	-- ���� ����
	content varchar2(2000),
	-- ���� �ۼ� ����
	inputdate date DEFAULT SYSDATE,
	-- �� �ۼ��� ȸ�� ���̵�
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
	PRIMARY KEY (essaynum)
);


CREATE TABLE habit
(
	-- ȸ�� ���̵�
	id varchar2(20) NOT NULL,
	-- ���� �ð�
	time number,
	-- �� �� �ð�
	inputdate date DEFAULT SYSDATE,
	-- ���� ����
	isbn varchar2(200) NOT NULL,
	-- ��� �� Ƚ��(sum���� ���)
	hits number DEFAULT 0 NOT NULL
);


CREATE TABLE kakaobook
(
	-- å ��ȣ
	isbn varchar2(200) NOT NULL,
	-- å ����
	title varchar2(200),
	-- �۰�
	author varchar2(20),
	-- å �Ұ�
	contents varchar2(2000),
	-- ���� ����
	datetime varchar2(100),
	-- ���ǻ�
	publisher varchar2(50),
	-- å ����
	thumbnail varchar2(200),
	-- å��ȣ
	booknum number,
	-- �帣
	genre varchar2(200),
	-- ����Ʈ������ å ��ȸ��
	hits number DEFAULT 0 NOT NULL,
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
	phone varchar2(20),
	-- ȸ�� �̸���
	email varchar2(20),
	-- ȸ�� ���� ����
	sub varchar2(20),
	-- ��ȣ �帣
	genre varchar2(50),
	PRIMARY KEY (id)
);


CREATE TABLE reply
(
	-- ��� ��ȣ
	replynum number NOT NULL,
	-- ��� ����
	content varchar2(200),
	-- ��� �ۼ� ȸ�� ���̵�
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
	inputdate date DEFAULT SYSDATE,
	-- ������ ����
	content varchar2(200),
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
	-- �����翡 ���� ��¥
	inputdate date DEFAULT SYSDATE,
	-- ���� ������ �۰�
	authors varchar2(20),
	-- ���� ������ ����
	title varchar2(200),
	-- ���� ������ ǥ��
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

COMMENT ON COLUMN board.boardnum IS '�Խñ� ��ȣ';
COMMENT ON COLUMN board.board_type IS '�Խñ� Ÿ�� (���� / ����)';
COMMENT ON COLUMN board.title IS '���� ����';
COMMENT ON COLUMN board.hits IS '��ȸ��';
COMMENT ON COLUMN board.content IS '���� ����';
COMMENT ON COLUMN board.inputdate IS '���� �ۼ� ����';
COMMENT ON COLUMN board.id IS '�� �ۼ��� ȸ�� ���̵�';
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
COMMENT ON COLUMN habit.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN habit.time IS '���� �ð�';
COMMENT ON COLUMN habit.inputdate IS '�� �� �ð�';
COMMENT ON COLUMN habit.isbn IS '���� ����';
COMMENT ON COLUMN habit.hits IS '��� �� Ƚ��(sum���� ���)';
COMMENT ON COLUMN kakaobook.isbn IS 'å ��ȣ';
COMMENT ON COLUMN kakaobook.title IS 'å ����';
COMMENT ON COLUMN kakaobook.author IS '�۰�';
COMMENT ON COLUMN kakaobook.content IS 'å �Ұ�';
COMMENT ON COLUMN kakaobook.datetime IS '���� ����';
COMMENT ON COLUMN kakaobook.publisher IS '���ǻ�';
COMMENT ON COLUMN kakaobook.thumbnail IS 'å ����';
COMMENT ON COLUMN kakaobook.booknum IS 'å��ȣ';
COMMENT ON COLUMN kakaobook.genre IS '�帣';
COMMENT ON COLUMN kakaobook.hits IS '����Ʈ������ å ��ȸ��';
COMMENT ON COLUMN members.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN members.password IS 'ȸ�� ��й�ȣ';
COMMENT ON COLUMN members.name IS 'ȸ�� �̸�';
COMMENT ON COLUMN members.phone IS 'ȸ�� ��ȭ��ȣ';
COMMENT ON COLUMN members.email IS 'ȸ�� �̸���';
COMMENT ON COLUMN members.sub IS 'ȸ�� ���� ����';
COMMENT ON COLUMN members.genre IS '��ȣ �帣';
COMMENT ON COLUMN reply.replynum IS '��� ��ȣ';
COMMENT ON COLUMN reply.content IS '��� ����';
COMMENT ON COLUMN reply.id IS '��� �ۼ� ȸ�� ���̵�';
COMMENT ON COLUMN reply.boardnum IS '�Խñ� ��ȣ';
COMMENT ON COLUMN review.reviewnum IS '������ ��ȣ (���̺귯��)';
COMMENT ON COLUMN review.inputdate IS '������ �ۼ� ��¥';
COMMENT ON COLUMN review.content IS '������ ����';
COMMENT ON COLUMN review.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN review.isbn IS 'å ��ȣ';
COMMENT ON COLUMN shelf.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN shelf.isbn IS 'å ��ȣ';
COMMENT ON COLUMN shelf.inputdate IS '�����翡 ���� ��¥';
COMMENT ON COLUMN shelf.authors IS '���� ������ �۰�';
COMMENT ON COLUMN shelf.title IS '���� ������ ����';
COMMENT ON COLUMN shelf.thumbnail IS '���� ������ ǥ��';



