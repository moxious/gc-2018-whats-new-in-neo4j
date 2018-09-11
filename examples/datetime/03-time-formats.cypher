/*
* Time formats
*/
RETURN time('09:00:00.0000');

RETURN time({hour: 9, minute:00, second: 00, millisecond: 000, nanosecond: 000000});

/*
* Supported time formatting
*/
RETURN time('HH:MM:SS.sssssssss');
RETURN time('HHMMSS.sssssssss');
RETURN time('HH:MM:SS');
RETURN time('HHMMSS');
RETURN time('HH:MM');
RETURN time('HHMM');
RETURN time('HH');

/*
* Return clock times or access parts of time
*/
WITH time.transaction() as time
RETURN time.hour, time.minute, time.second, time.millisecond, time.nanosecond, time.timezone;

/*
* Timezone formats
*/
RETURN time('09:00:00.0000-0500');
RETURN time('09:00:00.0000[America/New_York]');
RETURN time('09:00:00.0000-0500[America/New_York]');
