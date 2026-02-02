-- Политика доступа диспетчеров к автомобилям только из их парка
create policy dispatcher_cars_policy on cars
    for all
    to dispatcher_1, dispatcher_2, dispatcher_3
    using (
        exists (
            select 1 from park_dispatchers pd
            where pd.park_id = cars.park_id
            and pd.role_name = current_user
        )
    );

alter table cars enable row level security;