CREATE TABLE kakaobook
(
	-- 저자
	authors varchar2(50),
	-- 제목
	title varchar2(100),
	-- 내용
	contents varchar2(2000),
	-- 출간일자
	datetime varchar2(100), 
	-- isbn코드
	isbn varchar2(200),
	-- 출판사
	publisher varchar2(50),
	-- 썸네일
	thumbnail varchar2(200),
	-- 책 번호(DB)
	booknum number,
	PRIMARY KEY (isbn)
);

-- kakaobook 테이블에 insert 예시
insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('염한승', '책 제목', '내용', '2021-02-22', '12345556', '출판사', '3.jpg', 3); 



insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('무라카미 하루키', '4월의 어느 해맑은 아침, 100퍼센트의 여자아이를 만나는 일에 관하여', '간결, 독창, 감각적 이라는 세 단어로 압축할 수 있는 무라카미 하루키 작품의 특징이 가득한 초기 단편집이다. 일본에서는 1983년에 출간되었던 소설집으로, 모두 18편의 작품이 실려 있다. 감각적이고, 환상적이며, 하루키 특유의 상상력이 돋보이는 작품들은 하루키 소설의 흥취에 흠뻑 빠져들게 할 것이다.', '2009-11-30', '9788970128436', '문학사상사', '10.jpg', 10);

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('베르나르 베르베르', '상대적이며 절대적인 지식의 백과사전', '베르나르 베르베르의 〈상대적이며 절대적인 지식의 백과사전〉이 새로운 표지와 함께 기존 383항목에서 내용을 대폭 추가하여 542항목으로 새롭게 출간되었습니다. 세계적인 베스트셀러 작가 베르나르 베르베르의 창작의 원천이자 수십 년을 써온 빛나는 영감이 담긴 에세이입니다.', '2021-11-10', '9788932921365', '열린책들', '11.jpg', 11); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('베르나르 베르베르', '여행의 책', '"개미", "뇌"의 작가 베르나르 베르베르가 이끄는 가장 아름답고, 가장 단순하고, 가장 놀라운 여행-새로운 자기 내면으로의 여행. 책 자체가 살아있는 듯 독자에게 말을 걸고, 독자의 물음에 답변하며 독자 자기 자신의 내면 속으로 함께 여행을 떠난다.', '2002-08-20', '9788932902135', '열린책들', '12.jpg', 12); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('스즈키 코지', '링 1', '한날한시에 심장마비로 사망한 네 남녀. 주간지 기자 아사카와 가즈유키는 여기에 공통점이 있으리라 직감한다. 그는 네 사람이 죽기 일주일 전에 한 별장에 함께 놀러 갔던 사실을 알아내어 직접 방문했다가 이상한 비디오테이프를 보게 된다. 비디오에는 의미를 알 수 없는 기묘한 장면이 이어지더니 “이 영상을 본 자는 일주일 뒤 이 시각에 죽을 운명”이라는 메시지가 나오는데.', '2015-09-25', '9788982736179', '황금가지', '13.jpg', 13); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('스즈키 코지', '링 2', 'K대학 의학부 강사이자 검시관인 안도는 사인 불명으로 감찰의무원에 넘어온 대학 동창 다카야마 류지의 해부를 담당한다. 시신에는 원인을 알 수 없는 기묘한 육종이 남아 있었다. 안도는 동창의 시신을 봉합하는 과정에 넣은 신문지에 적혀 있던 숫자가 이상하게도 뇌리에서 떠나지 않자, 대학시절 재미 삼아 했던 암호 해독 방법을 통해 그 숫자에서 ‘RING’이라는 단어를 도출해 낸다. 류지의 제자인 다카노 마이는 그의 장례식날, 친구인 아사카와란 사람이 비디오테이프에 관해 질문했다는 이야기를 털어놓는데….', '2015-09-25', '9791158880033', '황금가지', '14.jpg', 14); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('스즈키 코지', '링 3', ' 인류를 위협하는 신종 불치병의 해결책을 가상현실 프로그램에서 찾아 나가는 과정을 흥미진진하게 풀어간 『루프』는 두 전작의 내용을 전복시키는 구성과 소설로서만 가능한 트릭을 통해 독자들을 충격 속으로 몰아넣는다', '2018-05-17', '9791158883775', '황금가지', '15.jpg', 15); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('신경숙', '기차는 7시에 떠나네', '자신의 지난 과거 중 한 부분을 기억하지 못한 채 늘 뭔가 비어있는 듯한 삶을 살고 있는 주인공 하진이 자신이 잃어버린 기억을 찾아가는 과정을 중심으로 주변인물들이 상처를 딛고 자신의 삶을 찾아가는 모습을 그린 장편. 작가특유의 서정적 문체가 돋보인다.', '1999-02-18', '9788932010595', '문학과 지성사', '16.jpg', 16); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('애거서 크리스티', '그리고 아무도 없었다', '인디언 섬에 초대받은 여덟명의 손님과 그곳에 있는 하인부부. 모두들 떳떳치 못한 그들이 한명씩 죽을때마다 식탁위의 "열 명의 인디언 소년" 인형이 하나씩 사라진다. 한 명 한 명씩 차례로 모두가 죽어가는 상황. 과연 범인은 누구일까?', '2000-08-10', '9788938201010', '해문출판사', '17.jpg', 17); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('애거서 크리스티', '나일강의 죽음', '속도감 있는 전개와 예측할 수 없는 사건들이 재미와 긴장감을 불러 일으키는 작품이다.', '1990-02-01', '9788938201119', '해문출판사', '18.jpg', 18); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('애거서 크리스티', '예고 살인', '열등의식.증오.갈등.복수심. 이 모든것이 한꺼번에 총소리와 함께 격렬히 튀어나온다. 범인의 치밀한 계획 을 조금이라도 방해하는 사람은 누구라도 어김없는 죽임의 손길을 받아들여야 한다. 그 소용돌이 속에서 애틋하게 움트는 사랑과 증오...', '2002-08-15', '9788938202116', '해문출판사', '19.jpg', 19); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('이문열', '우리들의 일그러진 영웅', '4ㆍ19 혁명 전후의 1960년대를 시간적 배경으로 하고 있습니다. 공간적 배경은 작은 국민학교 교실이지만, 그 안에서 벌어지는 일들은 그 당시 사회 전체의 현실과 크게 다르지 않습니다. 어린이로 하여금, 민주주의에 대해서 곰곰히 생각하게 하는 계기를 마련하는 작품입니다.', '2006-09-20', '9788987721095', '휴이넘', '20.jpg', 20); 



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