select * from uk_accident;

select day_of_week, sum(number_of_casualties) from uk_accident
group by day_of_week;

select day_of_week, max(speed_limit) as "Maximum Speed", min(speed_limit) as "Minimum Speed"
from uk_accident group by day_of_week;