/*
Dataset containing the mileage, price, Bike, Type and time used of BMW Motorcycle in USA in 1960-2023
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

-----------------------------------------------------------------------------------------------------------
/*
Dataset containing the mileage, price, Bike, Type and time used of Ducatti Motorcycle in USA in 1960-2023
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

---------------------------------------------------------------------------------------------------------------------------
/*
Dataset containing the mileage, price, Bike, Type and time used of Royal Enfield Standard (RES) Motorcycle in USA in 1960-2023
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

------------------------------------------------------------------------------------------------------------
/*
Dataset containing the mileage, price, Bike, Type and time used of KTH Motorcycle in USA in 1960-2023
A SQL will used to extract, manipulate and analyse Comprehensive Motorcycle Dataset. 
This project is all about gaining insights into Motorcycle industry by exploring thier
mileage, price, bike types and used time between 1960 - 2023
*/
--To give overview of Mileage(Km), Price($), Bike, Type of bike and Used time of KTH motorcycle

SELECT 
   *
FROM 
   [dbo].[KTM_bike_Final]
ORDER BY 
   Type_of_Bike

---------------------------------------------------------------------------------------------------------------
/*
Dataset containing the mileage, price, Bike, Type and time used of Suzuki Motorcycle in USA in 1960-2023
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

-------------------------------------------------------------------------------------------------------------
/*
Dataset containing the mileage, price, Bike, Type and time used of Yamaha Motorcycle in USA in 1960-2023
A SQL will used to extract, manipulate and analyse Comprehensive Motorcycle Dataset. 
This project is all about gaining insights into Motorcycle industry by exploring thier
mileage, price, bike types and used time between 1960 - 2023
*/
--To give overview of Mileage(Km), Price($), Bike, Type of bike and Used time of Yamaha motorcycle

SELECT 
   *
FROM 
   [dbo].[Yamaha_bike_Final]
ORDER BY 
   Type_of_Bike

-----------------------------------------------------------------------------------------------------------
--BMW Bike count base on Used Time within 1960-2023
SELECT 
   COUNT(*) AS BMW_Bike_Count
FROM 
   [dbo].[BMW_bike_Final]

----------------------------------------------------------------------------------------------------------
--Ducati Bike count base on Used Time within 1960-2023
SELECT 
   COUNT(*) AS Ducati_Bike_Count
FROM 
   [dbo].[Ducatti_bike_Final]

----------------------------------------------------------------------------------------------------------
--KTM Bike count base on Used Time within 1960-2023
SELECT 
   COUNT(*) AS KTM_Bike_Count
FROM 
   [dbo].[KTM_bike_Final]

-----------------------------------------------------------------------------------------------------------
--Royal Enfield Standard(RES) Bike count base on Used Time within 1960-2023
SELECT 
   COUNT(*) AS RES_Bike_Count
FROM 
   [dbo].[Royal_Enfield_Standard_bike_Final]

------------------------------------------------------------------------------------------------------------
--Suzuki Bike count base on Used Time within 1960-2023
SELECT 
   COUNT(*) AS Suzuki_Bike_Count
FROM 
   [dbo].[Suzuki_bike_Final]

--------------------------------------------------------------------------------------------------------------
--Yamaha Bike count base on Used Time within 1960-2023
SELECT 
   COUNT(*) AS Yamaha_Bike_Count
FROM 
   [dbo].[Yamaha_bike_Final]

---------------------------------------------------------------------------------------------------------------

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

---------------------------------------------------------------------------------------------------------------------------
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

--------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducati Bikes by year between 1970-1979 
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
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducati Bikes by year between 1980-1989 
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
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducati Bikes by year between 1990-1999 
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
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducati Bikes by year between 2000 - 2009 
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
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducati Bikes by year between 2010 - 2019
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
--Total number of Bike, Average Mileage(km), and Average Price($) of Ducati Bikes by year between 2020 - 2023
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

----------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of KTM Bikes by year between 1990-1999 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[KTM_bike_Final]
WHERE 
   Used_Time like '199%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

