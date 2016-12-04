create table aircraftInfo
(
	aircraftID char(6),
	manufacturer varchar(75),
    production_year year,
    engine_type varchar(75),
    aircraft_range decimal(7,2),
    constraint aircraftInfo_aircrafts_FK foreign key(aircraftID) references aircrafts(aircraftID)

);

insert into aircraftinfo(aircraftID,manufacturer,production_year,engine_type,aircraft_range)
values
('TF-ASA','Airbus','2005','four-engine',10400),
('TF-BRA','Airbus','1986','Twin-engine',6480),
('TF-BUS','Boeing Commercial Airplanes','1993','twin-engine',9704),
('TF-CHM','Boeing Commercial Airplanes','1981','twin-engine',7590),
('TF-CNA','Boeing Commercial Airplanes','1981','twin-engine',7590),
('TF-ELP','Airbus','1992','twin-engine',13430),
('TF-GRT','Boeing Commercial Airplanes','1981','twin-engine',7590),
('TF-GSF','Boeing Commercial Airplanes','1981','twin-engine',7590),
('TF-HUX','Airbus','1986','Twin-engine',6480),
('TF-LIN','Airbus','1986','Twin-engine',6480),
('TF-LOK','Boeing Commercial Airplanes','1981','twin-engine',7590),
('TF-LUR','Airbus','2010','twin-engine',15000),
('TF-LUS','Boeing Commercial Airplanes','1981','twin-engine',7590),
('TF-MUR','Airbus','1986','Twin-engine',6480),
('TF-NEI','Boeing Commercial Airplanes','2007','twin-engine',14800),
('TF-PHY','Boeing Commercial Airplanes','1981','twin-engine',7590),
('TF-RUM','Airbus','1986','Twin-engine',6480),
('TF-TUR','Airbus','2005','four-engine',10400),
('TF-WIN','Airbus','1986','Twin-engine',6480),
('TF-YES','Boeing Commercial Airplanes','1981','twin-engine',7590);


-- --------------------------- Búa til og setja inn values í employeesRegistration og crewRegistration ------------------------

create table employeesRegistration
(
	EmployeeNumber char(9),
    firstName varchar(55),
    lastName varchar(55),
    birthDate date,
    CountryOfOrigin varchar(35),
    JobTitle varchar(55),
    constraint employeesRegistration_FK primary key(EmployeeNumber)
);

create table crewRegistration
(
	EmployeeNumber char(9),
    flightCode int(11),
    constraint crewRegistration_EmployeeReg_FK foreign key(EmployeeNumber) references employeesRegistration(EmployeeNumber),
	constraint crewRegistration_flights_FK foreign key(flightCode) references flights(flightCode)
);

