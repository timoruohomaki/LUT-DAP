-- country including lat and long of centre point, ignoring provinces

create table dim.country as
select
        row_number() Over(order by country_region) as countryid,
        country_region, lat, lon
from
        (select distinct country_region from landing.rawdata) c;
