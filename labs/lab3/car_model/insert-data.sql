-- Заполняем таблички данными для тестов
insert into car_parks (name)
values
    ('Центральный автопарк'),
    ('Северный автопарк'),
    ('Южный автопарк'),
    ('Западный автопарк'),
    ('Восточный автопарк');

insert into cars (model, park_id)
values
    ('Toyota Camry', 1),
    ('Hyundai Solaris', 1),
    ('Kia Rio', 2),
    ('Volkswagen Polo', 2),
    ('Lada Vesta', 3),
    ('Renault Logan', 3),
    ('Ford Focus', 4),
    ('Chevrolet Cruze', 4),
    ('Mazda3', 5),
    ('Honda Civic', 5);

insert into park_dispatchers (role_name, park_id)
values
    ('dispatcher_1', 1),
    ('dispatcher_2', 2),
    ('dispatcher_3', 3),
    ('dispatcher_4', 4),
    ('dispatcher_5', 5);

insert into car_routes (car_id)
values
    (1),  -- маршрут для Toyota Camry (парк 1)
    (2),  -- маршрут для Hyundai Solaris (парк 1)
    (3),  -- маршрут для Kia Rio (парк 2)
    (5),  -- маршрут для Lada Vesta (парк 3)
    (7); -- маршрут для Ford Focus (парк 4)