insert into employeesregistration(EmployeeNumber,firstName,lastName,birthDate,CountryOfOrigin,JobTitle)
values
('IS1967643','Sigurður','Hjaltason','1956-09-24','Iceland','CEO'),
('NO3541093','Marius','Solberg','1959-06-15','Norway','COB'),
('DE8711960','Alexander','Koch','1967-01-24','Germany','Training'),
('NO3806792','Kim','Kristensen','1950-01-19','Norway','Flight Attendant'),
('SE9971296','Otto','Eriksson','1972-06-29','Sweden','Captain'),
('DE4091170','Alexander','König','1972-07-12','Germany','Captain'),
('DE7438966','Heinrich','Werner','1985-11-25','Germany','Engineer'),
('DE5970378','Ernst','König','1969-10-17','Germany','Engineer'),
('US7599112','Eugene','Edwards','1954-08-03','United States','Engineer'),
('NO9863005','Frode','Bakke','1965-09-28','Norway','Flight Attendant'),
('US6786294','Jeffrey','Harris','1940-10-11','United States','First Officer'),
('SE1016265','Wilmer','Nilsson','1966-11-06','Sweden','Captain'),
('US3048812','Larry','Howard','1987-08-13','United States','Flight Attendant'),
('SE8969706','Olle','Johansson','1975-08-23','Sweden','First Officer'),
('DE4335275','Thomas','Wolf','1980-06-23','Germany','Captain'),
('NO6916885','Svein','Nilsen','1967-10-01','Norway','Captain'),
('NO5151029','Lars','Johnsen','1974-03-27','Norway','Flight Attendant'),
('US1058105','Arthur','Garcia','1973-04-06','United States','Captain'),
('IS3297520','Rúnar','Jóhannsson','1977-02-19','Iceland','Flight Attendant'),
('SE7263702','Viggo','Johansson','1968-02-21','Sweden','Captain'),
('IS6070448','Reynir','Andrason','1976-06-02','Iceland','Flight Attendant'),
('US1059020','John','Hill','1970-05-05','United States','Flight Attendant'),
('IS4195049','Axel','Geirsson','1983-06-28','Iceland','Flight Attendant'),
('IS6943391','Guðmundur','Bergmannsson','1976-11-17','Iceland','Engineer'),
('IS1058167','Guðmundur','Brynjarson','1975-07-14','Iceland','First Officer'),
('DE9510293','Matthias','Richter','1982-03-13','Germany','Dispatcher'),
('SE5921827','Adam','Andersson','1966-08-29','Sweden','Engineer'),
('SE8399384','Oscar','Johansson','1978-04-18','Sweden','First Officer'),
('DE9129813','Florian','Bergmann','1979-07-02','Germany','Quality control'),
('IS9375808','Guðni','Tómasson','1965-08-05','Iceland','Captain'),
('IS5623569','Kári','Haraldsson','1975-09-18','Iceland','Captain'),
('IS7561298','Páll','Birgisson','1985-11-19','Iceland','Technician'),
('IS3010789','Guðmundur','Pétursson','1971-01-07','Iceland','First Officer'),
('IS1582229','Róbert','Þórisson','1967-09-14','Iceland','Flight Attendant'),
('IS2109280','Ólafur','Gunnarsson','1984-03-19','Iceland','Flight Attendant'),
('IS5584466','Páll','Gunnlaugsson','1980-09-05','Iceland','Technician'),
('IS4160916','Gunnar','Guðjónsson','1964-07-11','Iceland','Flight Attendant'),
('IS1091517','Daði','Hafsteinsson','1986-01-09','Iceland','Flight Attendant'),
('IS3227268','Magnús','Hafsteinsson','1973-08-23','Iceland','Flight Attendant'),
('IS8734277','Tómas','Garðarsson','1969-08-20','Iceland','Training manager'),
('IS2619919','Elvar','Heiðarsson','1964-10-28','Iceland','First Officer'),
('IS9886282','Ómar','Garðarsson','1976-05-19','Iceland','First Officer'),
('IS1082027','Jón','Bergsson','1968-02-23','Iceland','Training'),
('IS5626040','Orri','Halldórsson','1975-11-20','Iceland','Flight Attendant'),
('IS4775977','Skúli','Þorsteinsson','1973-03-25','Iceland','Flight Attendant'),
('IS4027852','Sigurður','Ísaksson','1984-07-24','Iceland','Office'),
('S1088564','Aron','Pétursson','1975-01-28','Iceland','Flight Attendant'),
('IS6133268','Þórir','Ragnarsson','1979-10-10','Iceland','Dispatcher'),
('IS1490240','Jóhann','Darrason','1979-07-25','Iceland','Office'),
('IS5487187','Kári','Hilmarsson','1964-11-08','Iceland','Flight Attendant'),
('SE7812512','Leia','Holmqvist','1972-10-16','Sweden','Quality control'),
('SE3669145','Iris','Karlsson','1974-11-07','Sweden','First Officer'),
('US7768136','Sandra','Wright','1964-06-28','United States','Technician'),
('IS7886955','Anna','Freysdóttir','1974-08-03','Iceland','Flight Attendant'),
('IS1676650','Íris','Viktorsdóttir','1973-03-19','Iceland','Flight Attendant'),
('IS4558453','Lind','Atladóttir','1986-04-11','Iceland','Flight Attendant'),
('IS3695649','Sigrún','Leósdóttir','1981-11-01','Iceland','Flight Attendant'),
('IS5158995','Guðrún','Traustadóttir','1973-09-02','Iceland','Flight Attendant'),
('NO5898713','Aud','Johannessen','1971-06-20','Norway','Flight Attendant'),
('IS1040873','Þorbjörg','Arnarsdóttir','1974-04-01','Iceland','Flight Attendant'),
('DE8510054','Ingrid','Albrecht','1970-07-01','Germany','Flight Attendant'),
('US5110585','Nancy','Jones','1963-11-09','United States','Flight Attendant'),
('NO1036932','Else','Hansen','1978-08-17','Norway','First Officer'),
('SE6866923','Sigrid','Andersson','1964-03-13','Sweden','First Officer'),
('SE8668778','Nova','Isaksson','1963-10-21','Sweden','Captain'),
('DE8855918','Cornelia','Möller','1986-02-21','Germany','Marketing director'),
('IS8978154','Guðrún','Eiríksdóttir','1983-09-17','Iceland','Office'),
('NO9645914','Kristin','Larsen','1967-03-01','Norway','Captain'),
('SE3350252','Alice','Persson','1987-09-28','Sweden','Engineer'),
('IS4508672','Marta','Ómarsdóttir','1977-02-16','Iceland','First Officer'),
('IS5517359','Kolbrún','Hjartardóttir','1975-10-30','Iceland','Trainee'),
('IS3976809','Halldóra','Egilsdóttir','1961-01-15','Iceland','Flight Attendant'),
('IS6669362','Gunnhildur','Bragadóttir','1981-09-05','Iceland','Flight Attendant'),
('IS5883868','Mist','Pálsdóttir','1985-03-21','Iceland','Trainee'),
('IS9084848','Guðrún','Friðriksdóttir','1985-06-02','Iceland','First Officer'),
('IS1057667','Hrafnhildur','Aradóttir','1964-10-26','Iceland','Engineer'),
('IS8025519','Alda','Jóhannsdóttir','1971-01-10','Iceland','Dispatcher'),
('IS5902062','Þóra','Sveinsdóttir','1983-08-01','Iceland','Public Relations'),
('IS1020313','Halldóra','Þórisdóttir','1983-02-26','Iceland','Captain'),
('IS4698257','Anna','Atladóttir','1983-05-20','Iceland','Engineer'),
('IS1090279','Ósk','Hauksdóttir','1962-06-16','Iceland','Captain'),
('IS4338718','Guðrún','Fannarsdóttir','1965-06-02','Iceland','Engineer'),
('IS8722679','Kristjana','Brynjardóttir','1980-11-28','Iceland','Public Relations'),
('IS9989055','Guðlaug','Guðjónsdóttir','1974-03-20','Iceland','Human resources'),
('IS6423585','Tinna','Sindradóttir','1976-11-13','Iceland','Director of operations'),
('IS4287694','Erla','Júlíusdóttir','1968-02-21','Iceland','Captain'),
('IS2782657','Hanna','Vignisdóttir','1967-03-02','Iceland','Trainee'),
('IS5835590','Jóhanna','Hafsteinsdóttir','1974-02-11','Iceland','Treasurer'),
('SE5833049','Elvira','Hansson','1984-10-28','Sweden','Flight Attendant'),
('DE7129159','Hedwig','Schumacher','1968-09-21','Germany','Flight Attendant'),
('NO8054184','Jorunn','Nilsen','1979-09-22','Norway','Flight Attendant'),
('IS4340997','Inga','Steinarsdóttir','1973-10-23','Iceland','Technician'),
('US1041107','Melissa','White','1974-04-01','United States','Public Relations'),
('NO8395297','Emma','Kristoffersen','1987-01-12','Norway','First Officer'),
('NO6555544','Stine','Strand','1985-08-28','Norway','Ticket office'),
('DE4015928','Rita','Walter','1961-10-19','Germany','First Officer'),
('NO5300449','Ellen','Kristiansen','1961-10-16','Norway','First Officer'),
('DE1635425','Iris','Peters','1976-02-07','Germany','First Officer'),
('US4681485','Martha','Green','1966-02-04','United States','Training'),
('US5468380','Christopher','Allen','1974-09-18','United States','Captain'),
('NO9407671','Ole','Aune','1971-11-02','Norway','Captain'),
('US6734805','Joshua','Smith','1976-01-05','United States','Captain'),
('DE9711240','Norbert','Wagner','1977-05-04','Germany','Captain'),
('US5501283','Mark','Smith','1966-09-13','United States','Maintenance USA'),
('US1030569','Timothy', 'Andersson','1981-06-22','Canada','Maintenance Canada'),
('SE3260289','Love','Davis','1962-05-10','Sweden','Marketing'),
('IS1080685','Guðmundur','Arnórsson','1976-03-22','Iceland','Office Iceland'),
('SE1199800','Oscar','Karlsson','1964-07-18','Sweden','Office Sweden'),
('SE3327154','Erik','Nilsson','1981-03-21','Sweden','Office Sweden'),
('DE7166873','Robert','Wolf','1962-09-05','Germany','Office Germany'),
('SE6283026','Filip','Pettersson','1960-03-13','Sweden','First Officer'),
('SE6910133','Olle','Mattsson','1967-06-08','Sweden','First Officer'),
('SE6863731','Liam','Andersson','1971-11-03','Sweden','Captain'),
('IS7485797','Darri','Valsson','1984-05-18','Iceland','First Officer'),
('DE1016276','Patrick','Hahn','1987-09-01','Germany','First Officer');

