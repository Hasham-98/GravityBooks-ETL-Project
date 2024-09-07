use [gravity-book DWH];

INSERT INTO [gravity-book DWH].[dbo].[DimDate]
        ([DateSK],[Date],[Day],[DaySuffix] ,[DayOfWeek] ,[DOWInMonth] ,[DayOfYear] ,[WeekOfYear] 
       ,[WeekOfMonth],[Month] ,[MonthName],[Quarter],[QuarterName] ,[Year] 
	   ,[StandardDate], [HolidayText])
SELECT [DateSK],[Date],[Day],[DaySuffix] ,[DayOfWeek] ,[DOWInMonth] ,[DayOfYear] ,[WeekOfYear] 
       ,[WeekOfMonth],[Month] ,[MonthName],[Quarter],[QuarterName] ,[Year] 
	   ,[StandardDate], [HolidayText]
FROM [Sales_DWH].[dbo].[DimDate];
