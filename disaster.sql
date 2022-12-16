Select *
 from NCEI..Disaster

 select Name, disaster, BEGIN_DATE,END_DATE
 from NCEI..Disaster


select disaster, MAX(Deaths)as Total_Deaths  
from NCEI..Disaster
group by Disaster 
order by Total_Deaths desc

Select disaster,Max(Disaster_Cost_in_Million)as Total_Cost_in_Million
from NCEI..Disaster
group by Disaster

--last five years Total_deaths and Total cost
select disaster, max(deaths) as Total_deaths, Max(Disaster_Cost_in_Million)as Total_Cost_in_Million
from NCEI..Disaster
where BEGIN_DATE between '2017-01-01' and '2022-11-30'
group by Disaster

--total diasater by year
select disaster, YEAR
from NCEI..Disaster

---- total cost and deaths by year
select  Max(YEAR)as year, max(Disaster_Cost_in_Million)as total_cost_in_million, max(deaths)as tot_deaths
from NCEI..Disaster
Group by YEAR

-----last five years details
select  Max(YEAR)as year, max(Disaster_Cost_in_Million)as total_cost_in_million
from NCEI..Disaster
where YEAR between'2017' and'2022'
Group by YEAR


select Disaster, YEAR
from NCEI..Disaster
where Year between '2019' and '2022'

-- details about flooding
select Name, CAST(BEGIN_DATE as date )as Begin_date, cast(END_DATE as Date)as End_date, Disaster
from NCEI..Disaster
where Disaster = 'Flooding'


select max(year)as year, sum(Deaths)total_dea, sum(Disaster_cost_in_million)as tot_cost
from NCEI..Disaster
where Disaster='flooding'
group by YEAR

-- Tropical Cyclone

select Name, CAST(BEGIN_DATE as date )as Begin_date, cast(END_DATE as Date)as End_date, YEAR, Deaths, Disaster_Cost_in_Million
From NCEI..Disaster
where Disaster='Tropical Cyclone'


select  max(YEAR)as Year, sum(Deaths)as tot_dea, sum(Disaster_Cost_in_Million)as tot_cost
From NCEI..Disaster
where Disaster='Tropical Cyclone'
group by YEAR

--- Drought
select  Name, Year, Disaster_Cost_in_Million, Deaths
From NCEI..Disaster
where Disaster='Drought'


select  max(YEAR)as Year, sum(Deaths)as tot_dea, sum(Disaster_Cost_in_Million)as tot_cost
From NCEI..Disaster
where Disaster='Drought'
group by YEAR

--Severe Storm

select Name,CAST(BEGIN_DATE as date )as Begin_date, cast(END_DATE as Date)as End_date, YEAR, Deaths, Disaster_Cost_in_Million
From NCEI..Disaster
where Disaster='Severe Storm'

select  max(YEAR)as Year, sum(Deaths)as tot_dea, sum(Disaster_Cost_in_Million)as tot_cost
From NCEI..Disaster
where Disaster='Severe Storm'
group by YEAR

--Freeze

select Name, CAST(BEGIN_DATE as date )as Begin_date, cast(END_DATE as Date)as End_date, YEAR, Deaths, Disaster_Cost_in_Million
From NCEI..Disaster
where Disaster='Freeze'

select  max(YEAR)as Year, sum(Deaths)as tot_dea, sum(Disaster_Cost_in_Million)as tot_cost
From NCEI..Disaster
where Disaster='Freeze'
group by YEAR

--Wildfire
select Name,  CAST(BEGIN_DATE as date )as Begin_date, cast(END_DATE as Date)as End_date, YEAR, Deaths, Disaster_Cost_in_Million
 YEAR, Deaths, Disaster_Cost_in_Million
From NCEI..Disaster
where Disaster='Wildfire'

select  max(YEAR)as Year, sum(Deaths)as tot_dea, sum(Disaster_Cost_in_Million)as tot_cost
From NCEI..Disaster
where Disaster='Wildfire'
group by YEAR

--Winter Storm
select Name, CAST(BEGIN_DATE as date )as Begin_date, cast(END_DATE as Date)as End_date, YEAR, Deaths, Disaster_Cost_in_Million
From NCEI..Disaster
where Disaster='Winter Storm'

select  max(YEAR)as Year, sum(Deaths)as tot_dea, sum(Disaster_Cost_in_Million)as tot_cost
From NCEI..Disaster
where Disaster='Winter Storm'
group by YEAR