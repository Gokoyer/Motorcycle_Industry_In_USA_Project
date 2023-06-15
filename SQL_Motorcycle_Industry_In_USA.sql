/*
Dataset containing the mileage, price, Bike, Type and time used of BMW Motorccycle in USA in 1960-2023
A SQL will used to extract, manipulate and analyse Comprehensive Motorcycle Dataset. 
This project is all about gaining insights into Motorcycle industry by exploring thier
mileage, price, bike types and used time between 1960 - 2023
*/

----------------------------------------------------------------------------------------------------------
--To give overview of Mileage(Km), Price($), Bike, Type of bike and Used time of BMW motorcycle
SELECT 
   *
FROM 
   [dbo].[BMW_bike_Final]
ORDER BY 
   Type_of_Bike

----------------------------------------------------------------------------------------------------------
--Average Distance(km) traveled by all the 5 types of bikes in all the decades between 1960 - 2023
SELECT 
   BMWBike.Decade AS Decade,
   ROUND(ISNULL([BMWBike].[AverageMileage], 0), 2, 0) AS BMW_AVGMileage,
   ROUND(ISNULL([DucaBike].[AverageMileage], 0), 2, 0) AS Duca_AVGMileage,
   ROUND(ISNULL([KTHBike].[AverageMileage], 0), 2, 0) AS KTH_AVGMileage,
   ROUND(ISNULL([RESBike].[AverageMileage], 0), 2, 0) AS RES_AVGMileage,
   ROUND(ISNULL([SuzBike].[AverageMileage], 0), 2, 0) AS Suz_AVGMileage,
   ROUND(ISNULL([YamaBike].[AverageMileage], 0), 2, 0) AS Yama_AVGMileage
FROM 
   [dbo].[BMWSelectBikeDecadeAverage] AS [BMWBike]
   LEFT JOIN [dbo].[DucattiSelectBikeDecadeAverage] AS DucaBike 
   ON [BMWBike].[Decade] = DucaBike.Decade
   LEFT JOIN [dbo].[KTHSelectBikeDecadeAverage] AS KTHBike 
   ON [BMWBike].[Decade] = [KTHBike].[Decade]
   LEFT JOIN [dbo].[RES_SelectBikeDecadeAverage] AS RESBike
   ON [BMWBike].[Decade] = [RESBike].[Decade]
   LEFT JOIN [dbo].[SuzukiSelectBikeDecadeAverage] AS SuzBike
   ON [BMWBike].[Decade] = [SuzBike].[Decade]
   LEFT JOIN [dbo].[YamahaSelectBikeDecadeAverage] AS YamaBike
   ON [BMWBike].[Decade] = [YamaBike].[Decade]
ORDER BY
   Decade ASC

--------------------------------------------------------------------------------------------------------------
--Average Price($) of all the 5 types of bikes in all the decades between 1960 - 2023
SELECT 
   BMWBike.Decade AS Decade,
   ROUND(ISNULL([BMWBike].[AveragePrice], 0), 0) AS BMW_AVGPrice,
   ROUND(ISNULL([DucaBike].[AveragePrice], 0),0) AS Duca_AVGPrice,
   ROUND(ISNULL([KTHBike].[AveragePrice], 0), 0) AS KTH_AVGPrice,
   ROUND(ISNULL([RESBike].[AveragePrice], 0), 0) AS RES_AVGPrice,
   ROUND(ISNULL([SuzBike].[AveragePrice], 0), 0) AS Suz_AVGPrice,
   ROUND(ISNULL([YamaBike].[AveragePrice], 0), 0) AS Yama_AVGPrice
