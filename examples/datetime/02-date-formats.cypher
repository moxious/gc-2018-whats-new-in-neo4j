/*
* Date formats
*/
RETURN date('2018-09-21');

RETURN date({year: 2018, month: 9, day: 21});

/*
* Return clock dates or access parts of dates
*/
WITH date.transaction() as date
RETURN date.year, date.month, date.day;

/*
* Create other date formats
* 1. Week number
* 2. Quarter
* 3. Ordinal date
*/
RETURN date('2018-W38');

RETURN date('2018-Q4');

RETURN date('2018-264');