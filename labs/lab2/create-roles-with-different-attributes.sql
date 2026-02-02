-- Создание групповой роли
CREATE ROLE reader NOLOGIN CREATEROLE;

-- Создание роли пользователя
CREATE ROLE aleksey LOGIN NOINHERIT PASSWORD '123';

-- Добавляем Алексея в группу reader
GRANT reader TO aleksey;

-- Можно проверить:
-- CREATE ROLE test;
-- SET ROLE reader;
-- CREATE ROLE test;
