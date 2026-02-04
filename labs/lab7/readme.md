# Лабораторная работа №7

## Задание 1

**Шаги:**
1. Создать БД и несколько таблиц;
2. Создать логический бэкап в сжатом формате, используя pg_dump;
3. Удалить созданную БД и восстановить ее из бэкап.

**Скрипты:**
```postgresql
-- Создание БД и нескольких таблиц
create database bank;
create table department(
    id serial primary key,
    name varchar(50),
    address varchar(100)
);
create table employee(
    id serial primary key,
    name varchar(30),
    lastname varchar(50),
    age int,
    department_id int,
    
    constraint department_fk
        foreign key (department_id)
        references department(id)
        on delete cascade
);
```
Результат:

![img.png](image/img-1.png)

<hr/>

```postgresql
-- Заполняем таблицы данными
INSERT INTO department (name, address) VALUES
    ('IT-отдел', 'г. Москва, ул. Ленина, 10'),
    ('Отдел кадров', 'г. Москва, ул. Пушкина, 15'),
    ('Финансовый отдел', 'г. Санкт-Петербург, пр. Невский, 20'),
    ('Маркетинг', 'г. Казань, ул. Татарстан, 5');
INSERT INTO employee (name, lastname, age, department_id) VALUES
    ('Алексей', 'Иванов', 28, 1),
    ('Мария', 'Петрова', 32, 1),
    ('Дмитрий', 'Сидоров', 45, 2),
    ('Елена', 'Морозова', 29, 3),
    ('Иван', 'Кузнецов', 37, 4),
    ('Ольга', 'Васильева', 26, 1),
    ('Сергей', 'Романов', 41, 3);
```
Результат:

![img.png](image/img-2.png)

<hr/>

Создаем логический бэкап в сжатом формате:

![img.png](image/img-3.png)

Удаляем DATABASE:
```postgresql
drop database bank;
```
Результат:

![img.png](image/img-4.png)

<hr/>

Восстановление БД:
```postgresql
-- Создаем DATABASE bank
create database bank;
```
Результат:

![img.png](image/img-5.png)

Распаковываем bank_backup.sql.gz > bank_backup.sql:

![img.png](image/img-6.png)

Создаем DATABASE bank:

![img.png](image/img-7.png)

Применяем sql скрипт с бэкапом:

![img.png](image/img-8.png)

```postgresql
-- Проверка восстановления БД
select * from employee;
select * from department;
```
Результаты:

![img.png](image/img-9.png)

![img.png](image/img-10.png)



## Задание 2

**Шаги:**
1. Создать БД и несколько таблиц (будем использовать БД bank из предыдущего задания);
2. Создать логический бэкап в custom формате, используя pg_dump;
3. Удалить созданную БД и восстановить ее из бэкап;
4. Проверить восстановление.

Создаем логический бэкап в custom формате:

![img.png](image/img-11.png)

<hr/>

Удаляем DATABASE bank:
```postgresql
drop database bank;
```
![img.png](image/img-12.png)

<hr/>

Восстанавливаем БД:
```postgresql
create database bank;
```
Результат:

![img.png](image/img-13.png)

Восстанавливаем БД из бэкапа:

![img.png](image/img-14.png)

```postgresql
-- Проверка восстановления БД
select * from employee;
select * from department;
```
Результаты:

![img.png](image/img-15.png)

![img.png](image/img-16.png)


## Задание 3

**Шаги:**
1. Создать БД и несколько таблиц (будем использовать БД bank из предыдущего задания);
2. Создать логический бэкап в directory формате, используя pg_dump;
3. Удалить созданную БД и восстановить ее из бэкап;
4. Проверить восстановление.

Создаем логический бэкап в directory формате:

![img.png](image/img-17.png)

<hr/>

Удаляем DATABASE bank:
```postgresql
drop database bank;
```
Результат:

![img.png](image/img-18.png)

<hr/>

Восстанавливаем БД:
```postgresql
create database bank;
```
Результат:

![img.png](image/img-19.png)

<hr/>

Восстанавливаем БД из бэкапа:

![img.png](image/img-20.png)

```postgresql
-- Проверка восстановления БД
select * from employee;
select * from department;
```
Результаты:

![img.png](image/img-21.png)

![img.png](image/img-22.png)


## Задание 4

**Шаги:**
1. Создать БД и несколько таблиц (будем использовать БД bank из предыдущего задания);
2. Создать физический бэкап, используя pg_basebackup;
3. Удалить созданную БД и восстановить ее из бэкап;
4. Проверить восстановление.


Создаем физический бэкап:

![img.png](image/img-23.png)

<hr/>

Удаляем DATABASE bank:
```postgresql
drop database bank;
```
Результат:

![img.png](image/img-24.png)

<hr/>

Перемещаем сгенерированный бэкап в Docker контейнер Postgres через том примонтированный к папке /var/lib/postgresql/data:

![img_1.png](image/img-25.png)

![img_1.png](image/img-26.png)

```postgresql
-- Проверка восстановления БД
select * from employee;
select * from department;
```
Результаты:

![img_1.png](image/img-27.png)

![img_1.png](image/img-28.png)