FROM 
   [dbo].[BMWSelectBikeDecadeAverage] AS [BMWBike]
   LEFT JOIN [dbo].[DucattiSelectBikeDecadeAverage] AS DucaBike 
   ON [BMWBike].[Decade] = DucaBike.Decade
   LEFT JOIN [dbo].[KTHSelectBikeDecadeAverage] AS KTHBike 
   ON [BMWBike].[Decade] = [KTHBike].[Decade]
   LEFT JOIN [dbo].[RES_SelectBikeDecadeAverage] AS RESBike
   ON [BMWBike].[Decade] = [RESBike].[Decade]
   LEFT JOIN [dbo].[SuzukiSelectBikeDecadeAverage] AS SuzBike
   ON [BMWBike].[Decade] = [SuzBike].[Decade]
   LEFT JOIN [dbo].[YamahaSelectBikeDecadeAverage] AS YamaBike
   ON [BMWBike].[Decade] = [YamaBike].[Decade]
ORDER BY
   Decade ASC

---------------------------------------------------------------------------------------------------------------------
--Bike Counts of all the 5 types of bike in all the decades between 1960 - 2023
SELECT 
   BMWBike.Decade AS Decade,
   ISNULL([BMWBike].[Bike_Count], 0) AS BMW_Bike_Count,
   ISNULL([DucaBike].[Bike_Count], 0) AS Duca_Bike_Count,
   ISNULL([KTHBike].[Bike_Count], 0) AS KTH_Bike_Count,
   ISNULL([RESBike].[Bike_Count], 0) AS RES_Bike_Count,
   ISNULL([SuzBike].[Bike_Count], 0) AS Suz_Bike_Count,
   ISNULL([YamaBike].[Bike_Count], 0) AS Yama_Bke_Count
FROM 
   [dbo].[BMWSelectBikeDecadeAverage] AS [BMWBike]
   LEFT JOIN [dbo].[DucattiSelectBikeDecadeAverage] AS DucaBike 
   ON [BMWBike].[Decade] = DucaBike.Decade
   LEFT JOIN [dbo].[KTHSelectBikeDecadeAverage] AS KTHBike 
   ON [BMWBike].[Decade] = [KTHBike].[Decade]
   LEFT JOIN [dbo].[RES_SelectBikeDecadeAverage] AS RESBike
   ON [BMWBike].[Decade] = [RESBike].[Decade]
   LEFT JOIN [dbo].[SuzukiSelectBikeDecadeAverage] AS SuzBike
   ON [BMWBike].[Decade] = [SuzBike].[Decade]
   LEFT JOIN [dbo].[YamahaSelectBikeDecadeAverage] AS YamaBike
   ON [BMWBike].[Decade] = [YamaBike].[Decade]
ORDER BY
   Decade ASC

-----------------------------------------------------------------------------------------------------------------
--Total Distance(km) traveled by all the bikes in all the decades between 1960 - 2023
SELECT 
   BMWBike.Decade AS Decade,
   ISNULL([BMWBike].[TotalMileage], 0) AS BMW_TotalMileage,
   ISNULL([DucaBike].[TotalMileage], 0) AS Duca_TotalMileage,
   ISNULL([KTHBike].[TotalMileage], 0) AS KTH_TotalMileage,
   ISNULL([RESBike].[TotalMileage], 0) AS RES_TotalMileage,
   ISNULL([SuzBike].[TotalMileage], 0) AS Suz_TotalMileage,
   ISNULL([YamaBike].[TotalMileage], 0) AS Yama_TotalMileage
FROM 
   [dbo].[BMWSelectBikeDecadeSum] AS [BMWBike]
   LEFT JOIN [dbo].[DucattiSelectBikeDecadeSum] AS DucaBike 
   ON [BMWBike].[Decade] = DucaBike.Decade
   LEFT JOIN[dbo].[KTHSelectBikeDecadeSum] AS KTHBike 
   ON [BMWBike].[Decade] = [KTHBike].[Decade]
   LEFT JOIN [dbo].[RES_SelectBikeDecadeSum] AS RESBike
   ON [BMWBike].[Decade] = [RESBike].[Decade]
   LEFT JOIN [dbo].[SuzukiSelectBikeDecadeSum] AS SuzBike
   ON [BMWBike].[Decade] = [SuzBike].[Decade]
   LEFT JOIN [dbo].[YamahaSelectBikeDecadeSum] AS YamaBike
   ON [BMWBike].[Decade] = [YamaBike].[Decade]
