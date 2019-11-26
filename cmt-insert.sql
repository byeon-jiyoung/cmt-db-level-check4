-- 회원
INSERT INTO member(member_id, member_pw, member_name, birth, join_date) 
VALUES 
('bjy','byeon','변지영','19930129','2019-10-15 11:30:15'),('ksh','kim','김선호','19860508','2019-10-15 17:10:34'),
('wdh','woo','우도환','19920712','2019-10-20 14:00:10'),('kwb','kim','김우빈','19890716','2019-10-30 22:30:15'),
('psj','park','박서준','19881216','2019-11-10 15:24:37'),('pbg','park','박보검','19930616','2019-11-10 12:00:15'),
('shj','seo','서현진','19850227','2019-11-12 23:30:45'),('ldh','lee','이다희','19850315','2019-11-15 13:18:20'),
('mcw','mun','문채원','19861113','2019-11-21 08:45:07'),('cjw','cho','조진웅','19760303','2019-11-22 10:46:40');

-- 프로필
INSERT INTO photo(member_id, path, file_name, register_date)
VALUES
('bjy','C:\\Users\cmt\\Pictures\\DB\\','bjy.jpg','2019-10-15 11:30:15'),('ksh','C:\\Users\\cmt\\Pictures\\DB\\','ksh.jpg','2019-10-15 17:10:34'),
('wdh','C:\\Users\\cmt\\Pictures\\DB\\','wdh.jpg','2019-10-20 14:00:10'),('kwb','C:\\Users\\cmt\\Pictures\\DB\\','kwb.jpg','2019-10-30 22:30:15'),
('shj','C:\\Users\\cmt\\Pictures\\DB\\','shj.jpg','2019-11-12 23:30:45'),('ldh','C:\\Users\\cmt\\Pictures\\DB\\','ldh.jpg','2019-11-15 13:18:20'),
('mcw','C:\\Users\\cmt\\Pictures\\DB\\','mcw.jpg','2019-11-21 08:45:07');

-- 직업
INSERT INTO job(job_name)
VALUES
('개발자'),('정보보안전문가'),('의사'),('사회복지사'),('파티플래너'),('베이비시터'),('제과제빵사'),('교사'),('경찰'),('아나운서'),('학생');

-- 작가
INSERT INTO author
VALUES
('bjy',1,'몽실이언니입니다','안녕하세요. 몽실이를 키우는 변지영입니다'),('ksh',9,'잘생긴 선호입니다','누가봐도 잘생긴 김선호입니다^^'),
('mcw',3,'굿닥터 문채원입니다','예쁜채원'),('cjw',10,'멋진남자 조진웅','사랑해요 조진웅'),('shj',9,'예쁜 서현진','사랑해요 여러분');

-- 카테고리
INSERT INTO category(author_id, title, content)
VALUES
('bjy','매거진','몽실몽실몽실몽실'),('bjy','매거진','몽실이는 너무 예뻐요'),('ksh','매거진','내꿈을 찾아서'),('mcw','매거진','무슨병일까요?'),('shj','매거진','배우가 되기위해');

