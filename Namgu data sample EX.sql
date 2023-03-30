SELECT * FROM hotel.namgu;

SELECT 구분, 세대수, 면적 FROM Namgu;

SELECT DISTINCT 면적, 구분, 세대수 FROM Namgu;

SELECT * FROM Namgu WHERE 구분 LIKE '문현%';
SELECT * FROM Namgu WHERE 구분 LIKE '%문현%';

SELECT * FROM Namgu WHERE 세대수 >= 10000;
SELECT * FROM Namgu WHERE 세대수 <= 5000;

SELECT * FROM Namgu WHERE 세대수 >=5000 AND 세대수 <=10000;
SELECT * FROM Namgu WHERE 세대수 BETWEEN 5000 AND 10000;

SELECT * FROM Namgu WHERE 통 IN (21,22,23);
SELECT * FROM Namgu WHERE 통 NOT IN (21,22,23);

SELECT DISTINCT 구분, 세대수 FROM Namgu;

# Namgu 테이블에서 인구수가 10000명 이상이면서 18세이상 인구수 12000명 이하인 레코드 중 전체 필드 검색
SELECT * FROM Namgu WHERE 인구수 >= 10000 AND 18세이상인구수 <= 12000;

# Namgu 테이블에서 통이 20이상이거나 반이 100이하인 레코드중에 구분, 세대수, 인구필드를 검색
SELECT 구분, 세대수, 인구수, 통, 반 FROM Namgu WHERE 통 >= 20 OR 반 <= 100;

# Namgu 테이블에서 인구수가 10000명 이상인 레코드중 18세이상인구수 12000명 이하이거나 반이 100이하인 레코드의 전체 필드 검색
SELECT * FROM Namgu WHERE 인구수 >= 10000 AND (18세이상인구수 <= 12000 OR 반 <= 100);

# Namgu 테이블에서 10000명 이상이면서 18세인구수가 12000명 이하이고 반이 100 이상인 레코드의 전체 필드 검색
SELECT * FROM Namgu WHERE (인구수 >= 10000 AND 18세이상인구수 <= 12000) OR 반 >= 100;

# 내림차순 DESC
SELECT * FROM Namgu
ORDER BY 세대수 DESC;

# 오름차순 ASC
SELECT * FROM Namgu 
ORDER BY 통 DESC, 반 ASC;