insert into crewRegistration(EmployeeNumber,flightCode)
values
('IS4287694',26),
('IS3010789',26),
('NO3806792',26),
('NO9863005',26),
('IS2109280',26),
('IS4160916',26),
('IS1091517',26),
('NO5151029',26);

-- -------------------------------- endir -------------------------------------------------------------------------------

-- --------------------------------------- FligtEmployeeInfo --------------------------------------------------
-- sýnir starfsmenn í ákveðnu flugi

delimiter $$
drop procedure if exists  FlightEmployeeInfo $$
create procedure FlightEmployeeInfo(flight_Number char(5),flight_date date)
begin
	select employeesregistration.EmployeeNumber, firstName, lastName,birthDate,CountryOfOrigin,JobTitle 
	from employeesregistration
	inner join crewregistration on employeesregistration.EmployeeNumber = crewregistration.EmployeeNumber
	inner join flights on crewregistration.flightCode = flights.flightCode
	where flights.flightNumber = flight_Number and flights.flightDate = flight_date;
end $$
delimiter ;

call FlightEmployeeInfo('FA501','2016-08-26');
-- ----------------------------------- endir FlightEmployeeIfno -------------------------------------------

-- ----------------------------------- AddFlightDeck og Trigger --------------------------------------------
-- stored procedure sem bættir við Flugmönnum og Trigger sem passar upp á það að þeir séu captain eða flight officer
delimiter $$
drop procedure if exists  AddFlightDeck $$
create procedure AddFlightDeck(Employee_Number char(9),flight_Code int(11))
begin
	Insert Into crewregistration(EmployeeNumber,flightCode)
    VALUES(Employee_Number,flight_Code);
