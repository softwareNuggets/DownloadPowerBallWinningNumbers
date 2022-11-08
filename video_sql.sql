CREATE TABLE dbo.powerball (
	use_date        	date        	NOT NULL primary key,
	m               	int         	NOT NULL,
	d               	int         	NOT NULL,
	yyyy            	int         	NOT NULL,
	n1              	int         	NOT NULL,
	n2              	int         	NOT NULL,
	n3              	int         	NOT NULL,
	n4              	int         	NOT NULL,
	n5              	int         	NOT NULL,
	pb              	int         	NOT NULL
) ON [PRIMARY]
GO


bulk insert MyDb.dbo.powerball
from 'C:\YOUTUBE\SQL\powerball\lottery.csv'
with
(
	CODEPAGE		='RAW',
	FORMAT			='CSV',
	FIRSTROW		=1,
	FIELDTERMINATOR	=',',
	ROWTERMINATOR	='\n'
)

select *
from MyDb.dbo.powerball