
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
	-- ì±… ë²ˆí˜¸
	booknum number NOT NULL,
	-- ì±… ì œëª©
	title varchar2(200),
	-- ì‘ê°€
	author varchar2(20),
	-- ì¶œíŒì‚¬
	publisher varchar2(50),
	-- ì¶œíŒ ì¼ì
	p_date date,
	-- í‰ì 
	score float,
	-- ì¥ë¥´
	genre_type number,
	-- ì±… ì†Œê°œê¸€
	introduce varchar2(2000),
	-- ì±… ì‚¬ì§„
	book_photo number,
<<<<<<< HEAD
	-- ì±… íŒŒì¼
=======
	book_introduce varchar2(2000),
	-- Ã¥ ÆÄÀÏ
>>>>>>> 844147ebadfdc44cd94a0f6d04f214640af6d069
	bookfile number,
	genre_num number(2) NOT NULL,
	PRIMARY KEY (booknum)
);


CREATE TABLE comments
(
	-- ë‚˜ë§Œ ë³´ëŠ” ë¦¬ë·° ë²ˆí˜¸ (ì¤„ê¸€)
	commentnum number NOT NULL,
	-- ë‚˜ë§Œ ë³´ëŠ” ë¦¬ë·° ë‚´ìš©
	content varchar2(2000),
	-- íšŒì› ì•„ì´ë””
	id varchar2(20) NOT NULL,
	-- ì±… ë²ˆí˜¸
	booknum number NOT NULL,
	PRIMARY KEY (commentnum)
);


CREATE TABLE essay
(
	-- ì—ì„¸ì´(ë…í›„ê°) ë²ˆí˜¸ (ë‚¨ë“¤ ë‹¤ ë´„)
	essaynum number NOT NULL,
	-- ì—ì„¸ì´ ì œëª©
	title varchar2(200),
	-- ì—ì„¸ì´ ë‚´ìš©
	content varchar2(2000),
	-- íšŒì› ì•„ì´ë””
	id varchar2(20) NOT NULL,
<<<<<<< HEAD
	-- ì—ì„¸ì´ ì‘ì„± ì¼ì
=======
	-- Á¶È¸¼ö
	hits number,
	-- ¿¡¼¼ÀÌ ÀÛ¼º ÀÏÀÚ
>>>>>>> 844147ebadfdc44cd94a0f6d04f214640af6d069
	inputdate date DEFAULT SYSDATE,
	-- ì±… ë²ˆí˜¸
	booknum number NOT NULL,
	-- ì¡°íšŒìˆ˜
	hits number,
	PRIMARY KEY (essaynum)
);


CREATE TABLE genre
(
	-- íšŒì› ì•„ì´ë””
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
	-- íšŒì› ì•„ì´ë””
	id varchar2(20) NOT NULL,
	-- ë…ì„œ ì‹œê°„
	time number,
	-- ì½ì€ ê¶Œìˆ˜
	amount number,
	-- íƒ€ì„ê³¼ ë¹„êµí•  í˜„ì¬ ì‹œê°
	inputdate date DEFAULT SYSDATE
);


CREATE TABLE members
(
	-- íšŒì› ì•„ì´ë””
	id varchar2(20) NOT NULL,
	-- íšŒì› ë¹„ë°€ë²ˆí˜¸
	password varchar2(20),
	-- íšŒì› ì´ë¦„
	name varchar2(20),
	-- íšŒì› ì „í™”ë²ˆí˜¸
	phone number,
	-- íšŒì› ì´ë©”ì¼
	email varchar2(20),
	-- íšŒì› êµ¬ë… ì •ë³´
	sub number,
	genre_num number,
	PRIMARY KEY (id)
);


CREATE TABLE notice
(
	-- ê³µì§€ ë²ˆí˜¸
	infonum number NOT NULL,
	-- ê³µì§€ ì œëª©
	title varchar2(200),
<<<<<<< HEAD
	-- ê³µì§€ ë‚´ìš©
=======
	-- Á¶È¸¼ö
	hits number,
	-- °øÁö ³»¿ë
>>>>>>> 844147ebadfdc44cd94a0f6d04f214640af6d069
	content varchar2(2000),
	-- ê³µì§€ ì‘ì„± ì¼ì
	inputdate date DEFAULT SYSDATE,
	-- íšŒì› ì•„ì´ë””
	id varchar2(20) NOT NULL,
	-- ì¡°íšŒìˆ˜
	hits number,
	PRIMARY KEY (infonum)
);


