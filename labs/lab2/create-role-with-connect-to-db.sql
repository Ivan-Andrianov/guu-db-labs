-- Создание роли vova, которая может подключаться в БД mydb
CREATE ROLE vova LOGIN password '123';

-- Проверка:
CREATE ROLE test; -- (нет доступа)