end $$
delimiter ;


drop trigger if exists check_Jobtitle_Capt_or_Officer;
delimiter $$
create trigger check_Jobtitle_Capt_or_Officer
before insert on crewregistration
for each row 
begin
	declare msg varchar(255);
    declare Job_Title varchar(55);
    select employeesregistration.JobTitle into Job_Title
    from employeesregistration
    where employeesregistration.EmployeeNumber = new.EmployeeNumber;
    
	if(Job_Title not like 'First Officer') then 
			set msg = 'Employee must be Captain or First Officer to fly the Airplane';
            signal sqlstate '45000' set message_text = msg;
    end if;
end $$

delimiter ;

drop trigger if exists check_Jobtitle_Capt;
delimiter $$
create trigger check_Jobtitle_Capt_or_Officer
before insert on crewregistration
for each row 
begin
	declare msg varchar(255);
    declare Job_Title varchar(55);
    select employeesregistration.JobTitle into Job_Title
    from employeesregistration
    where employeesregistration.EmployeeNumber = new.EmployeeNumber;
    
	if(Job_Title not like 'Captain') then 
			set msg = 'Employee must be Captain or First Officer to fly the Airplane';
            signal sqlstate '45000' set message_text = msg;
    end if;
end $$

delimiter ;

call AddFlightDeck('IS4287694',26);

