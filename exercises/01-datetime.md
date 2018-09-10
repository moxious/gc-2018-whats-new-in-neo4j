# Date/Time Exercises

## Rules:
* Cannot use APOC or other extensions. Must use built-in Cypher functionality.


## Resources:
* Slides: 
* Examples directory in this repository
* Developer manual - Temporal Values: https://neo4j.com/docs/developer-manual/3.4/cypher/syntax/temporal/#cypher-temporal-specify-time-zone
* Developer manual - Temporal Functions: https://neo4j.com/docs/developer-manual/3.4/cypher/functions/temporal/
* Make sure to check the examples directory in this repo for code samples you
can copy and paste to speed things up.
* If you want to use a pure function in cypher and you don't have any data, just use it like this:

```RETURN date();```

## Exercise 1: Work with Today and Nearby Dates/Times

1. Create a 3.4 database in Neo4j Desktop, start it, and open Neo4j Browser.
2. What is the current date/time for our timezone?
   *HINT: You may need to change the config parameter
3. Specify today's date in String format and return only the month and year.
4. Find the current date and time for UTC-06:00 for hours, minutes, and seconds.
5. What is the current date and time in Sydney, Australia?
6. Find the duration in days and also in hours between the beginning and end of GraphConnect!
   *HINT: starts Sep20 at 09:00 and ends Sep22 at 17:00
7. How many minutes are left from current time to the end of the session?
8. What is the week number and ordinal date of the start of GraphConnect?
9. Using your birthdate, find out how old you are in days.
   *HINT: You can return years first to make sure it returns your correct age. :)
9. What is the current decade?
   *HINT: Use truncation
10. What date is 102 days from today?


## Exercise 2: Find Cities and Founded Years

1. Load the historical founding of cities data found in this repository.
2. Write a query to find out what year New York City was founded.
3. Next, write a query that finds the cities founded after 1900AD.
4. Next, write a query to find the earliest-founded city in Germany.
5. In what century was Alexandria founded?
   *HINT: Use truncation
6. Using duration, what is the number of years between the founding of New York, New York and of London, England?
7. Write a query to return the list of cities founded in the Bronze Age
   *HINT: Bronze Age = 3700BC - 500 BC
8. Find the list of cities with a population of more than 50,000 founded in a leap year.


## Source Data

Data source is public. All data and research findings available from http://metrocosm.com/history-of-cities/.