ORDER BY
   Decade ASC

-----------------------------------------------------------------------------------------------------------------
--Total Prices of all the bikes in all the decades between 1960 - 2023
SELECT 
   BMWBike.Decade AS Decade,
   ISNULL([BMWBike].[TotalPrice], 0) AS BMW_TotalPrice,
   ISNULL([DucaBike].[TotalPrice], 0) AS Duca_TotalPrice,
   ISNULL([KTHBike].[TotalPrice], 0) AS KTH_TotalPrice,
   ISNULL([RESBike].[TotalPrice], 0) AS RES_TotalPrice,
   ISNULL([SuzBike].[TotalPrice], 0) AS Suz_TotalPrice,
   ISNULL([YamaBike].[TotalPrice], 0) AS Yama_TotalPrice
FROM 
   [dbo].[BMWSelectBikeDecadeSum] AS [BMWBike]
   LEFT JOIN [dbo].[DucattiSelectBikeDecadeSum] AS DucaBike 
   ON [BMWBike].[Decade] = DucaBike.Decade
   LEFT JOIN[dbo].[KTHSelectBikeDecadeSum] AS KTHBike 
   ON [BMWBike].[Decade] = [KTHBike].[Decade]
   LEFT JOIN [dbo].[RES_SelectBikeDecadeSum] AS RESBike
   ON [BMWBike].[Decade] = [RESBike].[Decade]
   LEFT JOIN [dbo].[SuzukiSelectBikeDecadeSum] AS SuzBike
   ON [BMWBike].[Decade] = [SuzBike].[Decade]
   LEFT JOIN [dbo].[YamahaSelectBikeDecadeSum] AS YamaBike
   ON [BMWBike].[Decade] = [YamaBike].[Decade]
ORDER BY
   Decade ASC

-----------------------------------------------------------------------------------------------------------------
--Bike Counts, Average Mileage(km), and Average Price($) of BWM Bikes by decade between 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade, 
   COUNT(DISTINCT Bike) AS Bike_Count, 
   ROUND(AVG(Mileage_km), 0) AS AverageMileage, 
   ROUND(AVG(Price_$), 0) AS AveragePrice 
FROM 
   [dbo].[BMW_bike_Final][dbo]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC

-----------------------------------------------------------------------------------------------------------------
--Bike Count, Total Mileage(km), and Total Price($) of BWM Bikes by decade between 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade,  
   COUNT(DISTINCT Bike) AS Bike_Count,
   SUM(Mileage_km) AS TotalMileage, 
   SUM(Price_$) AS TotalPrice 
FROM 
   [dbo].[BMW_bike_Final][dbo]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC

------------------------------------------------------------------------------------------------------------------
--Total number of Bikes, Average Mileage(km), and Average Price($) of BWM Bikes by year between 1960-1969 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[BMW_bike_Final]
WHERE 
   Used_Time like '196%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time ASC

------------------------------------------------------------------------------------------------------------------
--Total number of Bikes, Average Mileage(km), and Average Price($) of BWM Bikes by year between 1970-1979 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[BMW_bike_Final]
WHERE 
   Used_Time like '197%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

----------------------------------------------------------------------------------------------------------------------
--Total number of Bikes, Average Mileage(km), and Average Price($) of BWM Bikes by year between 1980-1989 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[BMW_bike_Final]
WHERE 
   Used_Time like '198%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

----------------------------------------------------------------------------------------------------------------------
--Total number of Bikes, Average Mileage(km), and Average Price($) of BWM Bikes by year between 1990-1999 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[BMW_bike_Final]
WHERE 
   Used_Time like '199%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

---------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bikes, Average Mileage(km), and Average Price($) of BWM Bikes by year between 2000-2009 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[BMW_bike_Final]
WHERE 
   Used_Time like '200%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

