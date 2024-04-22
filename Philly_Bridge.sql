Create Table bridges (
	Bridge_ID Int NOT NULL,	
	Latitude Float NOT NULL,	
	Longitude Float NOT NULL,	
	Year_Built Int NOT NULL,
	Bridge_Condition Varchar NOT NULL,
	Average_Daily_Traffic Int NOT NULL,	
	Deck_Width Float NOT NULL,
	Structure_Length Float NOT NULL,	
	SqFt Float NOT NULL,	
	Repair_Cost_Est	Varchar NOT NULL,
	Replacement_Cost_Est  Varchar NOT NULL,
	Address Varchar NOT NULL
);