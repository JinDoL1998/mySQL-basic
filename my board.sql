USE mydb;

# 회원가입
INSERT INTO USER 
(email, password, nickname, tel_number,
address, address_detail, consent_personal_information)
VALUES
('jinseong@naver.com', '1234', 'JINDOL', '010-1234-1234',
'부산광역시', '해운대구', true);



# 로그인 
# 패스워드 암호화가 되어있짖 않을 때
SELECT * FROM USER
WHERE email = 'jinseong@naver.com'
AND password = '1234';

# 패스워드 암호화가 되어 있을 때
SELECT * FROM USER
WHERE email = 'jinseong@naver.com';

# 게시물 작성
INSERT INTO Board (title, content, board_image_url, write_datetime, writer_email)
VALUES ('Test Title', 'Test Content', null, now(), 'jinseong@naver.com');

