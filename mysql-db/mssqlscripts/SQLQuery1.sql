SELECT * from Productss

BULK INSERT Products
FROM 'C:/Users/Amar/Downloads/ClassicModels-MySQL/datafiles/Products.txt'
WITH
	(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n'
	)
GO

SELECT * FROM OPENROWSET('MSDASQL',
'Driver={Microsoft Text Driver (*.txt; *.csv)};
DefaultDir=C:/Users/Amar/Downloads/ClassicModels-MySQL/datafiles/Products.txt;',
'SELECT * FROM Products.txt')

SELECT 
    * 
FROM 
OPENROWSET
        ('Microsoft.ACE.OLEDB.14.0','Text;Database=C:/Users/Amar/Downloads/ClassicModels-MySQL/datafiles/Products.txt;IMEX=1;','SELECT * 
FROM Products.txt')

ALTER TABLE Products
ALTER COLUMN productScale varchar(10) NULL

SELECT * FROM Products


sp_configure 'show advanced options', 1;
RECONFIGURE;
sp_configure 'Ad Hoc Distributed Queries', 1;
RECONFIGURE;
GO

INSERT INTO Products
VALUES ('S10_1678','1969 Harley Davidson Ultimate Chopper','Motorcycles','1:10','Min Lin Diecast','This replica features working kickstand, front suspension, gear-shift lever, footbrake lever, drive chain, wheels and steering. All parts are particularly delicate due to their precise scale and require special care and attention.',7933,48.81,95.70),
('S10_1949','1952 Alpine Renault 1300','Classic Cars','1:10','Classic Metal Creations','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',7305,98.58,214.30),
('S10_2016','1996 Moto Guzzi 1100i','Motorcycles','1:10','Highway 66 Mini Classics','Official Moto Guzzi logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.',6625,68.99,118.94),
('S10_4698','2003 Harley-Davidson Eagle Drag Bike','Motorcycles','1:10','Red Start Diecast','Model features, official Harley Davidson logos and insignias, detachable rear wheelie bar, heavy diecast metal with resin parts, authentic multi-color tampo-printed graphics, separate engine drive belts, free-turning front fork, rotating tires and rear racing slick, certificate of authenticity, detailed engine, display stand
, precision diecast replica, baked enamel finish, 1:10 scale model, removable fender, seat and tank cover piece for displaying the superior detail of the v-twin engine',5582,91.02,193.66)



INSERT INTO Products
VALUES ('S10_1678','1969 Harley Davidson Ultimate Chopper','Motorcycles','1:10','Min Lin Diecast','This replica features working kickstand, front suspension, gear-shift lever, footbrake lever, drive chain, wheels and steering. All parts are particularly delicate due to their precise scale and require special care and attention.',7933,48.81,95.70),
('S10_1949','1952 Alpine Renault 1300','Classic Cars','1:10','Classic Metal Creations','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',7305,98.58,214.30),
('S10_2016','1996 Moto Guzzi 1100i','Motorcycles','1:10','Highway 66 Mini Classics','Official Moto Guzzi logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.',6625,68.99,118.94),
('S10_4698','2003 Harley-Davidson Eagle Drag Bike','Motorcycles','1:10','Red Start Diecast','Model features, official Harley Davidson logos and insignias, detachable rear wheelie bar, heavy diecast metal with resin parts, authentic multi-color tampo-printed graphics, separate engine drive belts, free-turning front fork, rotating tires and rear racing slick, certificate of authenticity, detailed engine, display stand
, precision diecast replica, baked enamel finish, 1:10 scale model, removable fender, seat and tank cover piece for displaying the superior detail of the v-twin engine',5582,91.02,193.66),
('S10_4757','1972 Alfa Romeo GTA','Classic Cars','1:10','Motor City Art Classics','Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',3252,85.68,136.00),
('S10_4962','1962 LanciaA Delta 16V','Classic Cars','1:10','Second Gear Diecast','Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',6791,103.42,147.74),
('S12_1099','1968 Ford Mustang','Classic Cars','1:12','Autoart Studio Design','Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually turns the front wheels. Color dark green.',68,95.34,194.57),
('S12_1108','2001 Ferrari Enzo','Classic Cars','1:12','Second Gear Diecast','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',3619,95.59,207.80),
('S12_1666','1958 Setra Bus','Trucks and Buses','1:12','Welly Diecast Productions','Model features 30 windows, skylights & glare resistant glass, working steering system, original logos',1579,77.90,136.67),
('S12_2823','2002 Suzuki XREO','Motorcycles','1:12','Unimax Art Galleries','Official logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.',9997,66.27,150.62),
('S12_3148','1969 Corvair Monza','Classic Cars','1:18','Welly Diecast Productions','1:18 scale die-cast about 10'' long doors open, hood opens, trunk opens and wheels roll',6906,89.14,151.08),
('S12_3380','1968 Dodge Charger','Classic Cars','1:12','Welly Diecast Productions','1:12 scale model of a 1968 Dodge Charger. Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually turns the front wheels. Color black',9123,75.16,117.44),
('S12_3891','1969 Ford Falcon','Classic Cars','1:12','Second Gear Diecast','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',1049,83.05,173.02),
('S12_3990','1970 Plymouth Hemi Cuda','Classic Cars','1:12','Studio M Art Models','Very detailed 1970 Plymouth Cuda model in 1:12 scale. The Cuda is generally accepted as one of the fastest original muscle cars from the 1970s. This model is a reproduction of one of the orginal 652 cars built in 1970. Red color.',5663,31.92,79.80),
('S12_4473','1957 Chevy Pickup','Trucks and Buses','1:12','Exoto Designs','1:12 scale die-cast about 20'' long Hood opens, Rubber wheels',6125,55.70,118.50),
('S12_4675','1969 Dodge Charger','Classic Cars','1:12','Welly Diecast Productions','Detailed model of the 1969 Dodge Charger. This model includes finely detailed interior and exterior features. Painted in red and white.',7323,58.73,115.16),
('S18_1097','1940 Ford Pickup Truck','Trucks and Buses','1:18','Studio M Art Models','This model features soft rubber tires, working steering, rubber mud guards, authentic Ford logos, detailed undercarriage, opening doors and hood,  removable split rear gate, full size spare mounted in bed, detailed interior with opening glove box',2613,58.33,116.67),
('S18_1129','1993 Mazda RX-7','Classic Cars','1:18','Highway 66 Mini Classics','This model features, opening hood, opening doors, detailed engine, rear spoiler, opening trunk, working steering, tinted windows, baked enamel finish. Color red.',3975,83.51,141.54),
('S18_1342','1937 Lincoln Berline','Vintage Cars','1:18','Motor City Art Classics','Features opening engine cover, doors, trunk, and fuel filler cap. Color black',8693,60.62,102.74),
('S18_1367','1936 Mercedes-Benz 500K Special Roadster','Vintage Cars','1:18','Studio M Art Models','This 1:18 scale replica is constructed of heavy die-cast metal and has all the features of the original: working doors and rumble seat, independent spring suspension, detailed interior, working steering system, and a bifold hood that reveals an engine so accurate that it even includes the wiring. All this is topped off with a baked enamel finish. Color white.',8635,24.26,53.91),
('S18_1589','1965 Aston Martin DB5','Classic Cars','1:18','Classic Metal Creations','Die-cast model of the silver 1965 Aston Martin DB5 in silver. This model includes full wire wheels and doors that open with fully detailed passenger compartment. In 1:18 scale, this model measures approximately 10 inches/20 cm long.',9042,65.96,124.44),
('S18_1662','1980s Black Hawk Helicopter','Planes','1:18','Red Start Diecast','1:18 scale replica of actual Armys UH-60L BLACK HAWK Helicopter. 100% hand-assembled. Features rotating rotor blades, propeller blades and rubber wheels.',5330,77.27,157.69),
('S18_1749','1917 Grand Touring Sedan','Vintage Cars','1:18','Welly Diecast Productions','This 1:18 scale replica of the 1917 Grand Touring car has all the features you would expect from museum quality reproductions: all four doors and bi-fold hood opening, detailed engine and instrument panel, chrome-look trim, and tufted upholstery, all topped off with a factory baked-enamel finish.',2724,86.70,170.00),
('S18_1889','1948 Porsche 356-A Roadster','Classic Cars','1:18','Gearbox Collectibles','This precision die-cast replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',8826,53.90,77.00),
('S18_1984','1995 Honda Civic','Classic Cars','1:18','Min Lin Diecast','This model features, opening hood, opening doors, detailed engine, rear spoiler, opening trunk, working steering, tinted windows, baked enamel finish. Color yellow.',9772,93.89,142.25),
('S18_2238','1998 Chrysler Plymouth Prowler','Classic Cars','1:18','Gearbox Collectibles','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',4724,101.51,163.73),
('S18_2248','1911 Ford Town Car','Vintage Cars','1:18','Motor City Art Classics','Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system',540,33.30,60.54),
('S18_2319','1964 Mercedec Tour Bus','Trucks and Buses','1:18','Unimax Art Galleries','Exact replica. 100+ parts. working steering system, original logos',8258,74.86,122.73),
('S18_2325','1932 Model A Ford J-Coupe','Vintage Cars','1:18','Autoart Studio Design','This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system, chrome-covered spare, opening doors, detailed and wired engine',9354,58.48,127.13),
('S18_2432','1926 Ford Fire Engine','Trucks and Buses','1:18','Carousel DieCast Legends','Gleaming red handsome appearance. Everything is here the fire hoses, ladder, axes, bells, lanterns, ready to fight any inferno.',2018,24.92,60.77),
('S18_2581','P-51-D Mustang','Planes','1:72','Gearbox Collectibles','Has retractable wheels and comes with a stand',992,49.00,84.48),
('S18_2625','1936 Harley Davidson El Knucklehead','Motorcycles','1:18','Welly Diecast Productions','Intricately detailed with chrome accents and trim, official die-struck logos and baked enamel finish.',4357,24.23,60.57),
('S18_2795','1928 Mercedes-Benz SSK','Vintage Cars','1:18','Gearbox Collectibles','This 1:18 replica features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system, chrome-covered spare, opening doors, detailed and wired engine. Color black.',548,72.56,168.75),
('S18_2870','1999 Indy 500 Monte Carlo SS','Classic Cars','1:18','Red Start Diecast','Features include opening and closing doors. Color: Red',8164,56.76,132.00),
('S18_2949','1913 Ford Model T Speedster','Vintage Cars','1:18','Carousel DieCast Legends','This 250 part reproduction includes moving handbrakes, clutch, throttle and foot pedals, squeezable horn, detailed wired engine, removable water, gas, and oil cans, pivoting monocle windshield, all topped with a baked enamel red finish. Each replica comes with an Owners Title and Certificate of Authenticity. Color red.',4189,60.78,101.31),
('S18_2957','1934 Ford V8 Coupe','Vintage Cars','1:18','Min Lin Diecast','Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System',5649,34.35,62.46),
('S18_3029','1999 Yamaha Speed Boat','Ships','1:18','Min Lin Diecast','Exact replica. Wood and Metal. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.',4259,51.61,86.02),
('S18_3136','18th Century Vintage Horse Carriage','Vintage Cars','1:18','Red Start Diecast','Hand crafted diecast-like metal horse carriage is re-created in about 1:18 scale of antique horse carriage. This antique style metal Stagecoach is all hand-assembled with many different parts. This collectible metal horse carriage is painted in classic Red, and features turning steering wheel and is entirely hand-finished.',5992,60.74,104.72),
('S18_3140','1903 Ford Model A','Vintage Cars','1:18','Unimax Art Galleries','Features opening trunk,  working steering system',3913,68.30,136.59),
('S18_3232','1992 Ferrari 360 Spider red','Classic Cars','1:18','Unimax Art Galleries','his replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',8347,77.90,169.34),
('S18_3233','1985 Toyota Supra','Classic Cars','1:18','Highway 66 Mini Classics','This model features soft rubber tires, working steering, rubber mud guards, authentic Ford logos, detailed undercarriage, opening doors and hood, removable split rear gate, full size spare mounted in bed, detailed interior with opening glove box',7733,57.01,107.57),
('S18_3259','Collectable Wooden Train','Trains','1:18','Carousel DieCast Legends','Hand crafted wooden toy train set is in about 1:18 scale, 25 inches in total length including 2 additional carts, of actual vintage train. This antique style wooden toy train model set is all hand-assembled with 100% wood.',6450,67.56,100.84),
('S18_3278','1969 Dodge Super Bee','Classic Cars','1:18','Min Lin Diecast','This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',1917,49.05,80.41),
('S18_3320','1917 Maxwell Touring Car','Vintage Cars','1:18','Exoto Designs','Features Gold Trim, Full Size Spare Tire, Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System',7913,57.54,99.21),
('S18_3482','1976 Ford Gran Torino','Classic Cars','1:18','Gearbox Collectibles','Highly detailed 1976 Ford Gran Torino ''Starsky and Hutch'' diecast model. Very well constructed and painted in red and white patterns.',9127,73.49,146.99),
('S18_3685','1948 Porsche Type 356 Roadster','Classic Cars','1:18','Gearbox Collectibles','This model features working front and rear suspension on accurately replicated and actuating shock absorbers as well as opening engine cover, rear stabilizer flap,  and 4 opening doors.',8990,62.16,141.28),
('S18_3782','1957 Vespa GS150','Motorcycles','1:18','Studio M Art Models','Features rotating wheels , working kick stand. Comes with stand.',7689,32.95,62.17),
('S18_3856','1941 Chevrolet Special Deluxe Cabriolet','Vintage Cars','1:18','Exoto Designs','Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system, leather upholstery. Color black.',2378,64.58,105.87),
('S18_4027','1970 Triumph Spitfire','Classic Cars','1:18','Min Lin Diecast','Features include opening and closing doors. Color: White.',5545,91.92,143.62),
('S18_4409','1932 Alfa Romeo 8C2300 Spider Sport','Vintage Cars','1:18','Exoto Designs','This 1:18 scale precision die cast replica features the 6 front headlights of the original, plus a detailed version of the 142 horsepower straight 8 engine, dual spares and their famous comprehensive dashboard. Color black.',6553,43.26,92.03),
('S18_4522','1904 Buick Runabout','Vintage Cars','1:18','Exoto Designs','Features opening trunk,  working steering system',8290,52.66,87.77),
('S18_4600','1940s Ford truck','Trucks and Buses','1:18','Motor City Art Classics','This 1940s Ford Pick-Up truck is re-created in 1:18 scale of original 1940s Ford truck. This antique style metal 1940s Ford Flatbed truck is all hand-assembled. This collectible 1940s Pick-Up truck is painted in classic dark green color, and features rotating wheels.',3128,84.76,121.08),
('S18_4668','1939 Cadillac Limousine','Vintage Cars','1:18','Studio M Art Models','Features completely detailed interior including Velvet flocked drapes,deluxe wood grain floor, and a wood grain casket with seperate chrome handles',6645,23.14,50.31),
('S18_4721','1957 Corvette Convertible','Classic Cars','1:18','Classic Metal Creations','1957 die cast Corvette Convertible in Roman Red with white sides and whitewall tires. 1:18 scale quality die-cast with detailed engine and underbvody. Now you can own The Classic Corvette.',1249,69.93,148.80),
('S18_4933','1957 Ford Thunderbird','Classic Cars','1:18','Studio M Art Models','This 1:18 scale precision die-cast replica, with its optional porthole hardtop and factory baked-enamel Thunderbird Bronze finish, is a 100% accurate rendition of this American classic.',3209,34.21,71.27),
('S24_1046','1970 Chevy Chevelle SS 454','Classic Cars','1:24','Unimax Art Galleries','This model features rotating wheels, working streering system and opening doors. All parts are particularly delicate due to their precise scale and require special care and attention. It should not be picked up by the doors, roof, hood or trunk.',1005,49.24,73.49),
('S24_1444','1970 Dodge Coronet','Classic Cars','1:24','Highway 66 Mini Classics','1:24 scale die-cast about 18'' long doors open, hood opens and rubber wheels',4074,32.37,57.80),
('S24_1578','1997 BMW R 1100 S','Motorcycles','1:24','Autoart Studio Design','Detailed scale replica with working suspension and constructed from over 70 parts',7003,60.86,112.70),
('S24_1628','1966 Shelby Cobra 427 S/C','Classic Cars','1:24','Carousel DieCast Legends','This diecast model of the 1966 Shelby Cobra 427 S/C includes many authentic details and operating parts. The 1:24 scale model of this iconic lighweight sports car from the 1960s comes in silver and its own display case.',8197,29.18,50.31),
('S24_1785','1928 British Royal Navy Airplane','Planes','1:24','Classic Metal Creations','Official logos and insignias',3627,66.74,109.42),
('S24_1937','1939 Chevrolet Deluxe Coupe','Vintage Cars','1:24','Motor City Art Classics','This 1:24 scale die-cast replica of the 1939 Chevrolet Deluxe Coupe has the same classy look as the original. Features opening trunk, hood and doors and a showroom quality baked enamel finish.',7332,22.57,33.19),
('S24_2000','1960 BSA Gold Star DBD34 1960','Motorcycles','1:24','Highway 66 Mini Classics','Detailed scale replica with working suspension and constructed from over 70 parts',15,37.32,76.17),
('S24_2011','18th century schooner','Ships','1:24','Carousel DieCast Legends','All wood with canvas sails. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with 4 masts, all square-rigged.',1898,82.34,122.89),
('S24_2022','1938 Cadillac V-16 Presidential Limousine','Vintage Cars','1:24','Classic Metal Creations','This 1:24 scale precision die cast replica of the 1938 Cadillac V-16 Presidential Limousine has all the details of the original, from the flags on the front to an opening back seat compartment complete with telephone and rifle. Features factory baked-enamel black finish, hood goddess ornament, working jump seats.',2847,20.61,44.80),
('S24_2300','1962 Volkswagen Microbus','Trucks and Buses','1:24','Autoart Studio Design','This 1:18 scale die cast replica of the 1962 Microbus is loaded with features: A working steering system, opening front doors and tailgate, and famous two-tone factory baked enamel finish, are all topped of by the sliding, real fabric, sunroof.',2327,61.34,127.79),
('S24_2360','1982 Ducati 900 Monster','Motorcycles','1:24','Highway 66 Mini Classics','Features two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand',6840,47.10,69.26),
('S24_2766','1949 Jaguar XK 120','Classic Cars','1:24','Classic Metal Creations','Precision-engineered from original Jaguar specification in perfect scale ratio. Features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',2350,47.25,90.87),
('S24_2840','1958 Chevy Corvette Limited Edition','Classic Cars','1:24','Carousel DieCast Legends','The operating parts of this 1958 Chevy Corvette Limited Edition are particularly delicate due to their precise scale and require special care and attention. Features rotating wheels, working streering, opening doors and trunk. Color dark green.',2542,15.91,35.36),
('S24_2841','1900s Vintage Bi-Plane','Planes','1:24','Autoart Studio Design','Hand crafted diecast-like metal bi-plane is re-created in about 1:24 scale of antique pioneer airplane. All hand-assembled with many different parts. Hand-painted in classic yellow and features correct markings of original airplane.',5942,34.25,68.51),
('S24_2887','1952 Citroen-15CV','Classic Cars','1:24','Exoto Designs','Precision crafted hand-assembled 1:18 scale reproduction of the 1952 15CV, with its independent spring suspension, working steering system, opening doors and hood, detailed engine and instrument panel, all topped of with a factory fresh baked enamel finish.',1452,72.82,117.44),
('S24_2972','1982 Lamborghini Diablo','Classic Cars','1:24','Second Gear Diecast','This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',7723,16.24,37.76),
('S24_3151','1912 Ford Model T Delivery Wagon','Vintage Cars','1:24','Min Lin Diecast','This model features chrome trim and grille, opening hood, opening doors, opening trunk, detailed engine, working steering system. Color white.',9173,46.91,88.51),
('S24_3191','1969 Chevrolet Camaro Z28','Classic Cars','1:24','Exoto Designs','1969 Z/28 Chevy Camaro 1:24 scale replica. The operating parts of this limited edition 1:24 scale diecast model car 1969 Chevy Camaro Z28- hood, trunk, wheels, streering, suspension and doors- are particularly delicate due to their precise scale and require special care and attention.',4695,50.51,85.61),
('S24_3371','1971 Alpine Renault 1600s','Classic Cars','1:24','Welly Diecast Productions','This 1971 Alpine Renault 1600s replica Features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',7995,38.58,61.23),
('S24_3420','1937 Horch 930V Limousine','Vintage Cars','1:24','Autoart Studio Design','Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system',2902,26.30,65.75),
('S24_3432','2002 Chevy Corvette','Classic Cars','1:24','Gearbox Collectibles','The operating parts of this limited edition Diecast 2002 Chevy Corvette 50th Anniversary Pace car Limited Edition are particularly delicate due to their precise scale and require special care and attention. Features rotating wheels, poseable streering, opening doors and trunk.',9446,62.11,107.08),
('S24_3816','1940 Ford Delivery Sedan','Vintage Cars','1:24','Carousel DieCast Legends','Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System. Color black.',6621,48.64,83.86),
('S24_3856','1956 Porsche 356A Coupe','Classic Cars','1:18','Classic Metal Creations','Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',6600,98.30,140.43),
('S24_3949','Corsair F4U ( Bird Cage)','Planes','1:24','Second Gear Diecast','Has retractable wheels and comes with a stand. Official logos and insignias.',6812,29.34,68.24),
('S24_3969','1936 Mercedes Benz 500k Roadster','Vintage Cars','1:24','Red Start Diecast','This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system and rubber wheels. Color black.',2081,21.75,41.03),
('S24_4048','1992 Porsche Cayenne Turbo Silver','Classic Cars','1:24','Exoto Designs','This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',6582,69.78,118.28),
('S24_4258','1936 Chrysler Airflow','Vintage Cars','1:24','Second Gear Diecast','Features opening trunk,  working steering system. Color dark green.',4710,57.46,97.39),
('S24_4278','1900s Vintage Tri-Plane','Planes','1:24','Unimax Art Galleries','Hand crafted diecast-like metal Triplane is Re-created in about 1:24 scale of antique pioneer airplane. This antique style metal triplane is all hand-assembled with many different parts.',2756,36.23,72.45),
('S24_4620','1961 Chevrolet Impala','Classic Cars','1:18','Classic Metal Creations','This 1:18 scale precision die-cast reproduction of the 1961 Chevrolet Impala has all the features-doors, hood and trunk that open; detailed 409 cubic-inch engine; chrome dashboard and stick shift, two-tone interior; working steering system; all topped of with a factory baked-enamel finish.',7869,32.33,80.84),
('S32_1268','1980’s GM Manhattan Express','Trucks and Buses','1:32','Motor City Art Classics','This 1980’s era new look Manhattan express is still active, running from the Bronx to mid-town Manhattan. Has 35 opeining windows and working lights. Needs a battery.',5099,53.93,96.31),
('S32_1374','1997 BMW F650 ST','Motorcycles','1:32','Exoto Designs','Features official die-struck logos and baked enamel finish. Comes with stand.',178,66.92,99.89),
('S32_2206','1982 Ducati 996 R','Motorcycles','1:32','Gearbox Collectibles','Features rotating wheels , working kick stand. Comes with stand.',9241,24.14,40.23),
('S32_2509','1954 Greyhound Scenicruiser','Trucks and Buses','1:32','Classic Metal Creations','Model features bi-level seating, 50 windows, skylights & glare resistant glass, working steering system, original logos',2874,25.98,54.11),
('S32_3207','1950s Chicago Surface Lines Streetcar','Trains','1:32','Gearbox Collectibles','This streetcar is a joy to see. It has 80 separate windows, electric wire guides, detailed interiors with seats, poles and drivers controls, rolling and turning wheel assemblies, plus authentic factory baked-enamel finishes (Green Hornet for Chicago and Cream and Crimson for Boston).',8601,26.72,62.14),
('S32_3522','1996 Peterbilt 379 Stake Bed with Outrigger','Trucks and Buses','1:32','Red Start Diecast','This model features, opening doors, detailed engine, working steering, tinted windows, detailed interior, die-struck logos, removable stakes operating outriggers, detachable second trailer, functioning 360-degree self loader, precision molded resin trailer and trim, baked enamel finish on cab',814,33.61,64.64),
('S32_4289','1928 Ford Phaeton Deluxe','Vintage Cars','1:32','Highway 66 Mini Classics','This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system',136,33.02,68.79),
('S32_4485','1974 Ducati 350 Mk3 Desmo','Motorcycles','1:32','Second Gear Diecast','This model features two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand',3341,56.13,102.05),
('S50_1341','1930 Buick Marquette Phaeton','Vintage Cars','1:50','Studio M Art Models','Features opening trunk,  working steering system',7062,27.06,43.64),
('S50_1392','Diamond T620 Semi-Skirted Tanker','Trucks and Buses','1:50','Highway 66 Mini Classics','This limited edition model is licensed and perfectly scaled for Lionel Trains. The Diamond T620 has been produced in solid precision diecast and painted with a fire baked enamel finish. It comes with a removable tanker and is a perfect model to add authenticity to your static train or car layout or to just have on display.',1016,68.29,115.75),
('S50_1514','1962 City of Detroit Streetcar','Trains','1:50','Classic Metal Creations','This streetcar is a joy to see. It has 99 separate windows, electric wire guides, detailed interiors with seats, poles and drivers controls, rolling and turning wheel assemblies, plus authentic factory baked-enamel finishes (Green Hornet for Chicago and Cream and Crimson for Boston).',1645,37.49,58.58),
('S50_4713','2002 Yamaha YZR M1','Motorcycles','1:50','Autoart Studio Design','Features rotating wheels , working kick stand. Comes with stand.',600,34.17,81.36),
('S700_1138','The Schooner Bluenose','Ships','1:700','Autoart Studio Design','All wood with canvas sails. Measures 31 1/2 inches in Length, 22 inches High and 4 3/4 inches Wide. Many extras.
The schooner Bluenose was built in Nova Scotia in 1921 to fish the rough waters off the coast of Newfoundland. Because of the Bluenose racing prowess she became the pride of all Canadians. Still featured on stamps and the Canadian dime, the Bluenose was lost off Haiti in 1946.',1897,34.00,66.67),
('S700_1691','American Airlines: B767-300','Planes','1:700','Min Lin Diecast','Exact replia with official logos and insignias and retractable wheels',5841,51.15,91.34),
('S700_1938','The Mayflower','Ships','1:700','Studio M Art Models','Measures 31 1/2 inches Long x 25 1/2 inches High x 10 5/8 inches Wide
All wood with canvas sail. Extras include long boats, rigging, ladders, railing, anchors, side cannons, hand painted, etc.The Mayfower was already old in 1620, when the pilgrims charted her to bring their band of 103 to North America.',737,43.30,86.61),
('S700_2047','HMS Bounty','Ships','1:700','Unimax Art Galleries','Measures 30 inches Long x 27 1/2 inches High x 4 3/4 inches Wide. 
Many extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.',3501,39.83,90.52),
('S700_2466','America West Airlines B757-200','Planes','1:700','Motor City Art Classics','Official logos and insignias. Working steering system. Rotating jet engines',9653,68.80,99.72),
('S700_2610','The USS Constitution Ship','Ships','1:700','Red Start Diecast','All wood with canvas sails. Measures 31 1/2'' Length x 22 3/8'' High x 8 1/4'' Width. Extras include 4 boats on deck, sea sprite on bow, anchors, copper railing, pilot houses, etc.This was one of six warships commissioned by George Washington and launched in 1797. The nickname Old Ironsides was given the ship when British cannonballs bounced off the 21-inch oak planking of the American frigates hull. The Constitution has been restored and now resides in Boston Harbor.',7083,33.97,72.28),
('S700_2824','1982 Camaro Z28','Classic Cars','1:18','Carousel DieCast Legends','Features include opening and closing doors. Color: White. 
Measures approximately 9 1/2'' Long.',6934,46.53,101.15),
('S700_2834','ATA: B757-300','Planes','1:700','Highway 66 Mini Classics','Exact replia with official logos and insignias and retractable wheels',7106,59.33,118.65),
('S700_3167','F/A 18 Hornet 1/72','Planes','1:72','Motor City Art Classics','10'' Wingspan with retractable landing gears.Comes with pilot',551,54.40,80.00),
('S700_3505','The Titanic','Ships','1:700','Carousel DieCast Legends','Completed model measures 19 1/2 inches long, 9 inches high, 3inches wide and is in barn red/black. All wood and metal.',1956,51.09,100.17),
('S700_3962','The Queen Mary','Ships','1:700','Welly Diecast Productions','Exact replica. Wood and Metal. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.',5088,53.63,99.31),
('S700_4002','American Airlines: MD-11S','Planes','1:700','Second Gear Diecast','Polished finish. Exact replia with official logos and insignias and retractable wheels',8820,36.27,74.03),
('S72_1253','Boeing X-32A JSF','Planes','1:72','Motor City Art Classics','10'' Wingspan with retractable landing gears.Comes with pilot',4857,32.77,49.66),
('S72_3212','Pont Yacht','Ships','1:72','Unimax Art Galleries','Measures 38 inches Long x 33 3/4 inches High. Includes a stand.
Many extras including rigging, long boats, pilot house, anchors, etc. Comes with 2 masts, all square-rigged',414,33.30,54.60)


INSERT INTO Employees
VALUES(1002,'Murphy','Diane','x5800','dmurphy@classicmodelcars.com','1',NULL,'President'),
(1056,'Patterson','Mary','x4611','mpatterso@classicmodelcars.com','1',1002,'VP Sales'),
(1076,'Firrelli','Jeff','x9273','jfirrelli@classicmodelcars.com','1',1002,'VP Marketing'),
(1088,'Patterson','William','x4871','wpatterson@classicmodelcars.com','6',1056,'Sales Manager (JAPAN, APAC)'),
(1102,'Bondur','Gerard','x5408','athompson@classicmodelcars.com','4',1056,'Sale Manager (EMEA)'),
(1143,'Bow','Anthony','x5428','bhoward@classicmodelcars.com','1',1056,'Sales Manager (NA)'),
(1165,'Jennings','Leslie','x3291','ljennings@classicmodelcars.com','1',1143,'Sales Rep'),
(1166,'Thompson','Leslie','x4065','lthompson@classicmodelcars.com','1',1143,'Sales Rep'),
(1188,'Firrelli','Julie','x2173','jfirrelli@classicmodelcars.com','2',1143,'Sales Rep'),
(1216,'Patterson','Steve','x4334','spatterso@classicmodelcars.com','2',1143,'Sales Rep'),
(1286,'Tseng','Foon Yue','x2248','ftseng@classicmodelcars.com','3',1143,'Sales Rep'),
(1323,'Vanauf','George','x4102','gvanauf@classicmodelcars.com','3',1143,'Sales Rep'),
(1337,'Bondur','Loui','x6493','lbondur@classicmodelcars.com','4',1102,'Sales Rep'),
(1370,'Hernandez','Gerard','x2028','ghernande@classicmodelcars.com','4',1102,'Sales Rep'),
(1401,'Castillo','Pamela','x2759','pcastillo@classicmodelcars.com','4',1102,'Sales Rep'),
(1501,'Bott','Larry','x2311','lbott@classicmodelcars.com','7',1102,'Sales Rep'),
(1504,'Jones','Barry','x102','bjones@classicmodelcars.com','7',1102,'Sales Rep'),
(1611,'Fixter','Andy','x101','afixter@classicmodelcars.com','6',1088,'Sales Rep'),
(1612,'Marsh','Peter','x102','pmarsh@classicmodelcars.com','6',1088,'Sales Rep'),
(1619,'King','Tom','x103','tking@classicmodelcars.com','6',1088,'Sales Rep'),
(1621,'Nishi','Mami','x101','mnishi@classicmodelcars.com','5',1088,'Sales Rep'),
(1625,'Kato','Yoshimi','x102','ekato@classicmodelcars.com','5',1088,'Sales Rep'),
(1702,'Gerard','Martin','x2312','gmartin@classicmodelcars.com','4',1102,'Sales Rep')

INSERT INTO Orders
VALUES (10100,'2003/1/6 0:00:00','2003/1/13 0:00:00','2003/1/10 0:00:00','Shipped', NULL,363),
(10101,'2003/1/9 0:00:00,2003/1/18 0:00:00,2003/1/11 0:00:00,"Shipped","Check on availability.",128
(10102,'2003/1/10 0:00:00,2003/1/18 0:00:00,2003/1/14 0:00:00,"Shipped",NULL,181
(10103,'2003/1/29 0:00:00,2003/2/7 0:00:00,2003/2/2 0:00:00,"Shipped",NULL,121
(10104,'2003/1/31 0:00:00,2003/2/9 0:00:00,2003/2/1 0:00:00,"Shipped",NULL,141
(10105,'2003/2/11 0:00:00,2003/2/21 0:00:00,2003/2/12 0:00:00,"Shipped",NULL,145
(10106,'2003/2/17 0:00:00,2003/2/24 0:00:00,2003/2/21 0:00:00,"Shipped",NULL,278
(10107,'2003/2/24 0:00:00,2003/3/3 0:00:00,2003/2/26 0:00:00,"Shipped","Difficult to negotiate with customer. We need more marketing materials",131
(10108,'2003/3/3 0:00:00,2003/3/12 0:00:00,2003/3/8 0:00:00,"Shipped",NULL,385
(10109,'2003/3/10 0:00:00,2003/3/19 0:00:00,2003/3/11 0:00:00,"Shipped","Customer requested that FedEx Ground is used for this shipping",486
(10110,'2003/3/18 0:00:00,2003/3/24 0:00:00,2003/3/20 0:00:00,"Shipped",NULL,187
(10111,'2003/3/25 0:00:00,2003/3/31 0:00:00,2003/3/30 0:00:00,"Shipped",NULL,129
(10112,'2003/3/24 0:00:00,2003/4/3 0:00:00,2003/3/29 0:00:00,"Shipped","Customer requested that ad materials (such as posters, pamphlets) be included in the shippment",144
(10113,'2003/3/26 0:00:00,2003/4/2 0:00:00,2003/3/27 0:00:00,"Shipped",NULL,124
(10114,'2003/4/1 0:00:00,2003/4/7 0:00:00,2003/4/2 0:00:00,"Shipped",NULL,172
(10115,'2003/4/4 0:00:00,2003/4/12 0:00:00,2003/4/7 0:00:00,"Shipped",NULL,424
(10116,'2003/4/11 0:00:00,2003/4/19 0:00:00,2003/4/13 0:00:00,"Shipped",NULL,381
(10117,'2003/4/16 0:00:00,2003/4/24 0:00:00,2003/4/17 0:00:00,"Shipped",NULL,148
(10118,'2003/4/21 0:00:00,2003/4/29 0:00:00,2003/4/26 0:00:00,"Shipped","Customer has worked with some of our vendors in the past and is aware of their MSRP",216
(10119,'2003/4/28 0:00:00,2003/5/5 0:00:00,2003/5/2 0:00:00,"Shipped",NULL,382
(10120,'2003/4/29 0:00:00,2003/5/8 0:00:00,2003/5/1 0:00:00,"Shipped",NULL,114
(10121,'2003/5/7 0:00:00,2003/5/13 0:00:00,2003/5/13 0:00:00,"Shipped",NULL,353
(10122,'2003/5/8 0:00:00,2003/5/16 0:00:00,2003/5/13 0:00:00,"Shipped",NULL,350
(10123,'2003/5/20 0:00:00,2003/5/29 0:00:00,2003/5/22 0:00:00,"Shipped",NULL,103
(10124,'2003/5/21 0:00:00,2003/5/29 0:00:00,2003/5/25 0:00:00,"Shipped","Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch",112
(10125,'2003/5/21 0:00:00,2003/5/27 0:00:00,2003/5/24 0:00:00,"Shipped",NULL,114
(10126,'2003/5/28 0:00:00,2003/6/7 0:00:00,2003/6/2 0:00:00,"Shipped",NULL,458
(10127,'2003/6/3 0:00:00,2003/6/9 0:00:00,2003/6/6 0:00:00,"Shipped","Customer requested special shippment. The instructions were passed along to the warehouse",151
(10128,'2003/6/6 0:00:00,2003/6/12 0:00:00,2003/6/11 0:00:00,"Shipped",NULL,141
(10129,'2003/6/12 0:00:00,2003/6/18 0:00:00,2003/6/14 0:00:00,"Shipped",NULL,324
(10130,'2003/6/16 0:00:00,2003/6/24 0:00:00,2003/6/21 0:00:00,"Shipped",NULL,198
(10131,'2003/6/16 0:00:00,2003/6/25 0:00:00,2003/6/21 0:00:00,"Shipped",NULL,447
(10132,'2003/6/25 0:00:00,2003/7/1 0:00:00,2003/6/28 0:00:00,"Shipped",NULL,323
(10133,'2003/6/27 0:00:00,2003/7/4 0:00:00,2003/7/3 0:00:00,"Shipped",NULL,141
(10134,'2003/7/1 0:00:00,2003/7/10 0:00:00,2003/7/5 0:00:00,"Shipped",NULL,250
(10135,'2003/7/2 0:00:00,2003/7/12 0:00:00,2003/7/3 0:00:00,"Shipped",NULL,124
(10136,'2003/7/4 0:00:00,2003/7/14 0:00:00,2003/7/6 0:00:00,"Shipped","Customer is interested in buying more Ferrari models",242
(10137,'2003/7/10 0:00:00,2003/7/20 0:00:00,2003/7/14 0:00:00,"Shipped",NULL,353
(10138,'2003/7/7 0:00:00,2003/7/16 0:00:00,2003/7/13 0:00:00,"Shipped",NULL,496
(10139,'2003/7/16 0:00:00,2003/7/23 0:00:00,2003/7/21 0:00:00,"Shipped",NULL,282
(10140,'2003/7/24 0:00:00,2003/8/2 0:00:00,2003/7/30 0:00:00,"Shipped",NULL,161
(10141,'2003/8/1 0:00:00,2003/8/9 0:00:00,2003/8/4 0:00:00,"Shipped",NULL,334
(10142,'2003/8/8 0:00:00,2003/8/16 0:00:00,2003/8/13 0:00:00,"Shipped",NULL,124
(10143,'2003/8/10 0:00:00,2003/8/18 0:00:00,2003/8/12 0:00:00,"Shipped","Can we deliver the new Ford Mustang models by end-of-quarter?",320
(10144,'2003/8/13 0:00:00,2003/8/21 0:00:00,2003/8/14 0:00:00,"Shipped",NULL,381
(10145,'2003/8/25 0:00:00,2003/9/2 0:00:00,2003/8/31 0:00:00,"Shipped",NULL,205
(10146,'2003/9/3 0:00:00,2003/9/13 0:00:00,2003/9/6 0:00:00,"Shipped",NULL,447
(10147,'2003/9/5 0:00:00,2003/9/12 0:00:00,2003/9/9 0:00:00,"Shipped",NULL,379
(10148,'2003/9/11 0:00:00,2003/9/21 0:00:00,2003/9/15 0:00:00,"Shipped","They want to reevaluate their terms agreement with Finance.",276
(10149,'2003/9/12 0:00:00,2003/9/18 0:00:00,2003/9/17 0:00:00,"Shipped",NULL,487
(10150,'2003/9/19 0:00:00,2003/9/27 0:00:00,2003/9/21 0:00:00,"Shipped","They want to reevaluate their terms agreement with Finance.",148
(10151,'2003/9/21 0:00:00,2003/9/30 0:00:00,2003/9/24 0:00:00,"Shipped",NULL,311
(10152,'2003/9/25 0:00:00,2003/10/3 0:00:00,2003/10/1 0:00:00,"Shipped",NULL,333
(10153,'2003/9/28 0:00:00,2003/10/5 0:00:00,2003/10/3 0:00:00,"Shipped",NULL,141
(10154,'2003/10/2 0:00:00,2003/10/12 0:00:00,2003/10/8 0:00:00,"Shipped",NULL,219
(10155,'2003/10/6 0:00:00,2003/10/13 0:00:00,2003/10/7 0:00:00,"Shipped",NULL,186
(10156,'2003/10/8 0:00:00,2003/10/17 0:00:00,2003/10/11 0:00:00,"Shipped",NULL,141
(10157,'2003/10/9 0:00:00,2003/10/15 0:00:00,2003/10/14 0:00:00,"Shipped",NULL,473
(10158,'2003/10/10 0:00:00,2003/10/18 0:00:00,2003/10/15 0:00:00,"Shipped",NULL,121
(10159,'2003/10/10 0:00:00,2003/10/19 0:00:00,2003/10/16 0:00:00,"Shipped",NULL,321
(10160,'2003/10/11 0:00:00,2003/10/17 0:00:00,2003/10/17 0:00:00,"Shipped",NULL,347
(10161,'2003/10/17 0:00:00,2003/10/25 0:00:00,2003/10/20 0:00:00,"Shipped",NULL,227
(10162,'2003/10/18 0:00:00,2003/10/26 0:00:00,2003/10/19 0:00:00,"Shipped",NULL,321
(10163,'2003/10/20 0:00:00,2003/10/27 0:00:00,2003/10/24 0:00:00,"Shipped",NULL,424
(10164,'2003/10/21 0:00:00,2003/10/30 0:00:00,2003/10/23 0:00:00,"Resolved","This order was disputed, but resolved on 11/1/2003; Customer doesn't like the colors and precision of the models.",452
(10165,'2003/10/22 0:00:00,2003/10/31 0:00:00,2003/12/26 0:00:00,"Shipped","This order was on hold because customers's credit limit had been exceeded. Order will ship when payment is received",148
(10166,'2003/10/21 0:00:00,2003/10/30 0:00:00,2003/10/27 0:00:00,"Shipped",NULL,462
(10167,'2003/10/23 0:00:00,2003/10/30 0:00:00,NULL,"Cancelled","Customer called to cancel. The warehouse was notified in time and the order didn't ship. They have a new VP of Sales and are shifting their sales model. Our VP of Sales should contact them.",448
(10168,'2003/10/28 0:00:00,2003/11/3 0:00:00,2003/11/1 0:00:00,"Shipped",NULL,161
(10169,'2003/11/4 0:00:00,2003/11/14 0:00:00,2003/11/9 0:00:00,"Shipped",NULL,276
(10170,'2003/11/4 0:00:00,2003/11/12 0:00:00,2003/11/7 0:00:00,"Shipped",NULL,452
(10171,'2003/11/5 0:00:00,2003/11/13 0:00:00,2003/11/7 0:00:00,"Shipped",NULL,233
(10172,'2003/11/5 0:00:00,2003/11/14 0:00:00,2003/11/11 0:00:00,"Shipped",NULL,175
(10173,'2003/11/5 0:00:00,2003/11/15 0:00:00,2003/11/9 0:00:00,"Shipped","Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches",278
(10174,'2003/11/6 0:00:00,2003/11/15 0:00:00,2003/11/10 0:00:00,"Shipped",NULL,333
(10175,'2003/11/6 0:00:00,2003/11/14 0:00:00,2003/11/9 0:00:00,"Shipped",NULL,324
(10176,'2003/11/6 0:00:00,2003/11/15 0:00:00,2003/11/12 0:00:00,"Shipped",NULL,386
(10177,'2003/11/7 0:00:00,2003/11/17 0:00:00,2003/11/12 0:00:00,"Shipped",NULL,344
(10178,'2003/11/8 0:00:00,2003/11/16 0:00:00,2003/11/10 0:00:00,"Shipped","Custom shipping instructions sent to warehouse",242
(10179,'2003/11/11 0:00:00,2003/11/17 0:00:00,2003/11/13 0:00:00,"Cancelled","Customer cancelled due to urgent budgeting issues. Must be cautious when dealing with them in the future. Since order shipped already we must discuss who would cover the shipping charges.",496
(10180,'2003/11/11 0:00:00,2003/11/19 0:00:00,2003/11/14 0:00:00,"Shipped",NULL,171
(10181,'2003/11/12 0:00:00,2003/11/19 0:00:00,2003/11/15 0:00:00,"Shipped",NULL,167
(10182,'2003/11/12 0:00:00,2003/11/21 0:00:00,2003/11/18 0:00:00,"Shipped",NULL,124
(10183,'2003/11/13 0:00:00,2003/11/22 0:00:00,2003/11/15 0:00:00,"Shipped","We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.",339
(10184,'2003/11/14 0:00:00,2003/11/22 0:00:00,2003/11/20 0:00:00,"Shipped",NULL,484
(10185,'2003/11/14 0:00:00,2003/11/21 0:00:00,2003/11/20 0:00:00,"Shipped",NULL,320
(10186,'2003/11/14 0:00:00,2003/11/20 0:00:00,2003/11/18 0:00:00,"Shipped","They want to reevaluate their terms agreement with the VP of Sales",489
(10187,'2003/11/15 0:00:00,2003/11/24 0:00:00,2003/11/16 0:00:00,"Shipped",NULL,211
(10188,'2003/11/18 0:00:00,2003/11/26 0:00:00,2003/11/24 0:00:00,"Shipped",NULL,167
(10189,'2003/11/18 0:00:00,2003/11/25 0:00:00,2003/11/24 0:00:00,"Shipped","They want to reevaluate their terms agreement with Finance.",205
(10190,'2003/11/19 0:00:00,2003/11/29 0:00:00,2003/11/20 0:00:00,"Shipped",NULL,141
(10191,'2003/11/20 0:00:00,2003/11/30 0:00:00,2003/11/24 0:00:00,"Shipped","We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.",259
(10192,'2003/11/20 0:00:00,2003/11/29 0:00:00,2003/11/25 0:00:00,"Shipped",NULL,363
(10193,'2003/11/21 0:00:00,2003/11/28 0:00:00,2003/11/27 0:00:00,"Shipped",NULL,471
(10194,'2003/11/25 0:00:00,2003/12/2 0:00:00,2003/11/26 0:00:00,"Shipped",NULL,146
(10195,'2003/11/25 0:00:00,2003/12/1 0:00:00,2003/11/28 0:00:00,"Shipped",NULL,319
(10196,'2003/11/26 0:00:00,2003/12/3 0:00:00,2003/12/1 0:00:00,"Shipped",NULL,455
(10197,'2003/11/26 0:00:00,2003/12/2 0:00:00,2003/12/1 0:00:00,"Shipped","Customer inquired about remote controlled models and gold models.",216
(10198,'2003/11/27 0:00:00,2003/12/6 0:00:00,2003/12/3 0:00:00,"Shipped",NULL,385
(10199,'2003/12/1 0:00:00,2003/12/10 0:00:00,2003/12/6 0:00:00,"Shipped",NULL,475
(10200,'2003/12/1 0:00:00,2003/12/9 0:00:00,2003/12/6 0:00:00,"Shipped",NULL,211
(10201,'2003/12/1 0:00:00,2003/12/11 0:00:00,2003/12/2 0:00:00,"Shipped",NULL,129
(10202,'2003/12/2 0:00:00,2003/12/9 0:00:00,2003/12/6 0:00:00,"Shipped",NULL,357
(10203,'2003/12/2 0:00:00,2003/12/11 0:00:00,2003/12/7 0:00:00,"Shipped",NULL,141
(10204,'2003/12/2 0:00:00,2003/12/10 0:00:00,2003/12/4 0:00:00,"Shipped",NULL,151
(10205,'2003/12/3 0:00:00,2003/12/9 0:00:00,2003/12/7 0:00:00,"Shipped"," I need all the information I can get on our competitors.",141
(10206,'2003/12/5 0:00:00,2003/12/13 0:00:00,2003/12/8 0:00:00,"Shipped","Can we renegotiate this one?",202
(10207,'2003/12/9 0:00:00,2003/12/17 0:00:00,2003/12/11 0:00:00,"Shipped","Check on availability.",495
(10208,'2004/1/2 0:00:00,2004/1/11 0:00:00,2004/1/4 0:00:00,"Shipped",NULL,146
(10209,'2004/1/9 0:00:00,2004/1/15 0:00:00,2004/1/12 0:00:00,"Shipped",NULL,347
(10210,'2004/1/12 0:00:00,2004/1/22 0:00:00,2004/1/20 0:00:00,"Shipped",NULL,177
(10211,'2004/1/15 0:00:00,2004/1/25 0:00:00,2004/1/18 0:00:00,"Shipped",NULL,406
(10212,'2004/1/16 0:00:00,2004/1/24 0:00:00,2004/1/18 0:00:00,"Shipped",NULL,141
(10213,'2004/1/22 0:00:00,2004/1/28 0:00:00,2004/1/27 0:00:00,"Shipped","Difficult to negotiate with customer. We need more marketing materials",489
(10214,'2004/1/26 0:00:00,2004/2/4 0:00:00,2004/1/29 0:00:00,"Shipped",NULL,458
(10215,'2004/1/29 0:00:00,2004/2/8 0:00:00,2004/2/1 0:00:00,"Shipped","Customer requested that FedEx Ground is used for this shipping",475
(10216,'2004/2/2 0:00:00,2004/2/10 0:00:00,2004/2/4 0:00:00,"Shipped",NULL,256
(10217,'2004/2/4 0:00:00,2004/2/14 0:00:00,2004/2/6 0:00:00,"Shipped",NULL,166
(10218,'2004/2/9 0:00:00,2004/2/16 0:00:00,2004/2/11 0:00:00,"Shipped","Customer requested that ad materials (such as posters, pamphlets) be included in the shippment",473
(10219,'2004/2/10 0:00:00,2004/2/17 0:00:00,2004/2/12 0:00:00,"Shipped",NULL,487
(10220,'2004/2/12 0:00:00,2004/2/19 0:00:00,2004/2/16 0:00:00,"Shipped",NULL,189
(10221,'2004/2/18 0:00:00,2004/2/26 0:00:00,2004/2/19 0:00:00,"Shipped",NULL,314
(10222,'2004/2/19 0:00:00,2004/2/27 0:00:00,2004/2/20 0:00:00,"Shipped",NULL,239
(10223,'2004/2/20 0:00:00,2004/2/29 0:00:00,2004/2/24 0:00:00,"Shipped",NULL,114
(10224,'2004/2/21 0:00:00,2004/3/2 0:00:00,2004/2/26 0:00:00,"Shipped","Customer has worked with some of our vendors in the past and is aware of their MSRP",171
(10225,'2004/2/22 0:00:00,2004/3/1 0:00:00,2004/2/24 0:00:00,"Shipped",NULL,298
(10226,'2004/2/26 0:00:00,2004/3/6 0:00:00,2004/3/2 0:00:00,"Shipped",NULL,239
(10227,'2004/3/2 0:00:00,2004/3/12 0:00:00,2004/3/8 0:00:00,"Shipped",NULL,146
(10228,'2004/3/10 0:00:00,2004/3/18 0:00:00,2004/3/13 0:00:00,"Shipped",NULL,173
(10229,'2004/3/11 0:00:00,2004/3/20 0:00:00,2004/3/12 0:00:00,"Shipped",NULL,124
(10230,'2004/3/15 0:00:00,2004/3/24 0:00:00,2004/3/20 0:00:00,"Shipped","Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch",128
(10231,'2004/3/19 0:00:00,2004/3/26 0:00:00,2004/3/25 0:00:00,"Shipped",NULL,344
(10232,'2004/3/20 0:00:00,2004/3/30 0:00:00,2004/3/25 0:00:00,"Shipped",NULL,240
(10233,'2004/3/29 0:00:00,2004/4/4 0:00:00,2004/4/2 0:00:00,"Shipped","Customer requested special shippment. The instructions were passed along to the warehouse",328
(10234,'2004/3/30 0:00:00,2004/4/5 0:00:00,2004/4/2 0:00:00,"Shipped",NULL,412
(10235,'2004/4/2 0:00:00,2004/4/12 0:00:00,2004/4/6 0:00:00,"Shipped",NULL,260
(10236,'2004/4/3 0:00:00,2004/4/11 0:00:00,2004/4/8 0:00:00,"Shipped",NULL,486
(10237,'2004/4/5 0:00:00,2004/4/12 0:00:00,2004/4/10 0:00:00,"Shipped",NULL,181
(10238,'2004/4/9 0:00:00,2004/4/16 0:00:00,2004/4/10 0:00:00,"Shipped",NULL,145
(10239,'2004/4/12 0:00:00,2004/4/21 0:00:00,2004/4/17 0:00:00,"Shipped",NULL,311
(10240,'2004/4/13 0:00:00,2004/4/20 0:00:00,2004/4/20 0:00:00,"Shipped",NULL,177
(10241,'2004/4/13 0:00:00,2004/4/20 0:00:00,2004/4/19 0:00:00,"Shipped",NULL,209
(10242,'2004/4/20 0:00:00,2004/4/28 0:00:00,2004/4/25 0:00:00,"Shipped","Customer is interested in buying more Ferrari models",456
(10243,'2004/4/26 0:00:00,2004/5/3 0:00:00,2004/4/28 0:00:00,"Shipped",NULL,495
(10244,'2004/4/29 0:00:00,2004/5/9 0:00:00,2004/5/4 0:00:00,"Shipped",NULL,141
(10245,'2004/5/4 0:00:00,2004/5/12 0:00:00,2004/5/9 0:00:00,"Shipped",NULL,455
(10246,'2004/5/5 0:00:00,2004/5/13 0:00:00,2004/5/6 0:00:00,"Shipped",NULL,141
(10247,'2004/5/5 0:00:00,2004/5/11 0:00:00,2004/5/8 0:00:00,"Shipped",NULL,334
(10248,'2004/5/7 0:00:00,2004/5/14 0:00:00,NULL,"Cancelled","Order was mistakenly placed. The warehouse noticed the lack of documentation.",131
(10249,'2004/5/8 0:00:00,2004/5/17 0:00:00,2004/5/11 0:00:00,"Shipped","Can we deliver the new Ford Mustang models by end-of-quarter?",173
(10250,'2004/5/11 0:00:00,2004/5/19 0:00:00,2004/5/15 0:00:00,"Shipped",NULL,450
(10251,'2004/5/18 0:00:00,2004/5/24 0:00:00,2004/5/24 0:00:00,"Shipped",NULL,328
(10252,'2004/5/26 0:00:00,2004/6/4 0:00:00,2004/5/29 0:00:00,"Shipped",NULL,406
(10253,'2004/6/1 0:00:00,2004/6/9 0:00:00,2004/6/2 0:00:00,"Cancelled","Customer disputed the order and we agreed to cancel it. We must be more cautions with this customer going forward, since they are very hard to please. We must cover the shipping fees.",201
(10254,'2004/6/3 0:00:00,2004/6/13 0:00:00,2004/6/4 0:00:00,"Shipped","Customer requested that DHL is used for this shipping",323
(10255,'2004/6/4 0:00:00,2004/6/12 0:00:00,2004/6/9 0:00:00,"Shipped",NULL,209
(10256,'2004/6/8 0:00:00,2004/6/16 0:00:00,2004/6/10 0:00:00,"Shipped",NULL,145
(10257,'2004/6/14 0:00:00,2004/6/24 0:00:00,2004/6/15 0:00:00,"Shipped",NULL,450
(10258,'2004/6/15 0:00:00,2004/6/25 0:00:00,2004/6/23 0:00:00,"Shipped",NULL,398
(10259,'2004/6/15 0:00:00,2004/6/22 0:00:00,2004/6/17 0:00:00,"Shipped",NULL,166
(10260,'2004/6/16 0:00:00,2004/6/22 0:00:00,NULL,"Cancelled","Customer heard complaints from their customers and called to cancel this order. Will notify the Sales Manager.",357
(10261,'2004/6/17 0:00:00,2004/6/25 0:00:00,2004/6/22 0:00:00,"Shipped",NULL,233
(10262,'2004/6/24 0:00:00,2004/7/1 0:00:00,NULL,"Cancelled","This customer found a better offer from one of our competitors. Will call back to renegotiate.",141
(10263,'2004/6/28 0:00:00,2004/7/4 0:00:00,2004/7/2 0:00:00,"Shipped",NULL,175
(10264,'2004/6/30 0:00:00,2004/7/6 0:00:00,2004/7/1 0:00:00,"Shipped","Customer will send a truck to our local warehouse on 7/1/2004",362
(10265,'2004/7/2 0:00:00,2004/7/9 0:00:00,2004/7/7 0:00:00,"Shipped",NULL,471
(10266,'2004/7/6 0:00:00,2004/7/14 0:00:00,2004/7/10 0:00:00,"Shipped",NULL,386
(10267,'2004/7/7 0:00:00,2004/7/17 0:00:00,2004/7/9 0:00:00,"Shipped",NULL,151
(10268,'2004/7/12 0:00:00,2004/7/18 0:00:00,2004/7/14 0:00:00,"Shipped",NULL,412
(10269,'2004/7/16 0:00:00,2004/7/22 0:00:00,2004/7/18 0:00:00,"Shipped",NULL,382
(10270,'2004/7/19 0:00:00,2004/7/27 0:00:00,2004/7/24 0:00:00,"Shipped","Can we renegotiate this one?",282
(10271,'2004/7/20 0:00:00,2004/7/29 0:00:00,2004/7/23 0:00:00,"Shipped",NULL,124
(10272,'2004/7/20 0:00:00,2004/7/26 0:00:00,2004/7/22 0:00:00,"Shipped",NULL,157
(10273,'2004/7/21 0:00:00,2004/7/28 0:00:00,2004/7/22 0:00:00,"Shipped",NULL,314
(10274,'2004/7/21 0:00:00,2004/7/29 0:00:00,2004/7/22 0:00:00,"Shipped",NULL,379
(10275,'2004/7/23 0:00:00,2004/8/2 0:00:00,2004/7/29 0:00:00,"Shipped",NULL,119
(10276,'2004/8/2 0:00:00,2004/8/11 0:00:00,2004/8/8 0:00:00,"Shipped",NULL,204
(10277,'2004/8/4 0:00:00,2004/8/12 0:00:00,2004/8/5 0:00:00,"Shipped",NULL,148
(10278,'2004/8/6 0:00:00,2004/8/16 0:00:00,2004/8/9 0:00:00,"Shipped",NULL,112
(10279,'2004/8/9 0:00:00,2004/8/19 0:00:00,2004/8/15 0:00:00,"Shipped","Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches",141
(10280,'2004/8/17 0:00:00,2004/8/27 0:00:00,2004/8/19 0:00:00,"Shipped",NULL,249
(10281,'2004/8/19 0:00:00,2004/8/28 0:00:00,2004/8/23 0:00:00,"Shipped",NULL,157
(10282,'2004/8/20 0:00:00,2004/8/26 0:00:00,2004/8/22 0:00:00,"Shipped",NULL,124
(10283,'2004/8/20 0:00:00,2004/8/30 0:00:00,2004/8/23 0:00:00,"Shipped",NULL,260
(10284,'2004/8/21 0:00:00,2004/8/29 0:00:00,2004/8/26 0:00:00,"Shipped","Custom shipping instructions sent to warehouse",299
(10285,'2004/8/27 0:00:00,2004/9/4 0:00:00,2004/8/31 0:00:00,"Shipped",NULL,286
(10286,'2004/8/28 0:00:00,2004/9/6 0:00:00,2004/9/1 0:00:00,"Shipped",NULL,172
(10287,'2004/8/30 0:00:00,2004/9/6 0:00:00,2004/9/1 0:00:00,"Shipped",NULL,298
(10288,'2004/9/1 0:00:00,2004/9/11 0:00:00,2004/9/5 0:00:00,"Shipped",NULL,166
(10289,'2004/9/3 0:00:00,2004/9/13 0:00:00,2004/9/4 0:00:00,"Shipped","We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.",167
(10290,'2004/9/7 0:00:00,2004/9/15 0:00:00,2004/9/13 0:00:00,"Shipped",NULL,198
(10291,'2004/9/8 0:00:00,2004/9/17 0:00:00,2004/9/14 0:00:00,"Shipped",NULL,448
(10292,'2004/9/8 0:00:00,2004/9/18 0:00:00,2004/9/11 0:00:00,"Shipped","They want to reevaluate their terms agreement with Finance.",131
(10293,'2004/9/9 0:00:00,2004/9/18 0:00:00,2004/9/14 0:00:00,"Shipped",NULL,249
(10294,'2004/9/10 0:00:00,2004/9/17 0:00:00,2004/9/14 0:00:00,"Shipped",NULL,204
(10295,'2004/9/10 0:00:00,2004/9/17 0:00:00,2004/9/14 0:00:00,"Shipped","They want to reevaluate their terms agreement with Finance.",362
(10296,'2004/9/15 0:00:00,2004/9/22 0:00:00,2004/9/16 0:00:00,"Shipped",NULL,415
(10297,'2004/9/16 0:00:00,2004/9/22 0:00:00,2004/9/21 0:00:00,"Shipped","We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.",189
(10298,'2004/9/27 0:00:00,2004/10/5 0:00:00,2004/10/1 0:00:00,"Shipped",NULL,103
(10299,'2004/9/30 0:00:00,2004/10/10 0:00:00,2004/10/1 0:00:00,"Shipped",NULL,186
(10300,'2003/10/4 0:00:00,2003/10/13 0:00:00,2003/10/9 0:00:00,"Shipped",NULL,128
(10301,'2003/10/5 0:00:00,2003/10/15 0:00:00,2003/10/8 0:00:00,"Shipped",NULL,299
(10302,'2003/10/6 0:00:00,2003/10/16 0:00:00,2003/10/7 0:00:00,"Shipped",NULL,201
(10303,'2004/10/6 0:00:00,2004/10/14 0:00:00,2004/10/9 0:00:00,"Shipped","Customer inquired about remote controlled models and gold models.",484
(10304,'2004/10/11 0:00:00,2004/10/20 0:00:00,2004/10/17 0:00:00,"Shipped",NULL,256
(10305,'2004/10/13 0:00:00,2004/10/22 0:00:00,2004/10/15 0:00:00,"Shipped","Check on availability.",286
(10306,'2004/10/14 0:00:00,2004/10/21 0:00:00,2004/10/17 0:00:00,"Shipped",NULL,187
(10307,'2004/10/14 0:00:00,2004/10/23 0:00:00,2004/10/20 0:00:00,"Shipped",NULL,339
(10308,'2004/10/15 0:00:00,2004/10/24 0:00:00,2004/10/20 0:00:00,"Shipped","Customer requested that FedEx Ground is used for this shipping",319
(10309,'2004/10/15 0:00:00,2004/10/24 0:00:00,2004/10/18 0:00:00,"Shipped",NULL,121
(10310,'2004/10/16 0:00:00,2004/10/24 0:00:00,2004/10/18 0:00:00,"Shipped",NULL,259
(10311,'2004/10/16 0:00:00,2004/10/23 0:00:00,2004/10/20 0:00:00,"Shipped","Difficult to negotiate with customer. We need more marketing materials",141
(10312,'2004/10/21 0:00:00,2004/10/27 0:00:00,2004/10/23 0:00:00,"Shipped",NULL,124
(10313,'2004/10/22 0:00:00,2004/10/28 0:00:00,2004/10/25 0:00:00,"Shipped","Customer requested that FedEx Ground is used for this shipping",202
(10314,'2004/10/22 0:00:00,2004/11/1 0:00:00,2004/10/23 0:00:00,"Shipped",NULL,227
(10315,'2004/10/29 0:00:00,2004/11/8 0:00:00,2004/10/30 0:00:00,"Shipped",NULL,119
(10316,'2004/11/1 0:00:00',2004/11/9 0:00:00,2004/11/7 0:00:00,"Shipped","Customer requested that ad materials (such as posters, pamphlets) be included in the shippment",240
(10317,'2004/11/2 0:00:00',2004/11/12 0:00:00,2004/11/8 0:00:00,"Shipped",NULL,161
(10318,'2004/11/2 0:00:00',2004/11/9 0:00:00,2004/11/7 0:00:00,"Shipped",NULL,157
(10319,'2004/11/3 0:00:00',2004/11/11 0:00:00,2004/11/6 0:00:00,"Shipped","Customer requested that DHL is used for this shipping",456
(10320,'2004/11/3 0:00:00',2004/11/13 0:00:00,2004/11/7 0:00:00,"Shipped",NULL,144
(10324,'2004/11/5 0:00:00',2004/11/11 0:00:00,2004/11/8 0:00:00,"Shipped",NULL,181
(10325,'2004/11/5 0:00:00',2004/11/13 0:00:00,2004/11/8 0:00:00,"Shipped",NULL,121
(10326,'2004/11/9 0:00:00',2004/11/16 0:00:00,2004/11/10 0:00:00,"Shipped",NULL,144
(10327,'2004/11/10 0:00:00',2004/11/19 0:00:00,2004/11/13 0:00:00,"Resolved","Order was disputed and resolved on 12/1/04. The Sales Manager was involved. Customer claims the scales of the models don't match what was discussed.",145
(10328,'2004/11/12 0:00:00',2004/11/21 0:00:00,2004/11/18 0:00:00,"Shipped","Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch",278
(10329,'2004/11/15 0:00:00',2004/11/24 0:00:00,2004/11/16 0:00:00,"Shipped",NULL,131
(10330,'2004/11/16 0:00:00',2004/11/25 0:00:00,2004/11/21 0:00:00,"Shipped",NULL,385
(10331,'2004/11/17 0:00:00',2004/11/23 0:00:00,2004/11/23 0:00:00,"Shipped","Customer requested special shippment. The instructions were passed along to the warehouse",486
(10332,'2004/11/17 0:00:00',2004/11/25 0:00:00,2004/11/18 0:00:00,"Shipped",NULL,187
10333,2004/11/18 0:00:00,2004/11/27 0:00:00,2004/11/20 0:00:00,"Shipped",NULL,129
10334,2004/11/19 0:00:00,2004/11/28 0:00:00,NULL,"On Hold","The outstaniding balance for this customer exceeds their credit limit. Order will be shipped when a payment is received.",144
10335,2004/11/19 0:00:00,2004/11/29 0:00:00,2004/11/23 0:00:00,"Shipped",NULL,124
10336,2004/11/20 0:00:00,2004/11/26 0:00:00,2004/11/24 0:00:00,"Shipped","Customer requested that DHL is used for this shipping",172
10337,2004/11/21 0:00:00,2004/11/30 0:00:00,2004/11/26 0:00:00,"Shipped",NULL,424
10338,2004/11/22 0:00:00,2004/12/2 0:00:00,2004/11/27 0:00:00,"Shipped",NULL,381
10339,2004/11/23 0:00:00,2004/11/30 0:00:00,2004/11/30 0:00:00,"Shipped",NULL,398
10340,2004/11/24 0:00:00,2004/12/1 0:00:00,2004/11/25 0:00:00,"Shipped","Customer is interested in buying more Ferrari models",216
10341,2004/11/24 0:00:00,2004/12/1 0:00:00,2004/11/29 0:00:00,"Shipped",NULL,382
10342,2004/11/24 0:00:00,2004/12/1 0:00:00,2004/11/29 0:00:00,"Shipped",NULL,114
10343,2004/11/24 0:00:00,2004/12/1 0:00:00,2004/11/26 0:00:00,"Shipped",NULL,353
10344,2004/11/25 0:00:00,2004/12/2 0:00:00,2004/11/29 0:00:00,"Shipped",NULL,350
10345,2004/11/25 0:00:00,2004/12/1 0:00:00,2004/11/26 0:00:00,"Shipped",NULL,103
10346,2004/11/29 0:00:00,2004/12/5 0:00:00,2004/11/30 0:00:00,"Shipped",NULL,112
10347,2004/11/29 0:00:00,2004/12/7 0:00:00,2004/11/30 0:00:00,"Shipped","Can we deliver the new Ford Mustang models by end-of-quarter?",114
10348,2004/11/1 0:00:00,2004/11/8 0:00:00,2004/11/5 0:00:00,"Shipped",NULL,458
10349,2004/12/1 0:00:00,2004/12/7 0:00:00,2004/12/3 0:00:00,"Shipped",NULL,151
10350,2004/12/2 0:00:00,2004/12/8 0:00:00,2004/12/5 0:00:00,"Shipped",NULL,141
10351,2004/12/3 0:00:00,2004/12/11 0:00:00,2004/12/7 0:00:00,"Shipped",NULL,324
10352,2004/12/3 0:00:00,2004/12/12 0:00:00,2004/12/9 0:00:00,"Shipped",NULL,198
10353,2004/12/4 0:00:00,2004/12/11 0:00:00,2004/12/5 0:00:00,"Shipped",NULL,447
10354,2004/12/4 0:00:00,2004/12/10 0:00:00,2004/12/5 0:00:00,"Shipped",NULL,323
10355,2004/12/7 0:00:00,2004/12/14 0:00:00,2004/12/13 0:00:00,"Shipped",NULL,141
10356,2004/12/9 0:00:00,2004/12/15 0:00:00,2004/12/12 0:00:00,"Shipped",NULL,250
10357,2004/12/10 0:00:00,2004/12/16 0:00:00,2004/12/14 0:00:00,"Shipped",NULL,124
10358,2004/12/10 0:00:00,2004/12/16 0:00:00,2004/12/16 0:00:00,"Shipped","Customer requested that DHL is used for this shipping",141
10359,2004/12/15 0:00:00,2004/12/23 0:00:00,2004/12/18 0:00:00,"Shipped",NULL,353
10360,2004/12/16 0:00:00,2004/12/22 0:00:00,2004/12/18 0:00:00,"Shipped",NULL,496
10361,2004/12/17 0:00:00,2004/12/24 0:00:00,2004/12/20 0:00:00,"Shipped",NULL,282
10362,2005/1/5 0:00:00,2005/1/16 0:00:00,2005/1/10 0:00:00,"Shipped",NULL,161
10363,2005/1/6 0:00:00,2005/1/12 0:00:00,2005/1/10 0:00:00,"Shipped",NULL,334
10364,2005/1/6 0:00:00,2005/1/17 0:00:00,2005/1/9 0:00:00,"Shipped",NULL,350
10365,2005/1/7 0:00:00,2005/1/18 0:00:00,2005/1/11 0:00:00,"Shipped",NULL,320
10366,2005/1/10 0:00:00,2005/1/19 0:00:00,2005/1/12 0:00:00,"Shipped",NULL,381
10367,2005/1/12 0:00:00,2005/1/21 0:00:00,2005/1/16 0:00:00,"Resolved","This order was disputed and resolved on 2/1/2005. Customer claimed that container with shipment was damaged. FedEx's investigation proved this wrong.",205
10368,2005/1/19 0:00:00,2005/1/27 0:00:00,2005/1/24 0:00:00,"Shipped","Can we renegotiate this one?",124
10369,2005/1/20 0:00:00,2005/1/28 0:00:00,2005/1/24 0:00:00,"Shipped",NULL,379
10370,2005/1/20 0:00:00,2005/2/1 0:00:00,2005/1/25 0:00:00,"Shipped",NULL,276
10371,2005/1/23 0:00:00,2005/2/3 0:00:00,2005/1/25 0:00:00,"Shipped",NULL,124
10372,2005/1/26 0:00:00,2005/2/5 0:00:00,2005/1/28 0:00:00,"Shipped",NULL,398
10373,2005/1/31 0:00:00,2005/2/8 0:00:00,2005/2/6 0:00:00,"Shipped",NULL,311
10374,2005/2/2 0:00:00,2005/2/9 0:00:00,2005/2/3 0:00:00,"Shipped",NULL,333
10375,2005/2/3 0:00:00,2005/2/10 0:00:00,2005/2/6 0:00:00,"Shipped",NULL,119
10376,2005/2/8 0:00:00,2005/2/18 0:00:00,2005/2/13 0:00:00,"Shipped",NULL,219
10377,2005/2/9 0:00:00,2005/2/21 0:00:00,2005/2/12 0:00:00,"Shipped","Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches",186
10378,2005/2/10 0:00:00,2005/2/18 0:00:00,2005/2/11 0:00:00,"Shipped",NULL,141
10379,2005/2/10 0:00:00,2005/2/18 0:00:00,2005/2/11 0:00:00,"Shipped",NULL,141
10380,2005/2/16 0:00:00,2005/2/24 0:00:00,2005/2/18 0:00:00,"Shipped",NULL,141
10381,2005/2/17 0:00:00,2005/2/25 0:00:00,2005/2/18 0:00:00,"Shipped",NULL,321
10382,2005/2/17 0:00:00,2005/2/23 0:00:00,2005/2/18 0:00:00,"Shipped","Custom shipping instructions sent to warehouse",124
10383,2005/2/22 0:00:00,2005/3/2 0:00:00,2005/2/25 0:00:00,"Shipped",NULL,141
10384,2005/2/23 0:00:00,2005/3/6 0:00:00,2005/2/27 0:00:00,"Shipped",NULL,321
10385,2005/2/28 0:00:00,2005/3/9 0:00:00,2005/3/1 0:00:00,"Shipped",NULL,124
10386,2005/3/1 0:00:00,2005/3/9 0:00:00,2005/3/6 0:00:00,"Resolved","Disputed then Resolved on 3/15/2005. Customer doesn't like the craftsmaship of the models.",141
10387,2005/3/2 0:00:00,2005/3/9 0:00:00,2005/3/6 0:00:00,"Shipped","We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.",148
10388,2005/3/3 0:00:00,2005/3/11 0:00:00,2005/3/9 0:00:00,"Shipped",NULL,462
10389,2005/3/3 0:00:00,2005/3/9 0:00:00,2005/3/8 0:00:00,"Shipped",NULL,448
10390,2005/3/4 0:00:00,2005/3/11 0:00:00,2005/3/7 0:00:00,"Shipped","They want to reevaluate their terms agreement with Finance.",124
10391,2005/3/9 0:00:00,2005/3/20 0:00:00,2005/3/15 0:00:00,"Shipped",NULL,276
10392,2005/3/10 0:00:00,2005/3/18 0:00:00,2005/3/12 0:00:00,"Shipped",NULL,452
10393,2005/3/11 0:00:00,2005/3/22 0:00:00,2005/3/14 0:00:00,"Shipped","They want to reevaluate their terms agreement with Finance.",323
10394,2005/3/15 0:00:00,2005/3/25 0:00:00,2005/3/19 0:00:00,"Shipped",NULL,141
10395,2005/3/17 0:00:00,2005/3/24 0:00:00,2005/3/23 0:00:00,"Shipped","We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.",250
10396,2005/3/23 0:00:00,2005/4/2 0:00:00,2005/3/28 0:00:00,"Shipped",NULL,124
10397,2005/3/28 0:00:00,2005/4/9 0:00:00,2005/4/1 0:00:00,"Shipped",NULL,242
10398,2005/3/30 0:00:00,2005/4/9 0:00:00,2005/3/31 0:00:00,"Shipped",NULL,353
10399,2005/4/1 0:00:00,2005/4/12 0:00:00,2005/4/3 0:00:00,"Shipped",NULL,496
10400,2005/4/1 0:00:00,2005/4/11 0:00:00,2005/4/4 0:00:00,"Shipped","Customer requested that DHL is used for this shipping",450
10401,2005/4/3 0:00:00,2005/4/14 0:00:00,NULL,"On Hold","Customer credit limit exceeded. Will ship when a payment is received.",328
10402,2005/4/7 0:00:00,2005/4/14 0:00:00,2005/4/12 0:00:00,"Shipped",NULL,406
10403,2005/4/8 0:00:00,2005/4/18 0:00:00,2005/4/11 0:00:00,"Shipped",NULL,201
10404,2005/4/8 0:00:00,2005/4/14 0:00:00,2005/4/11 0:00:00,"Shipped",NULL,323
10405,2005/4/14 0:00:00,2005/4/24 0:00:00,2005/4/20 0:00:00,"Shipped",NULL,209
10406,2005/4/15 0:00:00,2005/4/25 0:00:00,2005/4/21 0:00:00,"Disputed","Customer claims container with shipment was damaged during shipping and some items were missing. I am talking to FedEx about this.",145
10407,2005/4/22 0:00:00,2005/5/4 0:00:00,NULL,"On Hold","Customer credit limit exceeded. Will ship when a payment is received.",450
10408,2005/4/22 0:00:00,2005/4/29 0:00:00,2005/4/27 0:00:00,"Shipped",NULL,398
10409,2005/4/23 0:00:00,2005/5/5 0:00:00,2005/4/24 0:00:00,"Shipped",NULL,166
10410,2005/4/29 0:00:00,2005/5/10 0:00:00,2005/4/30 0:00:00,"Shipped",NULL,357
10411,2005/5/1 0:00:00,2005/5/8 0:00:00,2005/5/6 0:00:00,"Shipped",NULL,233
10412,2005/5/3 0:00:00,2005/5/13 0:00:00,2005/5/5 0:00:00,"Shipped",NULL,141
10413,2005/5/5 0:00:00,2005/5/14 0:00:00,2005/5/9 0:00:00,"Shipped","Customer requested that DHL is used for this shipping",175
10414,2005/5/6 0:00:00,2005/5/13 0:00:00,NULL,"On Hold","Customer credit limit exceeded. Will ship when a payment is received.",362
10415,2005/5/9 0:00:00,2005/5/20 0:00:00,2005/5/12 0:00:00,"Disputed","Customer claims the scales of the models don't match what was discussed. I keep all the paperwork though to prove otherwise",471
10416,2005/5/10 0:00:00,2005/5/16 0:00:00,2005/5/14 0:00:00,"Shipped",NULL,386
10417,2005/5/13 0:00:00,2005/5/19 0:00:00,2005/5/19 0:00:00,"Disputed","Customer doesn't like the colors and precision of the models.",141
10418,2005/5/16 0:00:00,2005/5/24 0:00:00,2005/5/20 0:00:00,"Shipped",NULL,412
10419,2005/5/17 0:00:00,2005/5/28 0:00:00,2005/5/19 0:00:00,"Shipped",NULL,382
10420,2005/5/29 0:00:00,2005/6/7 0:00:00,NULL,"In Process",NULL,282
10421,2005/5/29 0:00:00,2005/6/6 0:00:00,NULL,"In Process","Custom shipping instructions were sent to warehouse",124
10422,2005/5/30 0:00:00,2005/6/11 0:00:00,NULL,"In Process",NULL,157
10423,2005/5/30 0:00:00,2005/6/5 0:00:00,NULL,"In Process",NULL,314
10424,2005/5/31 0:00:00,2005/6/8 0:00:00,NULL,"In Process",NULL,141
10425,2005/5/31 0:00:00,2005/6/7 0:00:00,NULL,"In Process",NULL,119
)


BULK INSERT Customerss
FROM 'C:/Users/Amar/Downloads/ClassicModels-MySQL/datafiles/Customers.txt'
WITH
	(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n'
	)
GO