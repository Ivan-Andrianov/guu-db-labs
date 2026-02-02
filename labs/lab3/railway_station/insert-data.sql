-- Добавляю данные в таблицы stations и dispatchers для тестов
insert into stations (name)
values
    ('Москва-Пассажирская'),
    ('Санкт‑Петербург‑Главный'),
    ('Нижний Новгород‑Московский'),
    ('Казань‑Пассажирская'),
    ('Екатеринбург‑Пассажирский');

insert into dispatchers (role_name, station_id)
values
    ('dispatcher1', 1),
    ('dispatcher2', 2),
    ('dispatcher3', 3),
    ('dispatcher1', 4),
    ('dispatcher2', 5);