-- Cities
insert into Cities(cityName,countryCode)values('Reykjavik','IS');
insert into Cities(cityName,countryCode)values('Oslo','NO');
insert into Cities(cityName,countryCode)values('Stockholm','SE');
insert into Cities(cityName,countryCode)values('Copenhagen','DK');
insert into Cities(cityName,countryCode)values('Helsinki','FI');
insert into Cities(cityName,countryCode)values('London','GB');
insert into Cities(cityName,countryCode)values('Paris','FR');
insert into Cities(cityName,countryCode)values('Frankfurt','DE');
insert into Cities(cityName,countryCode)values('Zürich','CH');
insert into Cities(cityName,countryCode)values('Barcelona','ES');
insert into Cities(cityName,countryCode)values('Moscow','RU');
insert into Cities(cityName,countryCode)values('Warsaw','PL');
insert into Cities(cityName,countryCode)values('Torshavn','FO');
insert into Cities(cityName,countryCode)values('Milano','IT');
insert into Cities(cityName,countryCode)values('Vienna','AT');
insert into Cities(cityName,countryCode)values('Istanbul','TR');
insert into Cities(cityName,countryCode)values('Tel Aviv','IL');
insert into Cities(cityName,countryCode)values('Cairo','EG');
insert into Cities(cityName,countryCode)values('Doha','QA');
insert into Cities(cityName,countryCode)values('Dar es Salaam','TZ');
insert into Cities(cityName,countryCode)values('Nairobi','KE');
insert into Cities(cityName,countryCode)values('Johannesburg','ZA');
insert into Cities(cityName,countryCode)values('Teheran','IR');
insert into Cities(cityName,countryCode)values('Baghdad','IQ');
insert into Cities(cityName,countryCode)values('Mumbai','IN');
insert into Cities(cityName,countryCode)values('Beijing','CN');
insert into Cities(cityName,countryCode)values('Bangkok','TH');
insert into Cities(cityName,countryCode)values('Hanoi','VN');			
insert into Cities(cityName,countryCode)values('Tokyo','JP');
insert into Cities(cityName,countryCode)values('Sydney','AU');
insert into Cities(cityName,countryCode)values('Auckland','NZ');
insert into Cities(cityName,countryCode)values('Boston','US');
insert into Cities(cityName,countryCode)values('Los Angeles','US');
insert into Cities(cityName,countryCode)values('Toronto','CA');
insert into Cities(cityName,countryCode)values('Kingston','JM');
insert into Cities(cityName,countryCode)values('Rio De Janeiro','BR');
insert into Cities(cityName,countryCode)values('Mexico City','MX');
insert into Cities(cityName,countryCode)values('Glasgow','GB');
insert into Cities(cityName,countryCode)values('Lissabon','PT');
insert into Cities(cityName,countryCode)values('Prague','CZ');
insert into Cities(cityName,countryCode)values('Buenos Aires','AR');
insert into Cities(cityName,countryCode)values('New York','US');
insert into Cities(cityName,countryCode)values('Athens','GR');

