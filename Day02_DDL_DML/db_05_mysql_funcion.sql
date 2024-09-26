# Q1. 숫자관련 함수 사용
-- 2의 3제곱
SELECT pow(2, 3)
FROM dual; -- 가짜 문법용 테이블
-- 8 나누기 3의 나머지
SELECT mod(8, 3)
FROM dual;
-- 최대값, 최솟값
SELECT greatest(1,2,3,4,5,6,7,8), least(1,2,3,4,5,6,7,8)
FROM dual;
-- 반올림
SELECT round(pi(),3) FROM dual;

# Q2. 문자 관련 함수
-- 아스키 코드값 얻기
SELECT ascii('0');

-- concat 메서드를 써보자.
SELECT concat('3번 유저의 이름은 ', user_name, '입니다')
FROM ssafy_user
WHERE user_num = 3;

-- 이름의 길이가 5인 직원의 이름을 조회
SELECT *
FROM ssafy_user
WHERE length(user_name) = 9;

-- 김싸피
SELECT length('김싸피'), char_length('김싸피');
SELECT length('❤🧡💛💚💙💜🤎'), char_length('❤🧡💛💚💙💜🤎');

-- 문자열 변경
SELECT replace('helloworld', 'world', ' guys');

-- 문자열 인덱스
SELECT instr('Hello SSAFY', 'SSAFY');

-- 모든 직원의 이름 3자리조회
SELECT substr(user_name, 1, 3)
FROM ssafy_user;

-- LPAD RPAD
SELECT lpad('SSAFY', 10, '*');
SELECT rpad('SSAFY', 10, '*');

-- REVERSE
SELECT reverse('안녕하세요');
SELECT reverse('');

# Q3. 날짜 관련함수
-- 2초 더하기
SELECT addtime('2024-09-26 10:48:50', '10');
-- 날짜차이
SELECT datediff('2024-12-31', '2024-09-26');

-- 오늘은?
SELECT now();
SELECT yearweek(now());

# Q4. 트랜잭션 사용해보기
SET autocommit = 0;

USE ssafy;
CREATE TABLE test_table(
	val VARCHAR(2)
);

START TRANSACTION;
INSERT INTO test_table VALUES ('S');
INSERT INTO test_table VALUES ('S');
INSERT INTO test_table VALUES ('A');
INSERT INTO test_table VALUES ('F');
INSERT INTO test_table VALUES ('Y');
COMMIT;
ROLLBACK;

SELECT * FROM test_table;