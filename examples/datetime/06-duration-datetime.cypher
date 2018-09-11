/*
* Calculating durations for dates and times
*/
WITH duration.between(
    datetime({year: 2018, month: 9, day: 21, hour: 13, minute: 30, second: 00}),
    datetime({year: 2018, month: 9, day: 21, hour: 17, minute: 00, second: 00})
) as duration
RETURN duration;

WITH duration.between(
    datetime({year: 2018, month: 9, day: 21, hour: 13, minute: 30, second: 00}),
    datetime({year: 2018, month: 9, day: 21, hour: 17, minute: 00, second: 00})
) as sessionDuration
RETURN sessionDuration.months, sessionDuration.days, sessionDuration.hours, sessionDuration.minutes, sessionDuration.seconds;
