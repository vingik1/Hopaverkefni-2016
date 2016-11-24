-- heimildir http://gc.kls2.com/ fyrir hnitin
-- 	https://en.wikipedia.org/wiki/Ministro_Pistarini_International_Airport breyt IZE yfir í EZE
-- Viktor Ingi Kárason

create table Airports
(
	IATAcode char(3) not null,
	airportName varchar(75),
    Latitude varchar(10),
    Longitude varchar(10),
	cityID int,
	constraint airport_PK primary key(IATAcode),
	constraint airport_city_FK foreign key(cityID) references Cities(cityID)
);

-- IATACODE   Airport Name			Latitude 			Longitude, cityID
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