CREATE TABLE QnA
(
	-- ë¬¸ì˜ ë²ˆí˜¸
	QnAnum number NOT NULL,
	-- ë¬¸ì˜ ì œëª©
	QnAtitle varchar2(200),
	-- ë¬¸ì˜ ë‚´ìš©
	QnAcontent varchar2(2000),
<<<<<<< HEAD
	-- ë¬¸ì˜ ì‘ì„± ë‚ ì§œ
=======
	-- Á¶È¸¼ö
	hits number,
	-- ¹®ÀÇ ÀÛ¼º ³¯Â¥
>>>>>>> 844147ebadfdc44cd94a0f6d04f214640af6d069
	inputdate date DEFAULT SYSDATE,
	-- íšŒì› ì•„ì´ë””
	id varchar2(20) NOT NULL,
	-- ì¡°íšŒìˆ˜
	hits number,
	PRIMARY KEY (QnAnum)
);


CREATE TABLE QnA_reply
(
	-- QnA ëŒ“ê¸€ ë²ˆí˜¸
	QnAreplynum number NOT NULL,
	content varchar2(200),
	-- ë¬¸ì˜ ë²ˆí˜¸
	QnAnum number NOT NULL,
	-- íšŒì› ì•„ì´ë””
	id varchar2(20) NOT NULL,
	PRIMARY KEY (QnAreplynum)
);


CREATE TABLE review
(
	-- í•œì¤„í‰ ë²ˆí˜¸ (ë¼ì´ë¸ŒëŸ¬ë¦¬)
	reviewnum number NOT NULL,
	-- í•œì¤„í‰ ì‘ì„± ë‚ ì§œ
	inputdate date,
	-- í•œì¤„í‰ ë‚´ìš©
	content varchar2(200),
	-- í•œì¤„í‰ ì¢‹ì•„ìš”
	likecnt number,
	-- íšŒì› ì•„ì´ë””
	id varchar2(20) NOT NULL,
	-- ì±… ë²ˆí˜¸
	booknum number NOT NULL,
	PRIMARY KEY (reviewnum)
);


