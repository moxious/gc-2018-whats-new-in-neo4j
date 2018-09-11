/*
* Truncating dates and times
*/
WITH datetime({ timezone: 'America/New_York' }) as currentDateTimeInNY
RETURN date.truncate('millenium', currentDateTimeInNY) as truncMillenium,
       date.truncate('century', currentDateTimeInNY) as truncCentury,
       date.truncate('decade', currentDateTimeInNY) as truncDecade,
       date.truncate('year', currentDateTimeInNY, { day: 5 }) as truncYear,
       date.truncate('weekYear', currentDateTimeInNY) as truncWeekYear,
       date.truncate('quarter', currentDateTimeInNY) as truncQuarter,
       date.truncate('month', currentDateTimeInNY) as truncMonth,
       date.truncate('week', currentDateTimeInNY, { dayOfWeek: 2 }) as truncWeek,
       date.truncate('day', currentDateTimeInNY) as truncDa;