-- 첨부파일
INSERT INTO attachment(author_id, path, file_name, register_date)
VALUES
('bjy','C:\\Users\cmt\\Pictures\\DB2\\','bjy_board.jpg','2019-10-15 12:30:10'),('bjy','C:\\Users\cmt\\Pictures\\DB2\\','bjy_board2.jpg','2019-11-17 18:27:45'),
('bjy','C:\\Users\cmt\\Pictures\\DB2\\','bjy_board3.jpg','2019-11-25 18:27:45'),('bjy','C:\\Users\cmt\\Pictures\\DB2\\','bjy_board4.jpg','2019-11-25 18:27:45'),
('bjy','C:\\Users\cmt\\Pictures\\DB2\\','bjy_board5.jpg','2019-11-25 18:27:45'),('bjy','C:\\Users\cmt\\Pictures\\DB2\\','bjy_board6.jpg','2019-11-25 18:27:45'),
('bjy','C:\\Users\cmt\\Pictures\\DB2\\','bjy_board7.jpg','2019-11-25 12:30:10'),('ksh','C:\\Users\cmt\\Pictures\\DB2\\','ksh_board.jpg','2019-10-20 20:00:15'),
('ksh','C:\\Users\cmt\\Pictures\\DB2\\','ksh_board2.jpg','2019-11-02 03:10:57'),('mcw','C:\\Users\cmt\\Pictures\\DB2\\','mcw_board.jpg','2019-11-13 03:10:57'),
('mcw','C:\\Users\cmt\\Pictures\\DB2\\','mcw_board2.jpg','2019-11-15 03:10:57'),('shj','C:\\Users\cmt\\Pictures\\DB2\\','shj_board.jpg','2019-11-26 10:10:34'),
('mcw','C:\\Users\cmt\\Pictures\\DB2\\','shj_board2.jpg','2019-11-26 10:13:17');

-- 게시글
INSERT INTO board(author_id, attachment_id, category_id, title, sub_title, content, register_date)
VALUES
('bjy',1,1,'몽실이는 강아지','스피츠','몽실이는 너무 귀여워요~~ 몽실이는 너무 귀여워요~~ 몽실이는 너무 귀여워요~~','2019-10-15 12:30:10'),
('bjy',2,1,'몽실이는 강아지2','스피츠','몽실이는 너무 귀여워요2~~ 몽실이는 너무 귀여워요2~~ 몽실이는 너무 귀여워요2~~','2019-10-15 12:40:35'),
('bjy',3,1,'몽실이는 강아지3',null,'몽실이는 너무 귀여워요3~~ 몽실이는 너무 귀여워요3~~ 몽실이는 너무 귀여워요3~~','2019-10-29 10:14:15'),
('bjy',4,1,'몽실이는 강아지4',null,'몽실이는 너무 귀여워요4~~ 몽실이는 너무 귀여워요4~~ 몽실이는 너무 귀여워요4~~','2019-11-05 11:23:17'),
('bjy',5,1,'몽실이는 강아지5','스피츠','몽실이는 너무 귀여워요5~~ 몽실이는 너무 귀여워요5~~ 몽실이는 너무 귀여워요5~~','2019-11-11 02:30:42'),
('bjy',6,1,'몽실이는 강아지6','스피츠','몽실이는 너무 귀여워요6~~ 몽실이는 너무 귀여워요6~~ 몽실이는 너무 귀여워요6~~','2019-11-22 16:21:38'),
('bjy',7,2,'몽실이는 개','개는 동물이죠','동물을 사랑합시다!!!!!','2019-11-02 10:14:15'),
('ksh',8,3,'저는 배우가 꿈입니니다','유령을 잡아라','10월 21일 tvN 저녁 9시 30분에 첫방합니다!!','2019-10-20 20:00:15'),
('ksh',9,3,'예능 꿈나무',null,'1박2일 방송한답니다','2019-11-02 03:10:57'),
('mcw',10,4,'몸이 아프십니까?','운동은 필수','운동을 해야 몸이 건강해집니다. 운동을 해야 몸이 건강해집니다. 운동을 해야 몸이 건강해집니다.','2019-11-10 08:05:57'),
('mcw',11,4,'지금 건강하십니까?',null,'부럽습니다.','2019-11-15 23:45:13'),
('shj',12,5,'매드독 많은 시청 바랍니다.','배우란..','배우는 연기를 잘해야합니다. 배우는 연기를 잘해야합니다.','2019-11-25 23:45:13'),
('shj',13,5,'연기를 잘하는 비결이란',null,'배우는 연기를 잘해야합니다2. 배우는 연기를 잘해야합니다2.','2019-11-26 08:58:55');

