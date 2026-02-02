-- Создаем роль администратора
create role admin login password '123' superuser;

-- Создаем роли диспетчеров
create role dispatcher_1 login password '123' nosuperuser;
create role dispatcher_2 login password '123' nosuperuser;
create role dispatcher_3 login password '123' nosuperuser;

-- Явно назначаем ролям доступ
grant all privileges on database car_model to admin;
grant select on table cars, car_routes, car_parks, park_dispatchers to dispatcher_1, dispatcher_2, dispatcher_3;