-- Airports
insert into Airports(IATAcode,airportName,Latitude,Longitude,CityID)
values
('AKL','Auckland International','-37.008055','174.791667',31),
('ARN','Arlanda','59.651944','17.918611',3),  
('ATH','Athens International Airport','37.936358','23.944467',43),
('BCN','Barcelona International ','41.297078','2.078464',10),
('BGW','Baghdad International Airport','33.262539','44.234577',24),
('BKK','Suvarnabhumi','13.681108','100.747283',27),
('BOM','Chhatrapati Shivaji International Airport','19.088686','72.867919',25), 
('BOS','Logan International','42.362944','-71.006388',32),    
('CAI','Cairo International','30.121944','31.405556',18),  
('CDG','Charles de Gaulle International','49.009722','2.547778',7),
('CPH','Kastrup','55.617917','12.655972',4), 
('DAR','Julius Nyerere International Airport','-6.878110','39.202625',20),    
('DOH','Doha International Airport','25.273056','51.608056',19),   
('FAE','Vagar Airport','62.063628','-7.277218',13),
('FRA','Frankfurt am Main International','50.033306','8.570456',8),   
('GIG','Galeão - Antônio Carlos Jobim International','-22.809999','-43.250555',36), 
('GLA','Glasgow International Airport','55.871944','-4.433055',38),   
('HAN','Noi Bai International Airport','21.221192','105.807178',28),    
('HEL','Helsinki Vantaa','60.317222','24.963333',5),  
('HHN','Frankfurt-Hahn','49.948672','7.263892',8),
('HKG','Hong Kong International Airport','22.308889','113.914722',26),  
('IST','Istanbul Atatürk Airport','40.976111','28.813889',16),    
-- Breyt IATA code IZE er vitlaust EZE er rétta	https://en.wikipedia.org/wiki/Ministro_Pistarini_International_Airport
('EZE','Ministro Pistarini International Airport','-34.822221','-58.535832',41),
('JFK','John F. Kennedy Airport','40.639926','-73.778694',42),    
('JNB','OR Tambo International','-26.133693','28.242317',22),
('KEF','Keflavik Airport','63.985000','-22.605555',1),
('KIN','Norman Manley International','17.935667','-76.787499',35),   
('LAX','Los Angeles International','33.942625','-118.407802',33),    
('LHR','London Heathrow','51.477500','-0.461388',6),    
('LIS','Lisbon Portela Airport','38.781311','-9.135918',39),  
('MEX','Licenciado Benito Juarez International Airport','19.436303','-99.072096',37),   
('MXP','Malpensa International','45.630606','8.728111',14),    
('NBO','Jomo Kenyatta International','-1.319241','36.927775',21),  
('NRT','Narita International','35.765278','140.385556',29),   
('OSL','Gardermoen','60.193917','11.100361',2),   
('PEK','Beijing Capital International','40.073','116.598',26), 
('PRG','Prague Václav Havel Airport','50.100833','14.260000',40),
('STN','London Stansted','51.885000','0.235000',6),    
('SVO','Sheremetyevo International','(55.972500','37.413056',11),    
('SYD','Sydney Kingsford Smith International','-33.946110','151.177222',30),   
('THR','Mehrabad International Airport','35.689167','51.313416',23),
('TLV','Ben Gurion International','32.011389','34.886667',17),
('VIE','Vienna International','48.110278','16.569722',15),
('WAW','Warsaw Chopin Airport','52.165750','20.967122',12),  
('YYZ','Lester B. Pearson International','43.676667','-79.630555',34),   
('ZRH','Zürich Airport','47.464722','8.549167',9);
					-- Greece

-- Price Categories
insert into PriceCategories(categoryName,validFrom,validTo,minimumPrice,refundable,seatNumberRestrictions,classID)
values('FullEconomyScandinavia','2016-08-01','2016-09-30',35000,1,0,3);
insert into PriceCategories(categoryName,validFrom,validTo,minimumPrice,refundable,seatNumberRestrictions,classID)
values('BasicEconomyScandinavia','2016-08-01','2016-09-30',23000,0,0,3);
insert into PriceCategories(categoryName,validFrom,validTo,minimumPrice,refundable,seatNumberRestrictions,classID)
values('ReducedEconomyScandinavia','2016-08-01','2016-09-30',14700,0,15,3);
insert into PriceCategories(categoryName,validFrom,validTo,minimumPrice,refundable,seatNumberRestrictions,classID)
values('BusinessClassKEF-OSL','2016-08-01','2016-09-30',70000,1,0,2);
insert into PriceCategories(categoryName,validFrom,validTo,minimumPrice,refundable,seatNumberRestrictions,classID)
values('Football Alliance','2016-08-01','2016-12-31',12500,1,0,2);
insert into PriceCategories(categoryName,validFrom,validTo,minimumPrice,refundable,seatNumberRestrictions,classID)
values('Ociania special','2016-08-01','2016-12-31',98900,1,35,3);
insert into PriceCategories(categoryName,validFrom,validTo,minimumPrice,refundable,seatNumberRestrictions,classID)
values('Ociania supercomfort','2016-08-01','2016-12-31',197200,1,15,2);
insert into PriceCategories(categoryName,validFrom,validTo,minimumPrice,refundable,seatNumberRestrictions,classID)
values('Ociania complete','2016-08-01','2016-12-31',311000,1,8,1);

