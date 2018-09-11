/* 
 * Sum date and duration 
 */
WITH date() as now, duration('P90D') as duration
RETURN now, now + duration as then

/*
* Find difference between dates
*/
WITH date({year: 2018, month: 9, day: 20}) as yesterday,
     date() as today
RETURN duration.between(yesterday, today) as duration;

/*
* Round dates
*/
WITH datetime.truncate('minutes', myDate) as truncDate
RETURN truncDate;