-- 태그
INSERT INTO hashtag
VALUES
('강아지','2019-10-10 12:30:10'),('동물','2019-10-10 12:30:14'),('소개','2019-10-10 12:40:10'),('드라마','2019-10-11 04:30:15'),
('질병','2019-10-11 22:15:22'),('사랑','2019-10-12 17:23:45');

-- 게시글_태그
INSERT INTO board_hashtag
VALUES
(1,'강아지'),(1,'동물'),(2,'강아지'),(3,'강아지'),(3,'동물'),(3,'사랑'),(4,'소개'),(4,'드라마'),(5,'소개'),(7,'질병');

-- 댓글
INSERT INTO reply(member_id, board_id, content, register_date)
VALUES
('ksh',1,'강아지가 너무 귀여워요','2019-10-18 11:27:35'),('wdh',1,'강아지가 누굴 닮아 그렇게 예쁜가요?','2019-10-19 21:05:37'),
('kwb',1,'사랑스럽네요','2019-10-20 14:29:47'),('cjw',3,'아주 귀엽습니다','2019-10-30 05:05:18'),
('wdh',3,'역시 예쁘네요','2019-10-31 21:10:45'),('ksh',4,'강아지가 너무 귀여워요4','2019-11-18 11:27:35'),
('ksh',4,'강아지가 너무 귀여워요44','2019-11-20 13:30:48'),('ksh',4,'강아지가 너무 귀여워요444','2019-11-25 14:52:37'),
('ksh',5,'강아지가 너무 귀여워요5','2019-11-16 11:27:35'),('kwb',7,'저도 배우가 꿈이에여','2019-10-21 23:37:15'),
('ldh',8,'1박2일 재밌겠어요','2019-11-02 04:10:00'),('cjw',9,'역시 운동을 해야겠네요','2019-11-13 18:24:13'),
('shj',9,'저는 지금 열심히 운동중입니다','2019-11-20 17:34:53'),('kwb',10,'비인두암에 걸렸으나 완치됐습니다.','2019-11-20 23:00:42');

-- 구독
INSERT INTO subscribe
VALUES
(1,'wdh','2019-10-19 21:10:15'),(1,'pbg','2019-10-20 05:27:32'),(1,'ldh','2019-10-20 23:15:08'),(2,'cjw','2019-11-03 11:15:27'),(2,'shj','2019-11-13 05:13:48'),
(3,'cjw','2019-11-03 11:15:27'),(3,'wdh','2019-11-15 11:21:47'),(4,'pbg','2019-11-20 13:08:26'),(5,'bjy','2019-10-18 18:40:35'),(4,'wdh','2019-10-30 12:20:48');

-- 좋아요
INSERT INTO good
VALUES
(1,'wdh','2019-10-19 21:10:20'),(1,'ksh','2019-10-20 04:37:48'),(1,'pbg','2019-10-23 14:29:36'),(2,'psj','2019-10-30 23:55:20'),(3,'shj','2019-11-01 22:14:37'),
(3,'wdh','2019-11-20 21:04:48'),(3,'pbg','2019-11-23 18:09:49'),(4,'kwb','2019-10-21 23:37:30'),(4,'cjw','2019-10-18 18:41:35'),(7,'kwb','2019-11-20 23:00:45');

-- 공유경로
INSERT INTO sharing_path(path)
VALUES
('face book'),('instargram'),('kakao talk'),('kakao story'),('twitter');

-- 공유
INSERT INTO sharing(member_id, board_id, sharing_path_id, register_date)
VALUES
('wdh',1,1,'2019-10-19 21:10:25'),('ksh',1,1,'2019-10-20 04:37:55'),('pbg',1,2,'2019-10-23 14:30:36'),('ksh',2,2,'2019-11-14 13:02:33'),('wdh',3,1,'2019-11-24 03:11:18'),
('shj',3,2,'2019-11-01 22:14:52'),('kwb',3,3,'2019-11-25 16:14:52'),('ksh',3,1,'2019-11-26 03:11:09'),('bjy',4,3,'2019-10-18 18:41:53'),('kwb',7,4,'2019-11-20 23:02:45');