--------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bikes, Average Mileage(km), and Average Price($) of BWM Bikes by year between 2010-2019 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[BMW_bike_Final]
WHERE 
   Used_Time like '201%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

--------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bikes, Average Mileage(km), and Average Price($) of BWM Bikes by year between 2020-2023 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[BMW_bike_Final]
WHERE 
   Used_Time like '202%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
/*
Dataset containing the mileage, price, Bike, Type and time used of Ducatti Motorccycle in USA in 1960-2023
A SQL is used to extract, manipulate and analyse Comprehensive Motorcycle Dataset. 
This project is all about gaining insights into Motorcycle industry by exploring thiermileage,
price, bike types and used time between 1960 - 2023
*/
--To give overview of Mileage(Km), Price($), Bike, Type of bike and Used time of Ducatti motorcycle

SELECT 
   *
FROM 
   [dbo].[ducatti_bike_Final]
ORDER BY 
   Type_of_Bike

----------------------------------------------------------------------------------------------------------------------------
--Bike Count, Average Mileage(km), and Average Price($) of Ducatti Bikes in USA by Decade from 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade, 
   COUNT(DISTINCT Bike) AS Bike_Count, 
   ROUND(AVG(Mileage_km), 0) AS AverageMileage, 
   ROUND(AVG(Price_$), 0) AS AveragePrice 
FROM 
   [dbo].[ducatti_bike_Final]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC

----------------------------------------------------------------------------------------------------------------------
--Bike Count, Total Mileage(km), and Total Price($) of Ducatti Bikes in USA by Decade from 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade,  
   COUNT(DISTINCT Bike) AS Bike_Count,
   SUM(Mileage_km) AS TotalMileage, 
   SUM(Price_$) AS TotalPrice 
FROM 
   [dbo].[ducatti_bike_Final]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC 

--------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducatti Bikes by year between 1970-1979 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[ducatti_bike_Final]
WHERE 
   Used_Time like '197%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

---------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducatti Bikes by year between 1980-1989 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[ducatti_bike_Final]
WHERE 
   Used_Time like '198%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducatti Bikes by year between 1990-1999 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[ducatti_bike_Final]
WHERE 
   Used_Time like '199%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

---------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducatti Bikes by year between 2000 - 2009 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[ducatti_bike_Final]
WHERE 
   Used_Time like '200%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

--------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducatti Bikes by year between 2010 - 2019
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[ducatti_bike_Final]
WHERE 
   Used_Time like '201%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

----------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducatti Bikes by year between 2020 - 2023
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[ducatti_bike_Final]
WHERE 
   Used_Time like '202%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
/*
Dataset containing the mileage, price, Bike, Type and time used of KTH Motorccycle in USA in 1960-2023
A SQL will used to extract, manipulate and analyse Comprehensive Motorcycle Dataset. 
This project is all about gaining insights into Motorcycle industry by exploring thier
mileage, price, bike types and used time between 1960 - 2023
*/

--To give overview of Mileage(Km), Price($), Bike, Type of bike and Used time of KTH motorcycle

SELECT 
   *
FROM 
   [dbo].[KTH_bike_Final]
ORDER BY 
   Type_of_Bike

----------------------------------------------------------------------------------------------------------------------------------
--Bike Count, Average Mileage(km), and Average Price($) of KTH Bikes in USA by decade between 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade, 
   COUNT(DISTINCT Bike) AS Bike_Count, 
   ROUND(AVG(Mileage_km), 0) AS AverageMileage, 
   ROUND(AVG(Price_$), 0) AS AveragePrice 
FROM 
   [dbo].[KTH_bike_Final]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC

----------------------------------------------------------------------------------------------------------------------
--Bike Count, Total Mileage(km), and Total Price($) of KTH Bikes in USA by decade between 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade,  
   COUNT(DISTINCT Bike) AS Bike_Count,
   SUM(Mileage_km) AS TotalMileage, 
   SUM(Price_$) AS TotalPrice 