-- ----------------------------- Endir AddflightDeck og Trigger -----------------------------
-- ----------------------------------- AddCabinCrew og Trigger --------------------------------------------
-- stored procedure sem bættir við flugþjónum og Trigger sem passar upp á það að þeir séu Flight attendant

delimiter $$
drop procedure if exists  AddCabinCrew $$
create procedure AddCabinCrew(CabinCrewInfo text)
begin
	declare Employee_Number char(9);
	declare flight_Code int;

	declare CabinCrewStr int;
	set CabinCrewStr = char_length(CabinCrewInfo);

	while (CabinCrewStr > 0) do
		-- rippa fremsta hlutanum í strengnum og set í Employee_Number breytuna
		set Employee_Number = substring_index(CabinCrewInfo,';',1);
        -- færi mig til í strengnum
		set CabinCrewInfo = substring(CabinCrewInfo,locate(';',CabinCrewInfo) + 1);
		
        -- rippa næsta hlutann í strengnum og set í flightCode breytuna
		set flight_Code = substring_index(CabinCrewInfo,';',1);
        -- færi mig til í strengnum
		set CabinCrewInfo = substring(CabinCrewInfo,locate(';',CabinCrewInfo) + 1);
        
        
		Insert Into crewregistration(EmployeeNumber,flightCode)
		VALUES(Employee_Number,flight_Code);
        -- lengdin á strengnum sett í breytuna strLength áður en farið er í næstu umferð.
		set CabinCrewStr = char_length(CabinCrewInfo);
	end while;
end $$
delimiter ;

drop trigger if exists check_Jobtitle_FlightAttendant;
delimiter $$
create trigger check_Jobtitle_FlightAttendant
before insert on crewregistration
for each row 
begin
	declare msg varchar(255);
    declare Job_Title varchar(55);
    select employeesregistration.JobTitle into Job_Title
    from employeesregistration
    where employeesregistration.EmployeeNumber = new.EmployeeNumber;
    
	if(Job_Title not like 'Flight Attendant') then 
			set msg = 'Employee must be Flight Attendant';
            signal sqlstate '45000' set message_text = msg;   
    end if;
end $$

delimiter ;

Call AddCabinCrew('DE7129159;9;DE8510054;9;IS1040873;9;IS1582229;9;');
-- -------------------------------- endir AddCabinCrew og Trigger --------------------------------------------

-- -------------------------------- CrewMemberHistory --------------------------------------------------------
-- skoðar í hvað flug sem ákveðinn starfsmaður hefur unnið í
delimiter $$
drop procedure if exists CrewMemberHistory $$
create procedure CrewMemberHistory(Employee_Number char(9))
begin
	Select flights.flightNumber,flightschedules.originatingAirport,flightschedules.destinationAirport,employeesregistration.JobTitle
    from flightschedules
    inner join flights on flightschedules.flightNumber = flights.flightNumber
    inner join crewregistration on flights.flightCode = crewregistration.flightCode
    inner join employeesregistration on crewregistration.EmployeeNumber = employeesregistration.EmployeeNumber
    where employeesregistration.EmployeeNumber = Employee_Number;
end $$
delimiter ;

call CrewMemberHistory('DE7129159');
-- --------------------------- endir CrewMemberHistory --------------------------------------------------------

-- --------------------------------- UpdateCabinCrew ----------------------------------------------------------
delimiter $$
drop procedure if exists UpdateCabinCrew $$
create procedure UpdateCabinCrew(Employee_Number char(9), new_flightCode int(11))
begin
	update crewregistration 
    set crewregistration.flightCode = new_flightCode
    where crewregistration.EmployeeNumber = Employee_Number;
end $$
delimiter ;