CREATE TABLE shelf
(
<<<<<<< HEAD
	-- ë‚´ ì„œì¬ì— ë“±ë¡ëœ ì±… ìˆ˜
	shelfnum number NOT NULL,
	-- íšŒì› ì•„ì´ë””
	id varchar2(20) NOT NULL,
	-- ì±… ë²ˆí˜¸
	booknum number NOT NULL
=======
	-- È¸¿ø ¾ÆÀÌµğ
	id varchar2(20) NOT NULL,
	-- Ã¥ ¹øÈ£
	booknum number NOT NULL,
	-- ³» ¼­Àç¿¡ µî·ÏµÈ Ã¥ ¼ö
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
COMMENT ON COLUMN book.booknum IS 'ì±… ë²ˆí˜¸';
COMMENT ON COLUMN book.title IS 'ì±… ì œëª©';
COMMENT ON COLUMN book.author IS 'ì‘ê°€';
COMMENT ON COLUMN book.publisher IS 'ì¶œíŒì‚¬';
COMMENT ON COLUMN book.p_date IS 'ì¶œíŒ ì¼ì';
COMMENT ON COLUMN book.score IS 'í‰ì ';
COMMENT ON COLUMN book.genre_type IS 'ì¥ë¥´';
COMMENT ON COLUMN book.book_photo IS 'ì±… ì‚¬ì§„';
COMMENT ON COLUMN book.bookfile IS 'ì±… íŒŒì¼';
COMMENT ON COLUMN comments.commentnum IS 'ë‚˜ë§Œ ë³´ëŠ” ë¦¬ë·° ë²ˆí˜¸ (ì¤„ê¸€)';
COMMENT ON COLUMN comments.content IS 'ë‚˜ë§Œ ë³´ëŠ” ë¦¬ë·° ë‚´ìš©';
COMMENT ON COLUMN comments.id IS 'íšŒì› ì•„ì´ë””';
COMMENT ON COLUMN comments.booknum IS 'ì±… ë²ˆí˜¸';
COMMENT ON COLUMN essay.essaynum IS 'ì—ì„¸ì´(ë…í›„ê°) ë²ˆí˜¸ (ë‚¨ë“¤ ë‹¤ ë´„)';
COMMENT ON COLUMN essay.title IS 'ì—ì„¸ì´ ì œëª©';
COMMENT ON COLUMN essay.content IS 'ì—ì„¸ì´ ë‚´ìš©';
COMMENT ON COLUMN essay.id IS 'íšŒì› ì•„ì´ë””';
COMMENT ON COLUMN essay.inputdate IS 'ì—ì„¸ì´ ì‘ì„± ì¼ì';
COMMENT ON COLUMN essay.booknum IS 'ì±… ë²ˆí˜¸';
COMMENT ON COLUMN genre.id IS 'íšŒì› ì•„ì´ë””';
COMMENT ON COLUMN habit.id IS 'íšŒì› ì•„ì´ë””';
COMMENT ON COLUMN habit.time IS 'ë…ì„œ ì‹œê°„';
COMMENT ON COLUMN habit.amount IS 'ì½ì€ ê¶Œìˆ˜';
COMMENT ON COLUMN habit.inputdate IS 'íƒ€ì„ê³¼ ë¹„êµí•  í˜„ì¬ ì‹œê°';
COMMENT ON COLUMN members.id IS 'íšŒì› ì•„ì´ë””';
COMMENT ON COLUMN members.password IS 'íšŒì› ë¹„ë°€ë²ˆí˜¸';
COMMENT ON COLUMN members.name IS 'íšŒì› ì´ë¦„';
COMMENT ON COLUMN members.phone IS 'íšŒì› ì „í™”ë²ˆí˜¸';
COMMENT ON COLUMN members.email IS 'íšŒì› ì´ë©”ì¼';
COMMENT ON COLUMN members.sub IS 'íšŒì› êµ¬ë… ì •ë³´';
COMMENT ON COLUMN notice.infonum IS 'ê³µì§€ ë²ˆí˜¸';
COMMENT ON COLUMN notice.title IS 'ê³µì§€ ì œëª©';
COMMENT ON COLUMN notice.content IS 'ê³µì§€ ë‚´ìš©';
COMMENT ON COLUMN notice.inputdate IS 'ê³µì§€ ì‘ì„± ì¼ì';
COMMENT ON COLUMN notice.id IS 'íšŒì› ì•„ì´ë””';
COMMENT ON COLUMN QnA.QnAnum IS 'ë¬¸ì˜ ë²ˆí˜¸';
COMMENT ON COLUMN QnA.QnAtitle IS 'ë¬¸ì˜ ì œëª©';
COMMENT ON COLUMN QnA.QnAcontent IS 'ë¬¸ì˜ ë‚´ìš©';
COMMENT ON COLUMN QnA.inputdate IS 'ë¬¸ì˜ ì‘ì„± ë‚ ì§œ';
COMMENT ON COLUMN QnA.id IS 'íšŒì› ì•„ì´ë””';
COMMENT ON COLUMN QnA_reply.QnAreplynum IS 'QnA ëŒ“ê¸€ ë²ˆí˜¸';
COMMENT ON COLUMN QnA_reply.QnAnum IS 'ë¬¸ì˜ ë²ˆí˜¸';
COMMENT ON COLUMN QnA_reply.id IS 'íšŒì› ì•„ì´ë””';
COMMENT ON COLUMN review.reviewnum IS 'í•œì¤„í‰ ë²ˆí˜¸ (ë¼ì´ë¸ŒëŸ¬ë¦¬)';
COMMENT ON COLUMN review.inputdate IS 'í•œì¤„í‰ ì‘ì„± ë‚ ì§œ';
COMMENT ON COLUMN review.content IS 'í•œì¤„í‰ ë‚´ìš©';
COMMENT ON COLUMN review.likecnt IS 'í•œì¤„í‰ ì¢‹ì•„ìš”';
COMMENT ON COLUMN review.id IS 'íšŒì› ì•„ì´ë””';
COMMENT ON COLUMN review.booknum IS 'ì±… ë²ˆí˜¸';
COMMENT ON COLUMN shelf.shelfnum IS 'ë‚´ ì„œì¬ì— ë“±ë¡ëœ ì±… ìˆ˜';
COMMENT ON COLUMN shelf.id IS 'íšŒì› ì•„ì´ë””';
COMMENT ON COLUMN shelf.booknum IS 'ì±… ë²ˆí˜¸';
=======
COMMENT ON COLUMN book.booknum IS 'Ã¥ ¹øÈ£';
COMMENT ON COLUMN book.title IS 'Ã¥ Á¦¸ñ';
COMMENT ON COLUMN book.author IS 'ÀÛ°¡';
COMMENT ON COLUMN book.publisher IS 'ÃâÆÇ»ç';
COMMENT ON COLUMN book.p_date IS 'ÃâÆÇ ÀÏÀÚ';
COMMENT ON COLUMN book.score IS 'ÆòÁ¡';
COMMENT ON COLUMN book.genre_type IS 'Àå¸£';
COMMENT ON COLUMN book.book_photo IS 'Ã¥ »çÁø';
COMMENT ON COLUMN book.bookfile IS 'Ã¥ ÆÄÀÏ';
COMMENT ON COLUMN comments.commentnum IS '³ª¸¸ º¸´Â ¸®ºä ¹øÈ£ (ÁÙ±Û)';
COMMENT ON COLUMN comments.content IS '³ª¸¸ º¸´Â ¸®ºä ³»¿ë';
COMMENT ON COLUMN comments.id IS 'È¸¿ø ¾ÆÀÌµğ';
COMMENT ON COLUMN comments.booknum IS 'Ã¥ ¹øÈ£';
COMMENT ON COLUMN essay.essaynum IS '¿¡¼¼ÀÌ(µ¶ÈÄ°¨) ¹øÈ£ (³²µé ´Ù º½)';
COMMENT ON COLUMN essay.title IS '¿¡¼¼ÀÌ Á¦¸ñ';
COMMENT ON COLUMN essay.content IS '¿¡¼¼ÀÌ ³»¿ë';
COMMENT ON COLUMN essay.id IS 'È¸¿ø ¾ÆÀÌµğ';
COMMENT ON COLUMN essay.hits IS 'Á¶È¸¼ö';
COMMENT ON COLUMN essay.inputdate IS '¿¡¼¼ÀÌ ÀÛ¼º ÀÏÀÚ';
COMMENT ON COLUMN essay.booknum IS 'Ã¥ ¹øÈ£';
COMMENT ON COLUMN genre.id IS 'È¸¿ø ¾ÆÀÌµğ';
COMMENT ON COLUMN habit.id IS 'È¸¿ø ¾ÆÀÌµğ';
COMMENT ON COLUMN habit.time IS 'µ¶¼­ ½Ã°£';
COMMENT ON COLUMN habit.amount IS 'ÀĞÀº ±Ç¼ö';
COMMENT ON COLUMN habit.inputdate IS 'Å¸ÀÓ°ú ºñ±³ÇÒ ÇöÀç ½Ã°¢';
COMMENT ON COLUMN members.id IS 'È¸¿ø ¾ÆÀÌµğ';
COMMENT ON COLUMN members.password IS 'È¸¿ø ºñ¹Ğ¹øÈ£';
COMMENT ON COLUMN members.name IS 'È¸¿ø ÀÌ¸§';
COMMENT ON COLUMN members.phone IS 'È¸¿ø ÀüÈ­¹øÈ£';
COMMENT ON COLUMN members.email IS 'È¸¿ø ÀÌ¸ŞÀÏ';
COMMENT ON COLUMN members.sub IS 'È¸¿ø ±¸µ¶ Á¤º¸';
COMMENT ON COLUMN notice.infonum IS '°øÁö ¹øÈ£';
COMMENT ON COLUMN notice.title IS '°øÁö Á¦¸ñ';
COMMENT ON COLUMN notice.hits IS 'Á¶È¸¼ö';
COMMENT ON COLUMN notice.content IS '°øÁö ³»¿ë';
COMMENT ON COLUMN notice.inputdate IS '°øÁö ÀÛ¼º ÀÏÀÚ';
COMMENT ON COLUMN notice.id IS 'È¸¿ø ¾ÆÀÌµğ';
COMMENT ON COLUMN QnA.QnAnum IS '¹®ÀÇ ¹øÈ£';
COMMENT ON COLUMN QnA.QnAtitle IS '¹®ÀÇ Á¦¸ñ';
COMMENT ON COLUMN QnA.QnAcontent IS '¹®ÀÇ ³»¿ë';
COMMENT ON COLUMN QnA.hits IS 'Á¶È¸¼ö';
COMMENT ON COLUMN QnA.inputdate IS '¹®ÀÇ ÀÛ¼º ³¯Â¥';
COMMENT ON COLUMN QnA.id IS 'È¸¿ø ¾ÆÀÌµğ';
COMMENT ON COLUMN QnA_reply.QnAreplynum IS 'QnA ´ñ±Û ¹øÈ£';
COMMENT ON COLUMN QnA_reply.QnAnum IS '¹®ÀÇ ¹øÈ£';
COMMENT ON COLUMN QnA_reply.id IS 'È¸¿ø ¾ÆÀÌµğ';
COMMENT ON COLUMN review.reviewnum IS 'ÇÑÁÙÆò ¹øÈ£ (¶óÀÌºê·¯¸®)';
COMMENT ON COLUMN review.inputdate IS 'ÇÑÁÙÆò ÀÛ¼º ³¯Â¥';
COMMENT ON COLUMN review.content IS 'ÇÑÁÙÆò ³»¿ë';
COMMENT ON COLUMN review.likecnt IS 'ÇÑÁÙÆò ÁÁ¾Æ¿ä';
COMMENT ON COLUMN review.id IS 'È¸¿ø ¾ÆÀÌµğ';
COMMENT ON COLUMN review.booknum IS 'Ã¥ ¹øÈ£';
COMMENT ON COLUMN shelf.id IS 'È¸¿ø ¾ÆÀÌµğ';
COMMENT ON COLUMN shelf.booknum IS 'Ã¥ ¹øÈ£';
COMMENT ON COLUMN shelf.shelfnum IS '³» ¼­Àç¿¡ µî·ÏµÈ Ã¥ ¼ö';
>>>>>>> 844147ebadfdc44cd94a0f6d04f214640af6d069