-- Prices
insert into Prices(amount,priceCategoryID)values(76000,4);
insert into Prices(amount,priceCategoryID)values(81000,4);
insert into Prices(amount,priceCategoryID)values(14700,3);
insert into Prices(amount,priceCategoryID)values(23000,2);
insert into Prices(amount,priceCategoryID)values(35000,1);
insert into Prices(amount,priceCategoryID)values(12500,5);
insert into Prices(amount,priceCategoryID)values(112000,6);
insert into Prices(amount,priceCategoryID)values(225000,7);
insert into Prices(amount,priceCategoryID)values(366000,8);

-- Flight Schedules
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA501','KEF','OSL',1748);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA502','OSL','KEF',1748);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA503','KEF','ARN',2136);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA504','ARN','KEF',2136);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA505','KEF','CPH',2137);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA506','CPH','KEF',2137);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA507','KEF','HEL',2418);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA508','HEL','KEF',2418);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA509','KEF','FAE',801);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA510','FAE','KEF',801);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA401','KEF','LHR',1890);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA402','LHR','KEF',1890);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA403','KEF','STN',1890);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA404','STN','KEF',1890);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA405','KEF','CDG',2234);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA406','CDG','KEF',2234);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA407','KEF','FRA',2379);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA408','FRA','KEF',2379);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA409','KEF','HHN',2379);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA410','HHN','KEF',2379);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA411','KEF','ZRH',2622);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA412','ZRH','KEF',2622);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA413','KEF','BCN',2968);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA414','BCN','KEF',2968);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA415','KEF','SVO',3311);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA416','SVO','KEF',3311);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA417','KEF','WAW',2774);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA418','WAW','KEF',2774);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA419','KEF','MXP',2827);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA420','MXP','KEF',2827);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA421','KEF','VIE',2891);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA422','VIE','KEF',2891);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA423','KEF','GLA',1339);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA424','GLA','KEF',1339);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA425','KEF','LIS',2951);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA426','LIS','KEF',2951);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA427','KEF','PRG',2640);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA428','PRG','KEF',2640);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA429','KEF','ATH',4171);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA430','ATH','KEF',4171);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA601','KEF','IST',4125);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA602','IST','KEF',4125);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA603','KEF','TLV',5242);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA604','TLV','KEF',5242);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA201','KEF','CAI',5276);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA202','CAI','KEF',5276);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA203','KEF','NBO',8695);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA204','NBO','KEF',8695);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA205','KEF','DAR',9366);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA206','DAR','KEF',9366);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA207','KEF','JNB',10950);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA208','JNB','KEF',10950);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA701','KEF','DOH',6704);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA702','DOH','KEF',6704);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA703','KEF','THR',5700);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA704','THR','KEF',5700);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA705','KEF','BGW',5585);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA706','BGW','KEF',5585);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA901','KEF','BOM',8354);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA902','BOM','KEF',8354);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA903','KEF','PEK',7892);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA904','PEK','KEF',7892);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA911','KEF','HKG',9700);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA912','HKG','KEF',9700);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA905','KEF','BKK',10107);	
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA906','BKK','KEF',10107);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA907','KEF','HAN',9549);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA908','HAN','KEF',9549);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA909','KEF','NRT',8808);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA910','NRT','KEF',8808);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA101','KEF','SYD',16635);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA102','SYD','KEF',16635);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA103','KEF','AKL',16801);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA104','AKL','KEF',16801);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA801','KEF','YYZ',4199);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA802','YYZ','KEF',4199);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA803','KEF','LAX',6940);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA804','LAX','KEF',6940);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA805','KEF','BOS',3917);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA806','BOS','KEF',3917);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA807','KEF','JFK',4207);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA808','JFK','KEF',4207);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA809','KEF','KIN',6519);	
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA810','KIN','KEF',6519);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA301','KEF','MEX',7460);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA302','MEX','KEF',7460);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA305','KEF','GIG',9867);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA306','GIG','KEF',9867);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA303','KEF','EZE',11405);
insert into FlightSchedules(flightNumber,originatingAirport,destinationAirport,distance)values('FA304','EZE','KEF',11405);

