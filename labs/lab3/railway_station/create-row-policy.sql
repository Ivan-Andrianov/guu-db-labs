create policy dispatcher_station_policy ON stations
    for all
    to dispatcher1, dispatcher2, dispatcher3
    using (
        exists (
            select 1 from dispatchers d
            where d.station_id = stations.station_id
            and d.role_name = current_user
        )
);