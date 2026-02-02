-- Таблица СТАНЦИИ
create table stations (
    station_id serial primary key,
    name varchar(100) not null unique
);

-- Таблица СТАНЦИОННЫЕ ДИСПЕТЧЕРА
create table dispatchers (
    dispatcher_id serial primary key,
    role_name varchar(50) not null,
    station_id int not null,

    constraint fk_station
        foreign key (station_id)
            references stations (station_id)
            on delete restrict
);