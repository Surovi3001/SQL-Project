/* Questions with thier respective SQL Query */

/* What is the number of casualties on each day of the week? */

SELECT SUM(No_of_casualties), Day_of_week 
FROM UK_Accident; 

/* On each day of the week, what is the maximum and minimum speed limit on the roads where the accidents
happened? */

SELECT day_of_week, max(speed_limit) AS "Maximum Speed", min(speed_limit) AS "Minimum Speed"
FROM uk_accident 
GROUP BY day_of_week;

/* What is the importance of Light and Weather conditions in predicting accident severity? */

SELECT light_conditions, weather_conditions, COUNT(Accident_Severity)
FROM uk_accident
GROUP BY light_conditions, weather_conditions;