---------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of KTM Bikes by year between 2000-2009 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[KTM_bike_Final]
WHERE 
   Used_Time like '200%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

--------------------------------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of KTM Bikes by year between 2010-2019 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
   [dbo].[KTM_bike_Final]
WHERE 
   Used_Time like '201%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

--------------------------------------------------------------------------------------------------------------------------
--Total number of Bike, Average Mileage(km), and Average Price($) of KTM Bikes by year between 2020-2023 
SELECT
   Used_Time,
   Count (DISTINCT Bike) AS TotalBike_by_Year,
   AVG(Mileage_km) AS AvgMileage_by_Year,
   AVG(Price_$) AS AvgPrice_by_Year
FROM 
  [dbo].[KTM_bike_Final]
WHERE 
   Used_Time like '202%'
GROUP By
   Used_Time
ORDER BY 
   Used_Time

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

----------------------------------------------------------------------------------------------------------------
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
-----------------------------------------------------------------------------------------------------------------------------
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

------------------------------------------------------------------------------------------------------------------------
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
--Bike Count, Average Mileage(km), and Average Price($) of Ducati Bikes in USA by Decade from 1960-2023 
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
--Bike Count, Total Mileage(km), and Total Price($) of Ducati Bikes in USA by Decade from 1960-2023 
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
--Bike Count, Average Mileage(km), and Average Price($) of KTM Bikes in USA by decade between 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade, 
   COUNT(DISTINCT Bike) AS Bike_Count, 
   ROUND(AVG(Mileage_km), 0) AS AverageMileage, 
   ROUND(AVG(Price_$), 0) AS AveragePrice 
FROM 
   [dbo].[KTM_bike_Final]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC

----------------------------------------------------------------------------------------------------------------------
--Bike Count, Total Mileage(km), and Total Price($) of KTM Bikes in USA by decade between 1960-2023 
SELECT
   10*FLOOR(Used_Time/10) AS Decade,  
   COUNT(DISTINCT Bike) AS Bike_Count,
   SUM(Mileage_km) AS TotalMileage, 
   SUM(Price_$) AS TotalPrice 
FROM 
   [dbo].[KTM_bike_Final]
GROUP BY 
  10*FLOOR(Used_Time/10) 
ORDER BY
   10*FLOOR(Used_Time/10) ASC 

--------------------------------------------------------------------------------------------------------------------------
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

----------------------------------------------------------------------------------------------------------------
--Bikes count from 1960 to 2023 across all the bike types
SELECT
   SUM(BMW_Bike_Count) AS numBMW,
   SUM(Duca_Bike_Count) AS numDuca,
   SUM(KTM_Bike_Count) AS numKTM,
   SUM(RES_Bike_Count) AS numRES,
   SUM(Suz_Bike_Count) AS numSuz,
   SUM(Yama_Bke_Count) AS YamaSuz
FROM [dbo].[BikeCountsinDecade]

-------------------------------------------------------------------------------------------------------------------
--Average Distance(km) traveled by all the 5 types of bikes in all the decades between 1960 - 2023
SELECT 
   BMWBike.Decade AS Decade,
   ROUND(ISNULL([BMWBike].[AverageMileage], 0), 2, 0) AS BMW_AVGMileage,
   ROUND(ISNULL([DucaBike].[AverageMileage], 0), 2, 0) AS Duca_AVGMileage,
   ROUND(ISNULL([KTMBike].[AverageMileage], 0), 2, 0) AS KTH_AVGMileage,
   ROUND(ISNULL([RESBike].[AverageMileage], 0), 2, 0) AS RES_AVGMileage,
   ROUND(ISNULL([SuzBike].[AverageMileage], 0), 2, 0) AS Suz_AVGMileage,
   ROUND(ISNULL([YamaBike].[AverageMileage], 0), 2, 0) AS Yama_AVGMileage
