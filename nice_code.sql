-------------- краткая сводка строковых функций
select ASCII('z') from dual;                                          --возвращает числовой код
select ASCIISTR('\sd\') from dual;                                    --получает строку в любом наборе символов и преобразует ее в строку ASCII-символов
select CHR(15) from dual;                                             --возвращает символ типа VARCHAR2
select NCHR(39) from dual;                                            --возвращает символ типа NVARCHAR2 (длина 1), соответствующий заданному коду
select COMPOSE('a') from dual;                                        --получает строку символов в формате Юникода и возвращает ее в нормализованном виде.
select DECOMPOSE('а') from dual;                                      --получает строку в Юникоде и возвращает строку, в которой все составные символы разложены на элементы
select CONCAT('One','Two') from dual ;                                --присоединяет строку2 в конец строки1
select GREATEST('строка1', 'строка2', 'строка4') from dual            --получает одну или несколько строк и возвращает строку, которая оказалась бы последней (то есть наибольшей) при сортировке входных строк по возрастанию
select LEAST('строка1', 'строка2', 'строка4') from dual;              --получает одну или несколько строк и возвращает строку, которая оказалась бы первой (то есть наименьшей) при сортировке входных строк по возрастанию
select LENGTH('Primer') from dual;                                    --возвращает количество символов в строке
select LOWER('FgFgFg') from dual;                                     --преобразует все буквы заданной строки в нижний регистр
select UPPER('FgFgFg') from dual;                                     --преобразует все буквы заданной строки в верхний регистр
select INITCAP('привет товарищ') from dual;                           --изменяет регистр символов строкового аргумента, переводя первую букву каждого слова строки в верхний регистр, а остальные буквы — в нижний
select INSTR('одиндватри4етыре', 'два') from dual;                    --возвращает позицию, с которой строка2 входит в строку1; если вхождение не обнаружено, функция возвращает 0.
select SUBSTR('Brighten the corner where you are',-10) from dual;     --возвращает последние 10 символов из строки
select TO_CHAR('национальные_символьные_данные') from dual;           --преобразует данные из национального набора символов в эквивалентное представление в наборе символов базы данных
select TRANSLATE ('abcd', 'ab', '12') from dual;                      --заменяет в строке1 каждое вхождение символа из искомого_набора соответствующим символом набора_замены
select UNISTR('Знак евро \20AC') from dual;                           --возвращает строку1, преобразованную в Юникод; таким образом, функция является обратной по отношению к ASCIISTR
select REPLACE('один,два,три,четыре,пять', ',', '/') from dual;       --замена символов в строке
select LPAD('один', 10, '.') from dual;                               --добавление сиволами слева
select RPAD('один', 10, '.') from dual;                               --добавление сиволами справа
select LTRIM('.....один','.') from dual;                              --усечение строк слева
select RTRIM('один.....','.') from dual;                              --усечение строк справа
select LTRIM('     один') from dual;                                  --усечение пробелов в строке слева
select RTRIM('один     ') from dual;                                  --усечение пробелов в строке справа
select TRIM('   один  ') from dual;                                   --усечение пробелов в строке
select TRUNC(SYSDATE) from dual;                                      --усечение дат
select TRUNC(SYSDATE, 'yyyy') from dual;                              --получаем 01.01.год

-------------- краткая сводка числовых функций
select TO_NUMBER('123,45') + 6.6 from dual;                           --преобразует строки фиксированной и переменной длины, а также вещественные типы IEEE-754 к типу NUMBER
select CAST('1234' as number) from dual;                              --преобразование совместимое со стандартами ANSI
select CEIL(15.3) from dual;                                          --окрушление в большую сторону целого
select FLOOR(15.8) from dual;                                         --окрушление в меньшую сторону целого
select ROUND(14.567, 2) from dual;                                    --окрушление 
select TRUNC(14.567, 2) from dual;                                    --усекает число до заданного количества десятичных знаков
select ABS(-5) from dual;                                             --абсолютное значение числа
select MOD(5, 2) from dual;                                           --возвращает остаток от деления
select NANVL(n,m) from dual;                                          --возвращает m, если n является NaN («не числом»); в противном случае возвращается n
select POWER(5, 2) from dual;                                         --возводит n в степень m
select REMAINDER(10, 2.3) from dual;                                  --возвращает «псевдоостаток» от деления n на m
select SIGN(-10) from dual                                            --возвращает −1, 0 или +1, если значение n меньше нуля, равно нулю или больше нуля соответственно
select GREATEST(5, 8, 4, 3) from dual;                                --возвращает наибольшее число во входном списке
select LEAST(5, 8, 4, 3) from dual;                                   --возвращает наименьшее число во входном списке
select BIN_TO_NUM(1,1,1,0,1,1) from dual;                             --преобразует битовый вектор, представленный значениями 0,1..n в число
select ACOS(-1) from dual;                                            --также есть ASIN, ATAN, ATAN2, COS, COSH, SIN, TAN....
select BITAND(12,2) from dual;                                        --выполняет поразрядную операцию AND над битами двух положительных целых чисел
select EXP(10) from dual;                                             --возвращает число e в степени n. Число e (приблизительно равное 2,71828) является основанием натурального логарифма
select LN(5) from dual;                                               --возвращает натуральный логарифм числа
select LOG(5, 2) from dual;                                           --возвращает логарифм заданного числа по указанному основанию

-------------- краткая сводка функций для работы с датами
select sysdate from dual;                                             --текущее время сервера базы данных
select SYSTIMESTAMP from dual;                                        --текущее время сервера базы данных с точностью до 6 знаков секунды и Time Zone
select to_date('11.05.2014', 'dd.mm.yyyy') from dual                  --преобразование из строки в дату
select TRUNC(SYSDATE) from dual;                                      --усечение времени
select TRUNC(SYSDATE, 'yyyy') from dual;                              --получаем 01.01.год
select TRUNC(SYSDATE, 'mm') from dual;                                --получаем 01.мес.год
select TO_CHAR (SYSDATE, 'Month Day, YYYY') from dual;                --преобразование даты в строку(с необходимым форматом)
select TO_CHAR (SYSDATE, 'fmDDD DD D ') from dual;                    --вывод дня года, дня месяца, дня недели (fm исп-ся для подавления 0 и пробелов)
select sessiontimezone from dual;                                     --определяет часовой пояс сеанса
select TO_DATE ('07-1-1994', 'FXDD-FXMM-FXYYYY') from dual;           --FX - Точное совпадение маски форматирования. Модификатор FX работает как переключатель и может многократно встречаться в маске форматирования
select TO_DATE ('   07-1-94', 'FMDD-MM-FXYYYY') from dual;            --FM - Ослабление требований к точности совпадения(игнорирует пробелы, начальные нули..). модификатор FM работает как переключатель.
select NUMTOYMINTERVAL (10.5,'Year') from dual;                       --Преобразование к интервалу, Второй аргумент — строка Year —указывает, что заданное в первом аргументе число представляет количество лет
select NUMTODSINTERVAL (1440, 'Minute') from dual;                    --Преобразование к интервалу, Второй аргумент — строка Year —указывает, что заданное в первом аргументе число представляет количество минут

--------------парсинг строки с разделителем
DECLARE
  names VARCHAR2(60) := 'Anna,Matt,Joe,Nathan,Andrew,Aaron,Jeff';
  names_adjusted VARCHAR2(61);
  comma_location NUMBER := 0;
  prev_location NUMBER := 0;
BEGIN
  names_adjusted := names || ',';
  LOOP
    comma_location := INSTR(names_adjusted,',',comma_location+1);
    EXIT WHEN comma_location = 0;
    DBMS_OUTPUT.PUT_LINE(
                         SUBSTR(names_adjusted, prev_location+1, comma_location-prev_location-1)
                        );
    prev_location := comma_location;
  END LOOP;
END;

-------------- рег. выр.
-------------- рег. выр. Проверка наличия совпадения
declare 
  names nvarchar2(60) := 'One,Two,Three,Four,Five';
  comma_delimiter boolean;
begin
  comma_delimiter := REGEXP_LIKE(names, '^([a-z A-Z]*,)+([a-z A-Z]*){1}$');
  if comma_delimiter = true then
    dbms_output.put_line('совпадения есть');
  else
    dbms_output.put_line('совпадений нет');   
  end if;  
end;
-------------- рег. выр. Поиск совпадения (найти первое вхождение имени, начинающегося с буквы A и завершающегося согласной буквой)
DECLARE
  names VARCHAR2(60) := 'Anna,Matt,Joe,Nathan,Andrew,Jeff,Aaron';
  names_adjusted VARCHAR2(61);
  comma_delimited BOOLEAN;
  j_location NUMBER;
BEGIN
  comma_delimited := REGEXP_LIKE(names,'^([a-z ]*,)+([a-z ]*)$', 'i');
IF comma_delimited THEN
  j_location := REGEXP_INSTR(names, 'A[a-z]*[^aeiou],|A[a-z]*[^aeiou]$');
  DBMS_OUTPUT.PUT_LINE(J_location);
END IF;
END;
-------------- рег. выр. Получение текста совпадения (номер телефона)
DECLARE
  contact_info VARCHAR2(200) := 'address: 1060 W. Addison St. Chicago, IL 60613 home 773-555-5253';
  phone_pattern VARCHAR2(90) := '\(?\d{3}\)?[[:space:]\.\-]?\d{3}[[:space:]\.\-]?\d{4}';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Номер телефона: '|| REGEXP_SUBSTR(contact_info,phone_pattern,1,1));
END;
-------------- рег.выр. Подсчет совпадений
DECLARE
  contact_info VARCHAR2(200) := 'address: 1060 W. Addison St. Chicago, IL 60613 home 773-555-5253 work (312) 123-4567';
  phone_pattern VARCHAR2(90) := '\(?(\d{3})\)?[[:space:]\.\-]?(\d{3})[[:space:]\.\-]?\d{4}';
BEGIN
 DBMS_OUTPUT.PUT_LINE('Обнаружено ' || REGEXP_COUNT(contact_info,phone_pattern) ||' телефонных номера');
END;
-------------- рег.выр. Замена в строке
DECLARE
  names VARCHAR2(60) := 'Anna,Matt,Joe,Nathan,Andrew,Jeff,Aaron';
  names_adjusted VARCHAR2(61);
  comma_delimited BOOLEAN;
  extracted_name VARCHAR2(60);
  name_counter NUMBER;
BEGIN
  comma_delimited := REGEXP_LIKE(names,'^([a-z ]*,)+([a-z ]*){1}$', 'i');
  IF comma_delimited THEN
    names := REGEXP_REPLACE(names,'([a-z A-Z]*),([a-z A-Z]*),','\1,\2' || chr(10));
  END IF;
DBMS_OUTPUT.PUT_LINE(names);
END;
--------------

--------------
--------------










