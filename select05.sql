/*------------------------------------*/
타입변환

TO_CHAR     문자로
TO_DATE     날짜로
TO_NUMBER   숫자로

select 2+2 from dual;
select 2+'2' from dual;  --자동형변환(묵시적형변환)
select 2 || '2' from dual;
select 2 + TO_NUMBER('2') from dual;  --명시적형변환

select 
    TO_CHAR(12341),
    TO_CHAR(123.503),
    SYSDATE,
    TO_CHAR(SYSDATE, 'YYYY'),   -- Y M D
    TO_CHAR(SYSDATE, 'YY'),
    TO_CHAR(SYSDATE, 'MM'),
    TO_CHAR(SYSDATE, 'DD'),
    TO_CHAR(SYSDATE, 'YYYYMMDD'),
    TO_CHAR(SYSDATE, 'YYMMDD'),
    TO_CHAR(SYSDATE, 'YYYY/MM/DD'),
    TO_CHAR(SYSDATE, 'YYYY-MM-DD')
from dual;

--jumin 문자타입 -> SUBSTR
--birthday 날짜타입 -> TO_CHAR
select
    jumin,
    birthday,
    TO_CHAR(birthday, 'YY') 년,
    TO_CHAR(birthday, 'MM') 월,
    TO_CHAR(birthday, 'DD') 일,
    TO_CHAR(birthday, 'YYYY-MM-DD')
from student;

select
    SYSDATE,
    TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'),
    SYSTIMESTAMP,
    TO_CHAR(SYSTIMESTAMP, 'YYYY-MM-DD HH24:MI:SS')
from dual;  

select
    TO_NUMBER('12313'),
    TO_NUMBER('123.343'),
    -- TO_NUMBER('13929adf')   오류발생
from dual;

select 
    TO_CHAR(1234, '999999'),
    TO_CHAR(1234, '0999999'),
    TO_CHAR(1234, '$999999'),
    '$' || 1234,
    TO_CHAR(1234, '9999.99'),
    TO_CHAR(12345678, '999,999,999')
from dual;


select
    --'2025-12-02' + 3
    '2025-12-02' || 3,
    TO_DATE('2025-12-02') + 3,
    TO_DATE('2025/12/02') + 5,
    TO_DATE('25/12/02') + 7,
    TO_DATE('20251202') + 9,
    LAST_DAY('2024-02-03'),
    LAST_DAY( TO_DATE('2024-02-03') ),
    TO_DATE('2025-03-04', 'YYYY-MM-DD'),
    TO_DATE('25/03/04', 'YY/MM/DD'),
    TO_DATE('2025,03,04', 'YYYY,MM,DD')
from dual;


SELECT
    '2026-03-23',
    SUBSTR('2026-03-23', 6, 2),
    TO_CHAR( TO_DATE('2026-03-23'), 'MM') 월추출
FROM dual;
