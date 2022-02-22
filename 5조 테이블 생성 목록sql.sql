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


insert into kakaobook (authors, title , contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('공지영', '고등어', '1988년 <창작과비평>에 단편 <동트는 새벽>을 발표하면서 등단한 여류작가의 장편소설. 이혼한 남자 명우와 결혼한 여자 은림. 80년대 초반 혼란스런 상황에서 서로 다른 길로 어긋나간 젊음과 사랑을 그렸다.', '2006-10-01', '9788965745785', '푸른숲', '1.jpg', 1);

insert into kakaobook (authors, title , contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('공지영', '봉순이 언니', '식모인 봉순이 언니는 이제 막 다섯 살이 된 짱아에게 둘도 없는 친구이자 엄마 같은 존재이다. 봉순이 언니는 가난 탓에 교육도 받지 못했지만, 마음만은 늘 낙천적이고 착해서 어떤 일이든 웃으며 넘긴다. 한 가족처럼 지내던 언니가 어느덧 성인이 되어 짱아네를 떠나면서 언니의 불행은 끊이지 않는다. 계속되는 불행 속에서도 행복한 삶에 대한 희망의 끈을 놓지 않는 봉순이 언니의 이야기.', '2008-07-30', '9788965745761', '휴이넘', '2.jpg', 2); 

insert into kakaobook (authors, title , contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('공지영', '인간에 대한 예의 ', '1988년 「창작과비평」에 단편 <동트는 새벽>으로 등단한 공지영의 첫 소설집. 작가의 작품세계를 집약적으로 보여주는 소설집으로, 작가가 직접 경험한 1980년대의 학생운동.노동운동의 현장을 특유의 섬세한 감성과 정직한 시선으로 그려낸 아홉 편의 중.단편소설이 실려 있다.', '2006-10-25', '9788936436957', '창비', '3.jpg', 3); 

insert into kakaobook (authors, title , contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('기형도', '입속의 검은 잎', '"문학과지성 시인선" 80권, 기형도 시집. 처음이자 마지막이 된 이 시집에서 기형도는 일상 속에 내재하는 폭압과 공포의 심리 구조를 추억의 형식을 통해 독특하게 표현하고 있다. 그의 시 세계는 우울한 유년 시절과 부조리한 체험의 기억들을 기이하면서도 따뜻하며 처절하면서도 아름다운 시공간 속에 펼쳐 보인다.', '1991-02-01', '9788932003979', '문학과 지성사', '4.jpg', 4); 

insert into kakaobook (authors, title , contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('김수영', '김수영 시집', '민음사와 교보문고가 함께 기획한 "디 에센셜" 시리즈는 세계적인 작가의 대표 소설과 에세이를 한 권에 담아, 이 책을 읽은 독자 누구든 단 한 문장으로 작가의 특징을 정의할 수 있게 큐레이션 한 시리즈다. 조지 오웰, 버지니아 울프, 다자이 오사무, 어니스트 헤밍웨이, 그리고 헤르만 헤세에 이어 디 에센셜의 첫 국내 작가로 한국인이 사랑하는 시인, 김수영을 선보인다.', '2022-02-11', '9788937407147', '민음사', '5.jpg', 5); 

insert into kakaobook (authors, title , contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('로빈쿡', '브레인', '미국 의학박사가 저술한 장편 미스터리소설. 열일곱 개의 뇌를 집어삼킨 인공지능 복합컴퓨터 탄생의 충격 보고서, 제2차 세계대전 이래 인간을 대상으로 한 실험은 실험대상으로서의 환자를 확보하는데 더 많은 어려움을 겪었다. 환자 자신이 어떤 용도로 사용되는지를 알게 되면 결코 응할 사람이 없을 것이 분명하기 때문이다. 의학계에서 인간 실험에 대한 의학 윤리의 침해 사실이 거론된 지 오랜 세월이 흘렀으나 그 해결 기미가 보이지 않는 현실에서 "브레인"은 인체에 행해지는 임상실험의 문제를 날카롭게 다루고 있다.', '1992-08-01', '9788970630045', '열림원', '6.jpg', 6); 

insert into kakaobook (authors, title , contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('로빈쿡', '바이러스', '미국작가의 의학공포소설. 전세계의 모든 바이러스가 보관된 CDC, 그 바이러스를 둘러싸고 벌어지는 음모 가 긴박감있게 펼쳐진다.', '1994-06-01', '9788970630489', '열림원', '7.jpg', 7); 

insert into kakaobook (authors, title , contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('무라카미 하루키', 'TV 피플', '무라카미 하루키의 단편집 『TV피플』. 일상에서 실재하기 어려운 모험적 상황을 전제로 한, 강렬한 리얼리티를 띤 6편의 단편이 수록되어 있다. 표제작 《TV 피플》은 주위 사람들과 단절되어 결국 아내에게마저 버림받고 7할로 축소된 채 언어를 상실해 버리는 "나"라는 인물을 통해, 현대 사회에서의 인간의 가치 상실과 존재감 축소에 대해 우회적으로 비판하고 있다.', '2006-04-15', '9788989675563', '북스토리', '8.jpg', 8);

insert into kakaobook (authors, title , contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('무라카미 하루키', '상실의 시대', '일본을 뛰어넘어 세계적 베스트셀러 작가로 거듭난 무라카미 하루키를 대표하는 『상실의 시대』. 혼자라는 고독 속에서 꿈과 사랑, 그리고 정든 사람들을 잃어가는 상실의 아픔을 겪는 세상 모든 청춘을 위한 장편소설이다. 저자의 자전적 소설이기도 하다. "와타나베"라는 한 남자가 10대부터 30대까지 젊은 날에 겪은 감미롭고 황홀하고 애절한 사랑 이야기를 그려내고 있다.', '2010-07-20', '9788970123691', '문학사상사', '9.jpg', 9);  

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

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('이외수', '고수', '주인공 "제제"는 못 말리는 장난꾸러기여서 식구들과 이웃들에게 구박도 많이 받고 매도 많이 맞는 다섯 살배기 꼬마입니다. 작가는 감수성 예민한 꼬마 제제를 통해 진정한 사랑, 인간과 사물의 교감 그리고 어린이와 어른의 우정을 감동적으로 그리고 있습니다.', '2014-11-14', '9791156620556', '아시아', '21.jpg', 21); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('이외수', '벽오금학도', '  5년 동안 전업 작가로 활동하며 자신만의 확고한 작품 세계를 형성해 온 소설가 이외수의 장편소설을 모두 모은 「이외수 장편소설 컬렉션」 제6권 『황금비늘』. 이 책은 땅콩처럼 작고 연약한 아이 하나가 백발노인을 만나 진정한 아름다움을 찾기까지의 이야기를 담고 있는 소설이다. ', '2014-04-20', '8973373072', '해냄출판사', '22.jpg', 22); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('이외수', '황금비늘', '  풍류도인 농월당 선생과 그의 손자인 백발동안의 강은백, 신통력을 지닌 누더기 노파, 피해망상증 시인 김도문, 《외엽일란도》를 그리는 수묵화의 대가 고산묵월 등 아무 연관성 없는 사람들 같지만 씨줄과 날줄처럼 정교하게 직조된 사람들이 펼쳐내는 인간 존재의 본질에 관한 이야기를 담은 작품이다. ', '2010-09-20', '8965744709', '해냄출판사', '23.jpg', 23);

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('이외수', '훈장', '   이 책은 작가 이외수를 만드는 밑거름이 된 초기 중단편 소설들을 엮은 작품집이다. 1972년 신춘문예 당선 이후 35년 만에 책으로 처음 소개되는 최초의 소설 <견습어린이들>을 비롯한 네 편의 작품이 수록되어 있다.', '2006-07-24', '8973377612', '해냄출판사', '24.jpg', 24); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('이외수', '흐린 세상 건너기 ', '  이외수 감성 에세이집. 인류의 지혜를 담은 명언들에 어울리는 에피소드를 수집, 작가 자신의 시와 아포리즘, 직접 그린 그림을 곁들여 이외수의 사상의 편린들을 모자이크처럼 엮어냈다. 92년 발표한 동명 에세이집의 신판.', '2002-11-25', '8978321801', '생각하는 백성', '25.jpg', 25); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('홍세화', '나는 빠리의 택시운전사', '대학을 졸업하고 본가의 경제적 지원을 받으며 ‘룸펜’으로 살아가던 주인공 다이스케가 자신의 오래된 친구 히라오카의 부인 미치요를 사랑하는 이야기이다.', '1995-03-01', 9788936471187,'창작과비평사', '26.jpg', 26); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('히가시노', '비밀1', '대학을 졸업하고 본가의 경제적 지원을 받으며 ‘룸펜’으로 살아가던 주인공 다이스케가 자신의 오래된 친구 히라오카의 부인 미치요를 사랑하는 이야기이다.', '2021-07-21', 9791138400428,'소미미디어', '27.jpg', 27); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('히가시노', '비밀2', '대학을 졸업하고 본가의 경제적 지원을 받으며 ‘룸펜’으로 살아가던 주인공 다이스케가 자신의 오래된 친구 히라오카의 부인 미치요를 사랑하는 이야기이다.', '2008-02-04', 9788979197846,'창해' ,'28.jpg', 28); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('허먼 멜빌', '모비딕(영문판)', '대학을 졸업하고 본가의 경제적 지원을 받으며 ‘룸펜’으로 살아가던 주인공 다이스케가 자신의 오래된 친구 히라오카의 부인 미치요를 사랑하는 이야기이다.', '2012-03-05', 9788983797124,'혜지원' ,'29.jpg', 29); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('가스통 르루', '오페라의 유령', '대학을 졸업하고 본가의 경제적 지원을 받으며 ‘룸펜’으로 살아가던 주인공 다이스케가 자신의 오래된 친구 히라오카의 부인 미치요를 사랑하는 이야기이다.', '2003-11-05', 9788970752365,'문학세계사' ,'30.jpg', 30); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('바스콘셀로스', '나의 라임 오렌지나무', '주인공 "제제"는 못 말리는 장난꾸러기여서 식구들과 이웃들에게 구박도 많이 받고 매도 많이 맞는 다섯 살배기 꼬마입니다. 작가는 감수성 예민한 꼬마 제제를 통해 진정한 사랑, 인간과 사물의 교감 그리고 어린이와 어른의 우정을 감동적으로 그리고 있습니다.', '2001.05.15', '9788931911695', '지경사', '31.jpg', 31); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('노자', '도덕경', '『노자도덕경』은 약 5,000자, 81장으로 되어 있으며, 상편 37장의 내용을 「도경」, 하편 44장의 내용을 「덕경」이라고 한다. 저자인 노자는 춘추시대 말기의 사람으로 공자와 동시대를 살았으며, 『노자』 또는 『노자도덕경』이라는 책은 전국시대 초기에 완성된 것으로 보인다. ', '2016.05.30', '9791158520953', '글로벌 콘텐츠', '32.jpg', 32); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('요한 볼프강 폰 괴테', '젊은 베르테르의 슬픔', '연애 문학의 최고봉이며, 괴테를 형성하고 있는 여러 가지 요소와 경향이 음양으로 명백하게 아련하게 표명되어 있는 고전의 명작! 한때 자살자가 속출, 발매금지가 되기까지 한 문제의 소설이다.', '1999.03.20', '9788937460258', '민음사', '33.jpg', 33); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('구리 료헤이', '우동 한 그릇', '한 그릇의 우동을 나눠 먹으며 마음을 나누는 어머니와 두 아들, 주인 내외의 마음에 진심으로 감사해하는 이들의 모습에서 진정한 배려와 감사를 깨닫게 된다. 두 번째 작품 《마지막 손님》 역시 상인으로서의 도를 넘어 인간 본성의 아름다움 그 자체를 보여주며 따뜻함을 전한다.', '2015.01.20', '9788973223619', '청조사', '34.jpg', 34); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('김용', '녹정기', '청나라 초기, 패권을 쥔 만주족 황실과 명나라를 되찾으려는 한족 백성들의 항쟁이 계속되던 시대. 황실과 백성 양쪽 편을 넘나들며 화려한 언변과 번뜩이는 기지로 천하를 주름잡은 소년 위소보의 모험 활극이 펼쳐진다.', '2021.01.30', '9788934989448', '김영사', '35.jpg', 35); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('김훈', '칼의 노래', '한 국가의 운명을 단신의 몸으로 보전한 당대의 영웅이자, 정치 모략에 희생되어 장렬히 전사한 명장 "이순신". 저자는 당대의 사건들 속에서 "이순신"을 지극히 인간적인 존재로 표현해 내며, 사회 안에서 개인이 가질 수 있는 삶의 태도에 대해 이야기한다.', '2010.02.27', '8984980692', '생각의나무', '36.jpg', 36); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('신경숙', '풍금이 있던 자리', '85년 중편 <겨울 우리>로 등단한 여류작가의 단편소설집. 표제 외에 <직녀들> <멀어지는 산> <그 여자의 이미지> 등 모두 9편을 싣고 있다.', '1993.04.01', '9788932014289', '문학과지성사', '37.jpg', 37); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('앙드레 지드', '좁은 문', '인간이 영원히 도달할 수 없는 신학적 완성으로서의 사랑을 제롬과 알리사의 신교도적 사랑을 통해 그려냈다. 욕망을 자기 희생의 실천으로써 극복하려는 알리사의 내적 고뇌를 통해 도덕적 편견에 대한 문제를 제시하고 있다.', '2004.07.30', '9788931004663', '문예출판사', '38.jpg', 38); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('이상', '날개', '1930년대 심리주의 또는 주지주의 문학의 대표작의 하나이다. 근대적 불안과 자의식을 표현한 작품으로, 사회와 역사에 대한 절망과 자아(自我)의 해체를 보여주고 있다.', '2009.03.25', '9788990566713', '아이템북스', '39.jpg', 39); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('이효석', '메밀 꽃 필 무렵', '이 책은 이효석의 작품세계를 보다 쉽게 알 수 있도록 그의 작품 중 총 11편의 문제작을 선정, 수록하였다. 특히 그의 대표적 "메밀꽃 필 무렵"은 토속적이고 한국적인 색채가 강한 데다 작품성이 뛰어나 이효석을 일약 문단의 기린아로 자리매김하게 했다.', '2014.08.15', '9791185742212', '에세이퍼블리싱', '40.jpg', 40); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('루소', '사회계약론', ' 인문고전을 통해 꿈과 위로를 얻으면서 인생을 성찰하도록 이끌고 있다. 제6권에서는 왕족과 귀족, 그리소 성직자로 구성된 지배 계급에 의해 착취당하고 지배당하던 불평등한 시대를 살아가는 프랑스 국민들에게 혁명의 불길을 당긴 루소의 <사회계약론>에 대해 다룬다.', '2011-10-26', '9788934927433', '주니어김영사', '41.jpg', 41); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('톨스토이', '사람은 무엇으로 사는가', '인생을 바로 세워주는 삶의 명작!세계적 문호 톨스토이가 답하는 인생의 지혜가 담긴 명작『사람은 무엇으로 사는가』. 19세기 러시아문학을 대표하는 세계적 문호이자 대사상가인 톨스토이의 중 단편 약 50편 가운데 가장 대표적인 10편을 선별해 엮은 단편선이다.', '2015-06-30', '9788931009521', '문예출판사', '42.jpg', 42); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('헤르만헤세', '데미안', '알을 깨고 나오기 위해 끊임없이 고뇌하는 한 소년의 치열한 성장 과정', '2020-11-15', '9791164453535', '미르북스', '43.jpg', 43); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('J.R.R 톨킨', '반지의 제왕2', '여러 반지들을 지배할 유일반지는 평화로운 호비턴에 잠들어 있고 모든 아름다운 것들을 파괴하고 공포로 지배하려는 제왕 사우르스와 호비트라는 종족간의 대결구도로 그려낸 12년만에 완성된 역작!!', '2011-11-01', '4808956372198', '씨앗을뿌리는사람', '44.jpg', 44); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('J.R.R 톨킨', '반지의 제왕3', '여러 반지들을 지배할 유일반지는 평화로운 호비턴에 잠들어 있고 모든 아름다운 것들을 파괴하고 공포로 지배하려는 제왕 사우르스와 호비트라는 종족간의 대결구도로 그려낸 12년만에 완성된 역작!!', '2007-06-03', '4808956372204', '씨앗을뿌리는사람', '45.jpg', 45); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('아서 코난 도일', '6개의 나폴레옹', '어느 저녁 베이커 가에 들른 레스트레이드 경감은 나폴레옹 흉상만 골라 부수고 다니는 미친 놈이 있다며 아주 하찮은 절도사건처럼 말한다. 하지만 다음날 하찮은 절도사건은 살인사건으로 발전하고 셜록 홈즈는 왓슨과 함께 범인 추적에 나선다', '2019-12-25', '9791164640539', '바로이북', '46.jpg', 46); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('아서 코난 도일', '주홍색 연구', ' 셜록 홈즈 시리즈의 첫 작품으로서 1886년 집필하여 다음 해 11월 『비튼의 크리스마스 연감』에 발표되었다.', '2014-06-10', '4801156970171', '블루프린트', '47.jpg', 47); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('무라카미 하루키', '그러나 즐겁게 살고싶다', '무라카미 하루키는 소설을 통해서는 초기의 작품을 제외하고는 여간해서 자신의 자전적인 얘기나, 자신에 관한 일을 비치치 않는다고 알려져 있다. 그러나 수필을 통해서는 자전적인 내용이나, 직접 자신이 체험하고 느낀 이야기를 아낌없이, 그리고 주저 없이 솔직하게 토로한다.', '1996-06-25', '8970122087', '문학사상사', '48.jpg', 48); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('나쓰메 소세키', '그 후', '대학을 졸업하고 본가의 경제적 지원을 받으며 ‘룸펜’으로 살아가던 주인공 다이스케가 자신의 오래된 친구 히라오카의 부인 미치요를 사랑하는 이야기이다.', '2019-04-20', '9788931011456', '문예출판사', '49.jpg', 49); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('헤르만 헤세', '수레바퀴 아래서', '시인이 되고 싶다는 강한 열망을 품은 채 신경쇠약, 자살 시도 등으로 얼룩진 혼돈의 청소년기를 보낸 헤세의 경험이 고스란히 녹아 있다. 재능이 뛰어나지만 예민한 성격으로 두통과 신경쇠약에 시달리는 한스 기벤라트와 천재적인 재능을 가진 반항적 시인 소년 헤르만 하일너는 헤세 자신의 모습이다.', '2014-04-30', '9788958287506', '사계절', '50.jpg', 50); 




insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('예리히 프롬', '소유냐 삶이냐', '이 책은 에리히 프롬의 저서『To Have or To Be』의 완역본으로 현대인의 생활양식을「소유」와「존재」로 이분했다.「소유」와「존재」의 양극 사이에서 다양하게 존재하는 인간들에게, 물질적 소유와 탐욕의「소유양식」에서부터 창조하는 기쁨을 나누는「존재양식」으로의 일대 전환이 필요하다고 말하고 있다. 또한 이 책은 이론에만 머물지 않고 실질적인 방안까지 제시해 그 실현 가능성은 미루고라도 세밀한 관찰과 예리한 통찰력을 바탕에 깔고 있어 더욱 높이 평가되고 있다.', '2000-08-31', '9788970551234', '홍신문화사', '51.jpg', 51); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('가브리엘 마르케스', '백년동안의 사랑', '노벨문학상 수상작가 가브리엘 G.마르께스가 터뜨린<백년동안의 고독>을 능가하는 걸작,가장 보통의 ,그러면서도 가장 위대한 사랑의 묘사! 51년 9개월 4일간의 사랑의 의지가 낳은 미라클', '1988-08-05', '5000058635', '동아', '52.jpg', 52); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('자화할랄 네루', '세계사 편력', '『세계사 편력』은 인도의 독립 영웅 자와할랄 네루가 1930부터 1933년까지 3년 동안 옥중생활을 하면서 딸에게 쓴 196편의 편지글들을 모아 엮은 책이다. 이야기를 하듯 세계사의 주요 사건들을 풀어내는 가운데 한 사건이 일어나게 된 다양한 측면들을 밝혀주고, 역사란 사건의 연대가 아니라 ‘인간’이 담긴 것이라는 점을 일깨워 준다. 나아가 역사에 대한 책임감과 인간의 책임에 대한 구도자적 열정, 그리고 인간의 존엄성에 대한 각별한 생각과 범인류적인 사랑이 녹아 있다. 간결하고 쉬운 편지글 형식으로 재미있고 실감날 뿐만 아니라, 청소년판에는 1990년대 이후 현재까지의 역사를 추가 보완하였으며, 세계사의 명장면들을 추린 새로운 사진과 그림들로 역사의 다양한 국면들을 더욱 깊이 되새길 수 있도록 했다. 청소년들에게 올바른 역사의식과 가치관을 심어주고 역사에 대한 긍정적인 사고방식을 키워줌으로써 역사를 보는 건전한 안목과 논리력, 사고력을 길러준다.', '2005-01-10', '9788956450612', '일빛', '53.jpg', 53); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('막심 고리키', '어머니', '《어머니》(러시아어: Мать)는 1907년 출판된 막심 고리키의 장편 소설이다. 억압과 무지에 찌들어있던 러시아 제국 사회의 전형적인 프롤레타리아 계급 여인이 사회주의자인 아들을 통해 각성해나가는 이야기를 그리고 있다. 소설은 1905년 러시아 혁명 당시의 공장 노동자들의 활동을 배경으로 하고 있으며 여러 차례 영화로 제작되었다. 1932년 독일의 극작가 베르톨트 브레히트는 이 소설을 바탕으로 《어머니》를 집필하였다.', '2009-11-10', '9788932909233', '열린책들', '54.jpg', 54); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('이반 투르게네프', '아버지와 아들', '미래를 책임질 청소년 세대, 나아가 부모 세대를 위한 가장 체계적이고 혁신적인 세계문학 축역본의 정본 컬렉션. "생각하는 힘: 진형준 교수의 세계문학컬렉션" 제40권『아버지와 아들』은 투르게네프가 1861년에 탈고하고 1862년에 발표한 소설이다. 하지만 이 소설의 배경은 러시아의 알렉산드르 2세가 우여곡절 끝에 농노제를 폐기한 바로 2년 전인 1859년을 배경으로 하고 있다. 투르게네프는 다른 소설들과 다르게, 마치 역사소설, 혹은 르포인 것처럼 작품 앞머리에 1859년 5월 20일이라고 명기했다. 이것은 이 소설의 무대가 국가 전체가 격변기에 처한 러시아임을 분명하게 알려준다.', '2019-10-21', '9788952239839', '살림출판사', '55.jpg', 55); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('프랑수아즈 사강', '슬픔이여 안녕', '20세기 최고의 베스트셀러인 『슬픔이여 안녕』이 프랑수아즈 사강 15주기를 맞아 김남주 번역가의 유려하고 감각적인 새 번역으로 정식 출간되었다. 『슬픔이여 안녕』은 사강에게 ‘문단에 불쑥 등장한 전대미문의 사건’ ‘매혹적인 작은 괴물’이라는 수식을 안기며 또 다른 천재 작가의 출현을 알린 데뷔작이자 사강 문학의 정수를 이루는 대표작이다. 열여덟 살의 대학생이 두세 달 만에 완성한 이 소설은 프랑수아 모리아크를 비롯한 쟁쟁한 문인들의 전폭적인 지지를 받으며 비평가상을 받았고 전후 세대의 열광 속에 ‘사강 신드롬’을 일으키며 일약 세계적인 베스트셀러가 된다.', '2019-09-16', '9788950976705', '아르테', '56.jpg', 56); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('신경숙', '내 마음의 풍금', '이 책은사범학교를 갓 졸업하여 산골 초등학교에 막 부임한 스물하나의 총각 선생과 열일곱에도 초등학교에 다니는 늦깍이 여학생의 사랑과 60년대의 초등학교 풍경들이 순수하고 담백하게 어울려 있는 아름다운 소설이다.', '1999-03-31', '9788987180373', '바다출판사', '57.jpg', 57); 


/* 이거 덜됨*/
insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('펄 벅', '대지', '', '2000-08-31', '9788931004151', '홍신문화사', '58.jpg', 58); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('톨스토이', '부활', '', '2000-08-31', '9791165220501', '홍신문화사', '59.jpg', 59); 

insert into kakaobook (authors, title, contents, datetime, isbn, publisher, thumbnail, booknum) 
values ('예리히 프롬', '노인과 바다', '', '2000-08-31', '9791187446019', '홍신문화사', '60.jpg', 60); 





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