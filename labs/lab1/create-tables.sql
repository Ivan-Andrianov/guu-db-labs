create table if not exists операции_с_вагонами();
create table if not exists автомобили();
create table if not exists станции();
create table if not exists перегоны();
create table if not exists станционные_парки();
create table if not exists станционные_пути();
create table if not exists жд_составы();
create table if not exists поезда();
create table if not exists локомотивы();
create table if not exists бригады_технического_осмотра();
create table if not exists локомотивные_бригады();
create table if not exists пути_перегона();
create table if not exists компьютеры();
create table if not exists магазины();
create table if not exists населенные_пункты();
create table if not exists университеты();
create table if not exists деканаты();
create table if not exists кафедры();
create table if not exists клиенты();
create table if not exists железные_дороги();
create table if not exists районы_управления();
create table if not exists диспетчерские_участки();
create table if not exists заправочные_станции();
create table if not exists пункты_технического_осмотра();
create table if not exists вокзалы(
    id serial generated always as IDENTITY primary key,
    city varchar(20),
    name varchar(30)
);
create table if not exists аэропорты();
create table if not exists морские_порты();
create table if not exists самолеты();
create table if not exists корабли();
create table if not exists космопорты();
create table if not exists космические_корабли();
create table if not exists роботы();
create table if not exists смартфоны();
create table if not exists кафе();
create table if not exists дачи();