call UpdateCabinCrew('IS4160916',9);
-- ------------------------------- Endir UpdateCabinCrew ------------------------------------------------------

-- ------------------------------- AddFlightGeneralStaff ----------------------------------------------------
-- Stored procedure sem á að bæta við almenna starfsmenn við í flug t.d:  hlaðmenn,ræsting,afgreiðsla(móttaka,innskráing)

delimiter $$
drop procedure if exists AddFlightGeneralStaff $$
create procedure AddFlightGeneralStaff(Employee_Number char(9), new_flightCode int(11))
begin
		Insert Into crewregistration(EmployeeNumber,flightCode)
		VALUES(Employee_Number,flight_Code);
end $$
delimiter ;
-- ------------------------------ endir AddFlightGeneralStaff --------------------------------------------------

-- ------------------------------ SeatingArrangement -----------------------------------------------------------
-- setur sætaskipan í ákveðinni flugvél á XML formati
delimiter $$
drop procedure if exists SeatingArrangement $$
create procedure SeatingArrangement(aircraft_ID char(6))
begin
	declare Class_Name varchar(25);
    declare row_number tinyint(4);
    declare seat_number char(1);
    declare aircraft_deck char(5);
    declare aircraft_type varchar(35);
    
    declare xml_string text;
    
    declare done int default false;
    
 -- concat(aircraftseats.rowNumber,aircraftseats.seatNumber) as 'Seat Number'
	declare SeatingCursor cursor for
	select classes.className,aircraftseats.rowNumber,aircraftseats.seatNumber,aircraftseats.deck
    from classes
    inner join aircraftseats on classes.classID = aircraftseats.classID
    inner join aircrafts on aircraftseats.aircraftID = aircrafts.aircraftID
    where aircrafts.aircraftID = aircraft_ID;
    
    declare continue handler for not found set done = true;
    
    set xml_string = '<Aircraft>';
    
    select aircrafts.aircraftType into aircraft_type
    from aircrafts
    where aircrafts.aircraftID = aircraft_ID;
    
    open SeatingCursor;
    if (aircraft_type like 'Airbus A380') then
    read_loop: loop
		fetch SeatingCursor into Class_Name,row_number,seat_number,aircraft_deck;
        if done then
			leave read_loop;
		end if;
			set xml_string = concat(xml_string,'<SeatingArrangement><Name>',Class_Name,'</Name><Seat>',concat(row_number,seat_number),'</Seat><deck>',aircraft_deck,'</deck></SeatingArrangement>');
    end loop;
     end if;
     
     
    if (aircraft_type not like 'Airbus A380') then
    read_loop: loop
		fetch SeatingCursor into Class_Name,row_number,seat_number,aircraft_deck;
        if done then
			leave read_loop;
		end if;    
     set xml_string = concat(xml_string,'<SeatingArrangement><Name>',Class_Name,'</Name><Seat>',concat(row_number,seat_number),'</Seat></SeatingArrangement>');
    end loop;
     end if;    
    
    set xml_string = concat(xml_string,'</Aircraft>');
    
    close SeatingCursor;
    select xml_string;
end $$
delimiter ;

-- Airbus A380
call SeatingArrangement('TF-TUR');
-- ekki Airbus A380
call SeatingArrangement('TF-RUM');

-- ------------------------------ endir SeatingArrangement ------------------------------------------------------


-- Stored Procedure fyrir Steinar

-- ------------------------------- PassengerPaymentBooking ------------------------------------------------
-- borgunarferlið fyrir bókun á flugi

delimiter $$
drop procedure if exists PassengerPaymentBooking $$
create procedure PassengerPaymentBooking(payment_type bit,
card_issued_by varchar(35),
cardholders_name varchar(55),
class_id int,
return_flight tinyint)
begin
	insert into Bookings(timeOfBooking,paymentType,cardIssuedBy,cardholdersName,classID,returnFLight) 
	values(curdate(),payment_type, card_issued_by,cardholders_name,class_id,return_flight);
end $$
delimiter ;

call PassengerPaymentBooking(1,'VISA','Barry manalo',3,1);
-- ------------------------------- endir PassengerPaymentBooking ------------------------------------------------

