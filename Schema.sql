CREATE TABLE bridges (
	bridge_id INT NOT NULL,
	latitude FLOAT NOT NULL,
	longitude FLOAT NOT NULL,
	year_built INT NOT NULL,
	bridge_condtion VARCHAR NOT NULL,
	average_daily_traffic INT NOT NULL,
	deck_width FLOAT NOT NULL,
	structure_length FLOAT NOT NULL,
	sqft FLOAT NOT NULL,
	repair_cost_est VARCHAR NOT NULL,
	replacemnet_cost_est VARCHAR NOT NULL,
	address VARCHAR NOT NULL
);