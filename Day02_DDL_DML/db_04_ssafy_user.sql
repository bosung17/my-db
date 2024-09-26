# Q1. ssafydb 데이터 베이스 생성 및 사용
CREATE DATABASE ssafydb;
USE ssafydb;

# Q2. ssafy_user 테이블 생성
CREATE TABLE ssafy_user (
	user_num INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(20) NOT NULL,
    user_name VARCHAR(20) NOT NULL,
    user_password VARCHAR(20) NOT NULL,
    user_email VARCHAR(30),
    signup_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- 테이블 정보확인
DESC ssafy_user;

# Q3. INSERT 쿼리를 사용해보자.
INSERT INTO ssafy_user
VALUES (10, "godqhr", "양띵균", "1234", "godqhr@ssafy.com", now());
SELECT * FROM ssafy_user;

-- 원하는 컬럼만 작성
INSERT INTO ssafy_user (user_id, user_name, user_password)
VALUES ("kimssafy", "김싸피", "1q2w3e4r");

-- 여러행 동시 입력
INSERT INTO ssafy_user (user_id, user_name, user_password)
VALUES ("kimssafy", "김싸피1", "1q2w3e4r"),
	("kimssafy", "김싸피2", "1q2w3e4r"),
	("kimssafy", "김싸피3", "1q2w3e4r");
        
# Q4. 데이터를 수정해보자
UPDATE ssafy_user
SET user_name = "anonymous";

UPDATE ssafy_user
SET user_password = 'ssafy'
WHERE user_num = 3;

# Q5. 데이터를 삭제해보자
DELETE FROM ssafy_user
WHERE user_num = 13;

