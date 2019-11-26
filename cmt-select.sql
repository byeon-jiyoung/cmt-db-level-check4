-- 카테고리 및 게시글 내용 출력
SELECT category.category_id, category.title as category_title, category.content as category_content, board.title as board_title, board.sub_title, author.author_id, author.author_name, 
				board.register_date, board.content as board_content, attachment.path, attachment.file_name
FROM board
LEFT JOIN category ON category.category_id = board.category_id
LEFT JOIN author ON author.author_id = board.author_id
LEFT JOIN attachment ON attachment.attachment_id = board.attachment_id
WHERE board_id = 3;

-- 좋아요 수
SELECT COUNT(board_id) FROM good WHERE board_id = 3;

-- 공유 수
SELECT COUNT(sharing_id) FROM sharing WHERE board_id = 3;

-- 게시글에 포함된 태그
SELECT hashtag_name 
FROM board_hashtag
WHERE board_id = 3;

-- 댓글
SELECT member.member_id, member.member_name, reply.register_date, reply.content
FROM reply
LEFT JOIN member ON member.member_id = reply.member_id
WHERE board_id = 3;

-- 작가이름, 작가직업, 작가소개글, 작가프로필 사진 (처음에 카테고리 및 게시글 내용 출력햇을 때 받았던 작가아이디 정보 활용)
SELECT author.author_id, author.author_name, job.job_name, author.introduce, photo.path, photo.file_name
FROM author 
LEFT JOIN member ON member.member_id = author.author_id
LEFT JOIN photo ON photo.member_id = member.member_id
LEFT JOIN job ON job.job_id = author.job_id
WHERE author.author_id = 'bjy';

-- 작가 구독자 수 (처음에 카테고리 및 게시글 내용 출력햇을 때 받았던 작가아이디 정보 활용)
SELECT COUNT(subscribe.category_id)
FROM subscribe
LEFT JOIN category ON category.category_id = subscribe.category_id
WHERE category.author_id = 'bjy';

-- 다른작가의 최신글 6개 (처음에 카테고리 및 게시글 내용 출력햇을 때 받았던 작가아이디 정보 활용)
SELECT attachment.path, attachment.file_name, board.title, board.content, board.author_id
FROM board
LEFT JOIN attachment ON attachment.attachment_id = board.attachment_id
WHERE board.author_id != 'bjy' 
ORDER BY board_id DESC LIMIT 6;

-- 이전글 (처음에 카테고리 및 게시글 내용 출력햇을 때 받았던 카테고리아이디 정보 활용)
SELECT board_id, category_id, title
FROM board
WHERE category_id = 1
AND board_id < 3
ORDER BY board_id DESC LIMIT 1;

-- 다음글 (처음에 카테고리 및 게시글 내용 출력햇을 때 받았던 카테고리아이디 정보 활용)
SELECT board_id, category_id, title
FROM board
WHERE category_id = 1
AND board_id > 3
ORDER BY board_id ASC LIMIT 1;
