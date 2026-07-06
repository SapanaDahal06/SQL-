use Company;

-- Current Date
SELECT CAST(GETDATE() AS DATE) AS CurrentDate;

-- Current Date and Time
SELECT GETDATE() AS CurrentDateTime;


-- Current Date, Time, and Time Zone Offset
SELECT SYSDATETIMEOFFSET() AS CurrentDateTimeWithTimeZone;