-- ScheduleWeekdays  Keflavik - Oslo - Keflavik
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(1,'08:10','FA501');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(2,'08:10','FA501');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(3,'08:10','FA501');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(4,'08:10','FA501');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(5,'08:10','FA501');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(6,'07:40','FA501');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(7,'07:40','FA501');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(1,'12:45','FA502');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(2,'12:45','FA502');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(3,'12:45','FA502');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(4,'12:45','FA502');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(5,'12:45','FA502');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(6,'12:15','FA502');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(7,'12:15','FA502');
-- ScheduleWeekdays  Keflavik - Sydney - Keflavik
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(1,'00:30','FA101');
insert into ScheduleWeekdays(weekday,departure,flightNumber)values(2,'01:30','FA102');

-- Flights
-- FA501	KEF - OSL	Maí 2014 
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-01','FA501','TF-CNA','2:45');		
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-02','FA501','TF-CNA','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-03','FA501','TF-BRA','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-04','FA501','TF-BRA','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-05','FA501','TF-HUX','2:45'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-06','FA501','TF-HUX','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-07','FA501','TF-HUX','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-08','FA501','TF-HUX','2:45');	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-09','FA501','TF-GSF','2:45'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-10','FA501','TF-BRA','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-11','FA501','TF-BRA','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-12','FA501','TF-LUS','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-13','FA501','TF-PHY','2:45'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-14','FA501','TF-LUS','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-15','FA501','TF-CNA','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-16','FA501','TF-CNA','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-17','FA501','TF-BRA','2:45'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-18','FA501','TF-BRA','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-19','FA501','TF-LUS','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-20','FA501','TF-LUS','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-21','FA501','TF-LUS','2:45'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-22','FA501','TF-PHY','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-23','FA501','TF-GSF','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-24','FA501','TF-BRA','2:45');	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-25','FA501','TF-BRA','2:45'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-26','FA501','TF-GSF','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-27','FA501','TF-CNA','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-28','FA501','TF-LUS','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-29','FA501','TF-CNA','2:45'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-30','FA501','TF-GSF','2:45');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-31','FA501','TF-BRA','2:45');
-- FA501	OSL - KEF	Maí 2014 
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-01','FA502','TF-CNA','2:55');			
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-02','FA502','TF-CNA','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-03','FA502','TF-BRA','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-04','FA502','TF-BRA','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-05','FA502','TF-HUX','2:55'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-06','FA502','TF-HUX','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-07','FA502','TF-HUX','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-08','FA502','TF-HUX','2:55');	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-09','FA502','TF-GSF','2:55'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-10','FA502','TF-BRA','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-11','FA502','TF-BRA','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-12','FA502','TF-LUS','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-13','FA502','TF-PHY','2:55'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-14','FA502','TF-LUS','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-15','FA502','TF-CNA','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-16','FA502','TF-CNA','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-17','FA502','TF-BRA','2:55'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-18','FA502','TF-BRA','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-19','FA502','TF-LUS','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-20','FA502','TF-LUS','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-21','FA502','TF-LUS','2:55'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-22','FA502','TF-PHY','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-23','FA502','TF-GSF','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-24','FA502','TF-BRA','2:55');	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-25','FA502','TF-BRA','2:55'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-26','FA502','TF-GSF','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-27','FA502','TF-CNA','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-28','FA502','TF-LUS','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-29','FA502','TF-CNA','2:55'); 	
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-30','FA502','TF-GSF','2:55');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-31','FA502','TF-BRA','2:55');
-- FA101	KEF - SYD	Maí	2014
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-26','FA101','TF-ASA','22:00');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-09-02','FA101','TF-ASA','22:00');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-09-09','FA101','TF-ASA','22:00');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-09-16','FA101','TF-ASA','22:00');
-- FA102	SYD - KEF	Maí	2014
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-08-27','FA102','TF-ASA','22:00');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-09-03','FA102','TF-ASA','22:00');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-09-10','FA102','TF-ASA','22:00');
insert into Flights(flightDate,flightNumber,aircraftID,flightTime)values('2016-09-17','FA102','TF-ASA','22:00');

-- Stopovers
insert into Stopovers(flightNumber,IATAcode,stopTime)values('FA101','PEK','01:30');
insert into Stopovers(flightNumber,IATAcode,stopTime)values('FA102','HKG','01:30');

