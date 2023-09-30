create table landing.rawdata (
	id SERIAL PRIMARY KEY,
	phenomenon_time date,
	country_region varchar(32),
	province_state varchar(32),
	lat numeric(2,5),
	lon numeric(2,5),
	confirmed integer,
	deaths integer,
	recovered integer,
	active integer,
	incident_rate float(8),
	case_fatality_ratio float(8),
	last_update timestamp
)