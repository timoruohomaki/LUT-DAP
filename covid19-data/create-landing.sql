create table landing.rawdata (
	id SERIAL PRIMARY KEY,
	phenomenon_time date,
	country_region varchar(32),
	province_state varchar(32),
	lat numeric(2,5),
	-- latitude of dot location in dashboard
	lon numeric(2,5),
	-- longitude of dot location in dashboard
	confirmed integer,
	-- Counts include confirmed and probable (where reported)
	deaths integer,
	-- Counts include confirmed and probable (where reported)
	recovered integer,
	-- Recovered cases are estimates based on local media reports, 
	-- and state and local reporting when available, and therefore 
	-- may be substantially lower than the true number
	active integer,
	-- Active cases = total cases - total recovered - total deaths
	incident_rate float(8),
	-- Incidence Rate = cases per 100,000 persons
	case_fatality_ratio float(8),
	-- Case-Fatality Ratio (%) = Number recorded deaths / Number cases
	last_update timestamp
)