FROM 
   [dbo].[KTH_bike_Final]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC 

--------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of KTH Bikes by year between 1990-1999 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[KTH_bike_Final]
WHERE 
   Used_Time like '199%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

---------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of KTH Bikes by year between 2000-2009 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[KTH_bike_Final]
WHERE 
   Used_Time like '200%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

--------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of KTH Bikes by year between 2010-2019 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[KTH_bike_Final]
WHERE 
   Used_Time like '201%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

--------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducatti Bikes by year between 2020-2023 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
  [dbo].[KTH_bike_Final]
WHERE 
   Used_Time like '202%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
/*
Dataset containing the mileage, price, Bike, Type and time used of Royal Enfield Standard (RES) Motorccycle in USA in 1960-2023
A SQL will used to extract, manipulate and analyse Comprehensive Motorcycle Dataset. 
This project is all about gaining insights into Motorcycle industry by exploring thier
mileage, price, bike types and used time between 1960 - 2023
*/
--To give overview of Mileage(Km), Price($), Bike, Type of bike and Used time of RES motorcycle

SELECT 
   *
FROM 
   [dbo].[Royal_Enfield_Standard_bike_Final]
ORDER BY 
   Type_of_Bike

----------------------------------------------------------------------------------------------------------------------------------
--Bike Count, Average Mileage, and Average Price of RES Bikes in USA by Decade of Used Time from 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade, 
   COUNT(DISTINCT Bike) AS Bike_Count, 
   ROUND(AVG(Mileage_km), 0) AS AverageMileage, 
   ROUND(AVG(Price_$), 0) AS AveragePrice 
FROM 
   [dbo].[Royal_Enfield_Standard_bike_Final]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC

----------------------------------------------------------------------------------------------------------------------
--Bike Count, Total Mileage, and Total Price of RES Bikes in USA by Used Time(Decade) from 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade,  
   COUNT(DISTINCT Bike) AS Bike_Count,
   SUM(Mileage_km) AS TotalMileage, 
   SUM(Price_$) AS TotalPrice 
FROM 
   [dbo].[Royal_Enfield_Standard_bike_Final]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC 
--------------------------------------------------------------------------------------------------------------------------
--Average number of Bike, Average Mileage, and Average Price of RES Bikes by year between 1960-1969 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Royal_Enfield_Standard_bike_Final]
WHERE 
   Used_Time like '196%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time ASC
--------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of RES Bikes by year between 2000-2009 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Royal_Enfield_Standard_bike_Final]
WHERE 
   Used_Time like '200%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
--------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of RES Bikes by year between 2010-2019 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Royal_Enfield_Standard_bike_Final]
WHERE 
   Used_Time like '201%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
--------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of RES Bikes by year between 2020-2023 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Royal_Enfield_Standard_bike_Final]
WHERE 
   Used_Time like '202%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
--------------------------------------------------------------------------------------------------------------------------
/*
Dataset containing the mileage, price, Bike, Type and time used of Suzuki Motorccycle in USA in 1960-2023
A SQL will used to extract, manipulate and analyse Comprehensive Motorcycle Dataset. 
This project is all about gaining insights into Motorcycle industry by exploring thier
mileage, price, bike types and used time between 1960 - 2023
*/
--To give overview of Mileage(Km), Price($), Bike, Type of bike and Used time of Suzuki motorcycle

SELECT 
   *
FROM 
   [dbo].[Suzuki_bike_Final]
ORDER BY 
   Type_of_Bike

----------------------------------------------------------------------------------------------------------------------------------
--Bike Count, Average Mileage, and Average Price of Suzuki Bikes in USA by Decade of Used Time from 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade, 
   COUNT(DISTINCT Bike) AS Bike_Count, 
   ROUND(AVG(Mileage_km), 0) AS AverageMileage, 
   ROUND(AVG(Price_$), 0) AS AveragePrice 