-- -------------------------------- FlightBooking ---------------------------------------------------------------
-- bókar í flugið 
delimiter $$
drop procedure if exists FlightBooking $$
create procedure FlightBooking(booking_number int,
 flight_Code int,
 flight_order tinyint)
begin
		insert into bookedflights(bookingNumber,flightCode,flightOrder) 
			values(booking_number, flight_Code, flight_order);
end $$
delimiter ;

call FlightBooking(292,72,1);
-- -------------------------------- endir FlightBooking --------------------------------------------------------

-- -------------------------------- PassengerBooking ----------------------------------------------------------
-- býr til farþegan í flug
delimiter $$
drop procedure if exists PassengerBooking $$
create procedure PassengerBooking(passenger_id varchar(35),
passenger_name varchar(55),
seat_id int ,
price_id int,
booked_FlightID int)
begin
	insert into Passengers(personID,personName,seatID,priceID,bookedFlightID) 
		values(passenger_id,passenger_name,seat_id,price_id,booked_FlightID);
end $$
delimiter ;

call PassengerBooking('SE19647389','Larry Finley',1137,6,294);
-- -------------------------------- endir PassengerBooking ----------------------------------------------------

-- views fyrir heimasíðuna hjá Steinari
-- -------------------------------- Incomingflights ---------------------------------------------------------
-- sér flug sem eru að fara á að koma á sama degi

drop view if exists IncomingFlights;
create view IncomingFlights
as
	select distinct flights.flightDate, flightschedules.flightNumber, airports.airportName, cities.cityName
    from flights
    inner join flightschedules on flights.flightNumber = flightschedules.flightNumber
    inner join airports on flightschedules.originatingAirport = airports.IATAcode
    inner join cities on airports.cityID = cities.cityID
    where flights.flightDate = curdate();
    
    select * from IncomingFlights;
-- -------------------------------- endir Incomingflights ------------------------------------------------

-- -------------------------------- Departure ----------------------------------------------------
-- sér flug sem eru að fara á sama degi
    drop view if exists Departure;
create view DepartureFlight
as
	select distinct flights.flightDate, flightschedules.flightNumber, airports.airportName, cities.cityName,scheduleweekdays.departure
    from scheduleweekdays
    inner join flightschedules on scheduleweekdays.flightNumber = flightschedules.flightNumber
    inner join flights on flightschedules.flightNumber = flights.flightNumber
    inner join airports on flightschedules.destinationAirport = airports.IATAcode
    inner join cities on airports.cityID = cities.cityID
    where flights.flightDate = curdate();
    
    select * from DepartureFlight;
   
  -- -------------------------------  endir departure -----------------------------------------------
  
  -- ------------------------------- Flight_insert --------------------------------------------------
  -- skoðar hvort dagsetningar(flightDate) falli á áðurnefnda vikudaga svo insert-ar í flights tofluna
    delimiter $$
drop procedure if exists Flight_Insert $$
create procedure Flight_Insert(flight_Number char(5),flight_date date,aircraft_ID char(6),flight_Time time)
begin
	declare Check_weekday int(11);
    declare Week_day int(11);
    declare msg varchar(255);
    
    SELECT DAYOFWEEK(flight_date) into Check_weekday;
    
    
	select weekdays.weekdayNumber into Week_day
    from weekdays
    where DAYOFWEEK('2016-08-26') = weekdayNumber;
    
    if (Check_weekday like Week_day) then
		insert into flights(flightDate,flightNumber,aircraftID,flightTime)values(flight_Number,flight_date,aircraft_ID,flight_Time);
    end if;
    
    if (Check_weekday like Week_day) then
		set msg = 'Cannot Create flight';
		signal sqlstate '45000' set message_text = msg;
	end if;
    
end $$
delimiter ;

call Flight_Insert('FA501','2017-01-01','TF-GSF','21:15');
-- ------------------------------------- endir Flight_insert ----------------------------------------------------------

-- -------------------------------------- viðbætur í Airports ----------------------------------------------------------
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
