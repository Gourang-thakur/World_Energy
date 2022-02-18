---selecting only data with energy consumption 

---Replacing all null values with 0
 
 SELECT iso_code,country,year, isnull(wind_consumption,0)as wind_consumption,
isnull (solar_consumption,0)as solar_consumption,isnull(nuclear_consumption,0)as nuclear_consumption,isnull(hydro_consumption,0)as hydro_consumption,isnull(fossil_fuel_consumption,0)as fossil_fuel_consumption,isnull(biofuel_consumption,0)as biofuel_consumption,isnull(oil_consumption,0)as oil_consumption
,isnull(gas_consumption,0)as gas_consumption,isnull(coal_consumption,0)as coal_consumption
  FROM Energy

 
 ----updating information into current table 


  SELECT iso_code,country,year, isnull(wind_consumption,0)as wind_consumption,
isnull (solar_consumption,0)as solar_consumption,isnull(nuclear_consumption,0)as nuclear_consumption,isnull(hydro_consumption,0)as hydro_consumption,isnull(fossil_fuel_consumption,0)as fossil_fuel_consumption,isnull(biofuel_consumption,0)as biofuel_consumption,isnull(oil_consumption,0)as oil_consumption
,isnull(gas_consumption,0)as gas_consumption,isnull(coal_consumption,0)as coal_consumption
  FROM Energy

  order by year 


  update Energy
set wind_consumption = isnull(wind_consumption,0),solar_consumption = isnull(nuclear_consumption,0),nuclear_consumption=isnull(nuclear_consumption,0),
hydro_consumption=isnull(hydro_consumption,0),fossil_fuel_consumption=isnull(fossil_fuel_consumption,0),biofuel_consumption=isnull(biofuel_consumption,0),oil_consumption=isnull(oil_consumption,0),
gas_consumption=isnull(gas_consumption,0),coal_consumption=isnull(coal_consumption,0)


  ---upgrading null from country and codes

  select isnull (iso_code,'data_na')as iso_code ,isnull (country,'data_na')as country
  from Energy

  update Energy
  set iso_code=isnull (iso_code,'data_na'),country=isnull (country,'data_na')




---------deleting data  with null values-------


DELETE FROM Energy
WHERE iso_code = 'data_na'


select iso_code,country,year, wind_consumption,
solar_consumption,nuclear_consumption,hydro_consumption,fossil_fuel_consumption,biofuel_consumption,oil_consumption
,gas_consumption,coal_consumption
from Energy


----highest  consumption countries

select  country,wind_consumption

from Energy
where country<>'world'and country<>'0'
order by wind_electricity desc

select  country,wind_consumption

from Energy
where country<>'world'and country<>'0'
order by wind_electricity desc

select  country,solar_consumption
from Energy
where country<>'world'and country<>'0'
order by solar_consumption desc


select  country,nuclear_consumption
from Energy
where country<>'world'and country<>'0'
order by nuclear_consumption desc



select  country,hydro_consumption
from Energy
where country<>'world'and country<>'0'
order by hydro_consumption desc


select  country,fossil_fuel_consumption
from Energy
where country<>'world'and country<>'0'
order by fossil_fuel_consumption desc


select  country,biofuel_consumption
from Energy
where country<>'world'and country<>'0'
order by biofuel_consumption desc


select  country,oil_consumption
from Energy
where country<>'world'and country<>'0'
order by oil_consumption desc



select  country,gas_consumption
from Energy
where country<>'world' and country<>'0'
order by gas_consumption desc


select  country,coal_consumption
from Energy
where country<>'world'and country<>'0'
order by coal_consumption desc

---basic---


select iso_code,country,year, wind_consumption,
solar_consumption,nuclear_consumption,hydro_consumption,fossil_fuel_consumption,biofuel_consumption,oil_consumption
,gas_consumption,coal_consumption
from Energy



----deleteing all zer0 from data apply with all columns ---

delete from Energy
where wind_consumption ='0'

delete from Energy
where wind_consumption ='0'
delete from Energy
where wind_consumption ='0'

delete from Energy
where wind_consumption ='0'

delete from Energy
where wind_consumption ='0'

delete from Energy
where wind_consumption ='0'

delete from Energy
where wind_consumption ='0'

select wind_consumption
from Energy
where wind_consumption='.'



-----ordering by country and year --- 


select  country,year, wind_consumption,
solar_consumption,nuclear_consumption,hydro_consumption,fossil_fuel_consumption,biofuel_consumption,oil_consumption
,gas_consumption,coal_consumption
from Energy
order by country,year

------rounding figures of decimals upto 2nd digit



select round(wind_consumption,2) as wind_consumption
,round(solar_consumption,2)as solar_consumption 
,round(nuclear_consumption,2)as  nuclear_consumption
,round(hydro_consumption,2)as hydro_consumption
,round(fossil_fuel_consumption,2)as fossil_fuel_consumption
,round(biofuel_consumption,2)as biofuel_consumption
,round(oil_consumption,2)as oil_consumption
,round(gas_consumption,2)as gas_consumption
,round(coal_consumption,2)as coal_consumption
from Energy




----updating rounding figure----


update Energy



set wind_consumption = round(wind_consumption,2) ,


set solar_consumption = round(solar_consumption,2),


set nuclear_consumption= round(nuclear_consumption,2),


set hydro_consumption= round(hydro_consumption,2),


set fossil_fuel_consumption=round(fossil_fuel_consumption,2),


set biofuel_consumption=round(fossil_fuel_consumption,2),


set oil_consumption=round(oil_consumption,2),


set gas_consumption=round(gas_consumption,2),


set coal_consumption=round(coal_consumption,2)


------basic_look-----


select iso_code,country,year, wind_consumption,
solar_consumption,nuclear_consumption,hydro_consumption,fossil_fuel_consumption,biofuel_consumption,oil_consumption
,gas_consumption,coal_consumption
from Energy
order by country,year



---------trim and update ----



select trim(iso_code),

trim(country) ,

trim(year),

trim( wind_consumption),

trim(solar_consumption),

trim(nuclear_consumption),

trim(hydro_consumption),

trim(fossil_fuel_consumption),

trim(biofuel_consumption),

trim(oil_consumption),

trim(gas_consumption),
trim(coal_consumption)

from Energy


update energy

set iso_code = trim(iso_code)
,

set country = trim(country)
,

set year= trim(year)
,

set wind_consumption=trim( wind_consumption)
,

set solar_consumption=trim(solar_consumption)
,

set nuclear_consumption=trim(nuclear_consumption)
,

set hydro_consumption=trim(hydro_consumption)
,

set fossil_fuel_consumption=trim(fossil_fuel_consumption)
,

set biofuel_consumption=trim(biofuel_consumption)
,

set oil_consumption=trim(oil_consumption)
,

set gas_consumption=trim(gas_consumption)
,

set coal_consumption=trim(coal_consumption)

----------------------------------------------------------------------------------------------


------basic_look-----


select iso_code,country,year, wind_consumption,
solar_consumption,nuclear_consumption,hydro_consumption,fossil_fuel_consumption,biofuel_consumption,oil_consumption
,gas_consumption,coal_consumption
from Energy
order by country,year


