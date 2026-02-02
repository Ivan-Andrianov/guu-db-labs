-- Создание роли администратора
create role admin with login password '123' superuser;

-- Создание роли диспетчеров
create role dispatcher1 with login password '123' nosuperuser nocreatedb nocreaterole;
create role dispatcher2 with login password '123' nosuperuser nocreatedb nocreaterole;
create role dispatcher3 with login password '123' nosuperuser nocreatedb nocreaterole;

-- Выдаю права на чтение таблиц диспетчерами
grant select on table stations to dispatcher1, dispatcher2, dispatcher3;

-- Включаю Row-Level Security для таблицы stations
alter table stations enable row level security;