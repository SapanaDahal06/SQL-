use Company;

-- Current Date
SELECT CAST(GETDATE() AS DATE) AS CurrentDate;

-- Current Date and Time
SELECT GETDATE() AS CurrentDateTime;


-- Current Date, Time, and Time Zone Offset
SELECT SYSDATETIMEOFFSET() AS CurrentDateTimeWithTimeZone;

-- Formatted Date
SELECT FORMAT(GETDATE(), 'dd-MM-yyyy') AS FormattedDate;


--1. Extract YEAR
SELECT YEAR(GETDATE()) AS Year;

--2. Extract MONTH
SELECT MONTH(GETDATE()) AS Month;

--3. Extract DAY
SELECT DAY(GETDATE()) AS Day;


--4. Extract WEEK
SELECT DATEPART(WEEK, GETDATE()) AS Week;

-- 5. Extract HOUR
SELECT DATEPART(HOUR, GETDATE()) AS Hour;

--6. Extract MINUTE
SELECT DATEPART(MINUTE, GETDATE()) AS Minute;

--7. Extract SECOND
SELECT DATEPART(SECOND, GETDATE()) AS Second;

--8. Extract DOW (Day of Week)
SELECT DATEPART(WEEKDAY, GETDATE()) AS DayOfWeek;


--9. Extract DOY (Day of Year)
SELECT DATEPART(DAYOFYEAR, GETDATE()) AS DayOfYear;

--10. Extract QUARTER
SELECT DATEPART(QUARTER, GETDATE()) AS Quarter;