FROM 
   [dbo].[BMWSelectBikeDecadeAverage] AS [BMWBike]
   LEFT JOIN [dbo].[DucatiSelectBikeDecadeAverage] AS DucaBike 
   ON [BMWBike].[Decade] = DucaBike.Decade
   LEFT JOIN [dbo].[KTMSelectBikeDecadeAverage] AS KTMBike 
   ON [BMWBike].[Decade] = [KTMBike].[Decade]
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
   ROUND(ISNULL([KTMBike].[AveragePrice], 0), 0) AS KTH_AVGPrice,
   ROUND(ISNULL([RESBike].[AveragePrice], 0), 0) AS RES_AVGPrice,
   ROUND(ISNULL([SuzBike].[AveragePrice], 0), 0) AS Suz_AVGPrice,
   ROUND(ISNULL([YamaBike].[AveragePrice], 0), 0) AS Yama_AVGPrice
FROM 
   [dbo].[BMWSelectBikeDecadeAverage] AS [BMWBike]
   LEFT JOIN [dbo].[DucatiSelectBikeDecadeAverage] AS DucaBike 
   ON [BMWBike].[Decade] = DucaBike.Decade
   LEFT JOIN [dbo].[KTMSelectBikeDecadeAverage] AS KTMBike 
   ON [BMWBike].[Decade] = [KTMBike].[Decade]
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
   ISNULL([KTMBike].[Bike_Count], 0) AS KTM_Bike_Count,
   ISNULL([RESBike].[Bike_Count], 0) AS RES_Bike_Count,
   ISNULL([SuzBike].[Bike_Count], 0) AS Suz_Bike_Count,
   ISNULL([YamaBike].[Bike_Count], 0) AS Yama_Bke_Count
FROM 
   [dbo].[BMWSelectBikeDecadeAverage] AS [BMWBike]
   LEFT JOIN [dbo].[DucatiSelectBikeDecadeAverage] AS DucaBike 
   ON [BMWBike].[Decade] = DucaBike.Decade
   LEFT JOIN [dbo].[KTMSelectBikeDecadeAverage] AS KTMBike 
   ON [BMWBike].[Decade] = [KTMBike].[Decade]
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
   ISNULL([KTMBike].[TotalMileage], 0) AS KTM_TotalMileage,
   ISNULL([RESBike].[TotalMileage], 0) AS RES_TotalMileage,
   ISNULL([SuzBike].[TotalMileage], 0) AS Suz_TotalMileage,
   ISNULL([YamaBike].[TotalMileage], 0) AS Yama_TotalMileage
FROM 
   [dbo].[BMWSelectBikeDecadeSum] AS [BMWBike]
   LEFT JOIN [dbo].[DucatiSelectBikeDecadeSum] AS DucaBike 
   ON [BMWBike].[Decade] = DucaBike.Decade
   LEFT JOIN[dbo].[KTMSelectBikeDecadeSum] AS KTMBike 
   ON [BMWBike].[Decade] = [KTMBike].[Decade]
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
   ISNULL([KTMBike].[TotalPrice], 0) AS KTM_TotalPrice,
   ISNULL([RESBike].[TotalPrice], 0) AS RES_TotalPrice,
   ISNULL([SuzBike].[TotalPrice], 0) AS Suz_TotalPrice,
   ISNULL([YamaBike].[TotalPrice], 0) AS Yama_TotalPrice
FROM 
   [dbo].[BMWSelectBikeDecadeSum] AS [BMWBike]
   LEFT JOIN [dbo].[DucatiSelectBikeDecadeSum] AS DucaBike 
   ON [BMWBike].[Decade] = DucaBike.Decade
   LEFT JOIN[dbo].[KTMSelectBikeDecadeSum] AS KTMBike 
   ON [BMWBike].[Decade] = [KTMBike].[Decade]
   LEFT JOIN [dbo].[RES_SelectBikeDecadeSum] AS RESBike
   ON [BMWBike].[Decade] = [RESBike].[Decade]
   LEFT JOIN [dbo].[SuzukiSelectBikeDecadeSum] AS SuzBike
   ON [BMWBike].[Decade] = [SuzBike].[Decade]
   LEFT JOIN [dbo].[YamahaSelectBikeDecadeSum] AS YamaBike
   ON [BMWBike].[Decade] = [YamaBike].[Decade]
ORDER BY
   Decade ASC

--------------------------------------------------------------------------------------------------------------------------