FROM 
   [dbo].[Suzuki_bike_Final]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC

----------------------------------------------------------------------------------------------------------------------
--Bike Count, Total Mileage, and Total Price of Suzuki Bikes in USA by Used Time(Decade) from 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade,  
   COUNT(DISTINCT Bike) AS Bike_Count,
   SUM(Mileage_km) AS TotalMileage, 
   SUM(Price_$) AS TotalPrice 
FROM 
   [dbo].[Suzuki_bike_Final]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC 
--------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of Suzuki Bikes by year between 1970-1979 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Suzuki_bike_Final]
WHERE 
   Used_Time like '197%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
---------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of Suzuki Bikes by year between 1980-1989 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Suzuki_bike_Final]
WHERE 
   Used_Time like '198%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of Suzuki Bikes by year between 1990-1999 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Suzuki_bike_Final]
WHERE 
   Used_Time like '199%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
---------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of Suzuki Bikes by year between 2000-2009 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Suzuki_bike_Final]
WHERE 
   Used_Time like '200%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
--------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of Suzuki Bikes by year between 2010-2019 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Suzuki_bike_Final]
WHERE 
   Used_Time like '201%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
--------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of Suzuki Bikes by year between 2020-2023 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Suzuki_bike_Final]
WHERE 
   Used_Time like '202%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
/*
Dataset containing the mileage, price, Bike, Type and time used of Yamaha Motorccycle in USA in 1960-2023
A SQL will used to extract, manipulate and analyse Comprehensive Motorcycle Dataset. 
This project is all about gaining insights into Motorcycle industry by exploring thier
mileage, price, bike types and used time between 1960 - 2023
*/
--To give overview of Mileage(Km), Price($), Bike, Type of bike and Used time of Yamaha motorcycles

SELECT 
   *
FROM 
   [dbo].[Yamaha_bike_Final]
ORDER BY 
   Type_of_Bike

----------------------------------------------------------------------------------------------------------------------------------
--Bike Count, Average Mileage, and Average Price of Yamaha Bikes in USA by Decade of Used Time from 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade, 
   COUNT(DISTINCT Bike) AS Bike_Count, 
   ROUND(AVG(Mileage_km), 0) AS AverageMileage, 
   ROUND(AVG(Price_$), 0) AS AveragePrice 
FROM 
   [dbo].[Yamaha_bike_Final]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC

----------------------------------------------------------------------------------------------------------------------
--Bike Count, Total Mileage, and Total Price of Yamaha Bikes in USA by Used Time(Decade) from 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade,  
   COUNT(DISTINCT Bike) AS Bike_Count,
   SUM(Mileage_km) AS TotalMileage, 
   SUM(Price_$) AS TotalPrice 
FROM 
   [dbo].[Yamaha_bike_Final]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC 
--------------------------------------------------------------------------------------------------------------------------
--Average number of Bike, Average Mileage, and Average Price of Yamaha Bikes by year between 1960-1969 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Yamaha_bike_Final]
WHERE 
   Used_Time like '196%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time ASC
--------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of Yamaha Bikes by year between 1970-1979 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Yamaha_bike_Final]
WHERE 
   Used_Time like '197%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
---------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of Yamaha Bikes by year between 1980-1989 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Yamaha_bike_Final]
WHERE 
   Used_Time like '198%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of Yamaha Bikes by year between 1990-1999 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Yamaha_bike_Final]
WHERE 
   Used_Time like '199%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
---------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of Yamaha Bikes by year between 2000-2009 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Yamaha_bike_Final]
WHERE 
   Used_Time like '200%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
--------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of Yamaha Bikes by year between 2010-2019 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Yamaha_bike_Final]
WHERE 
   Used_Time like '201%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time
--------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage, and Average Price of Yamaha Bikes by year between 2020-2023 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[Yamaha_bike_Final]
WHERE 
   Used_Time like '202%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time