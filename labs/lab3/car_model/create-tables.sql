-- Таблица ПАРК АВТОМОБИЛЕЙ
create table car_parks (
    park_id serial primary key ,
    name varchar(100) not null unique
);

-- Таблица АВТОМОБИЛИ
create table cars (
    car_id serial primary key,
    model varchar(100) not null,
    park_id int not null,

    constraint fk_park
        foreign key (park_id)
        references car_parks (park_id)
        on delete restrict
);

-- Таблица МАРШРУТЫ АВТОМОБИЛЕЙ
create table car_routes (
    route_id serial primary key,
    car_id int not null,

    constraint fk_car
        foreign key (car_id)
        references cars (car_id)
        on delete cascade
);

-- Таблица ДИСПЕТЧЕР ПАРКА
create table park_dispatchers (
    dispatcher_id serial primary key,
    role_name varchar(30),
    park_id int not null,

    constraint fk_dispatcher_park
        foreign key (park_id)
        references car_parks (park_id)
        on delete restrict
);