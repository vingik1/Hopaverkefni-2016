-- ==================================*** CREATE DATABASE SECTION ***==================================
drop database if exists 3006962289_FreshAir;
create database 3006962289_FreshAir;
use 3006962289_FreshAir;

-- ====================================*** CREATE TABLE SECTION ***===================================
create table Countries
(
	alpha336612 char(2) not null,
    alpha336613 char(3) not null,
    alpha31662 char(13) not null,
    numeric33661 int not null,
    countryName varchar(75) not null,
    constraint countrycodes_PK primary key(alpha336612)
);

create table Cities
(
    cityID int not null auto_increment,
    cityName varchar(35) not null,
	countryCode char(2),
    constraint city_PK primary key(cityID),
	constraint city_countries_FK foreign key(countryCode) references Countries(alpha336612)
);

create table Airports
(
	IATAcode char(3) not null,
	airportName varchar(75),
	cityID int,
	constraint airport_PK primary key(IATAcode),
	constraint airport_city_FK foreign key(cityID) references Cities(cityID)
);

create table FlightSchedules
(
    flightNumber char(5) not null,
    originatingAirport char(3) not null,
    destinationAirport char(3) not null,
	distance decimal(7,2),
    constraint flightschedule_PK primary key(flightNumber),
    constraint origin_city_FK foreign key(originatingAirport) references Airports(IATAcode),
    constraint destination_city_FK foreign key(destinationAirport) references Airports(IATAcode)
);

create table Weekdays
(
	weekdayNumber int not null,
	weekdayName varchar(25),
	constraint weekday_PK primary key(weekdayNumber),
	constraint dayname_UQ unique(weekdayName)
);

create table ScheduleWeekdays
(
	weekday int not null,
	departure time not null,
	flightNumber char(5) not null,
	constraint scheduleweekdays_PK primary key(weekday,flightNumber),
	constraint flightnumber_flightschedule_FK foreign key(flightNumber) references FlightSchedules(flightNumber),
	constraint flightnumber_weekdays_FK foreign key(weekday) references Weekdays(weekdayNumber)
);

create table Stopovers
(
	flightNumber char(5) not null,
	IATAcode char(3) not null,
	stopTime time,
	constraint stopover_PK primary key(flightNumber,IATAcode),
	constraint stopover_flightschedule_FK foreign key(flightNumber) references FlightSchedules(flightNumber),
	constraint stopover_airport_FK foreign key(IATAcode) references Airports(IATAcode)
);

create table Aircrafts
(
    aircraftID char(6),
    aircraftType varchar(35),
    maxNumberOfPassangers smallint,
    enteredService date,
	aircraftName varchar(55),
    constraint Aircraft_FK primary key(aircraftID)
);

create table Flights
(
    flightCode int not null auto_increment,
    flightDate date not null,
    flightNumber char(5) not null,
    aircraftID char(6) not null,
	flightTime time,
    constraint flightPK primary key(flightCode),
    constraint flight_data_UQ unique(flightDate,flightNumber,aircraftID),
    constraint flight_flightschedule_FK foreign key(flightNumber) references FlightSchedules(flightNumber),
    constraint flight_aircraft_FK foreign key(aircraftID) references Aircrafts(aircraftID)
);

create table Classes
(
	classID int not null auto_increment,
	className varchar(25),
	constraint class_PK primary key(classID)
);

create table AircraftSeats
(
    seatID int not null auto_increment,
    rowNumber tinyint not null,
    seatNumber char(1) not null,
    seatPlacement varchar(15) null,
	deck char(5),
	classID int not null,
    aircraftID char(6) not null,
    constraint seat_PK primary key(seatID),
	constraint seat_class_FK foreign key(classID) references Classes(classID),
    constraint seat_plane_FK foreign key(aircraftID) references Aircrafts(aircraftID)
);

create table Bookings
(
    bookingNumber int not null auto_increment,
    timeOfBooking datetime not null,
    paymentType bit,	-- 1: credit card.	0: debet card(cash)
    cardIssuedBy varchar(35),
    cardholdersName varchar(55),
	classID int default 3,
	returnFLight boolean default true,
    constraint booking_PK primary key(bookingNumber),
	constraint booking_class_FK foreign key(classID) references Classes(classID)
);

create table BookedFlights
(
	bookedFlightID int auto_increment,
	bookingNumber int not null,
    flightCode int not null,
    flightOrder tinyint default 1,
    constraint bookedflight_PK primary key(bookedFlightID),
    constraint bookedflight_booking_FK foreign key(bookingNumber) references Bookings(bookingNumber),
    constraint bookedflight_flight_FK foreign key(flightCode) references Flights(flightCode),
    constraint bookingnumber_flightcode_UQ unique(bookingNumber,flightCode)
);

create table PriceCategories
(
	categoryID int not null auto_increment,
	categoryName varchar(35),
	validFrom date,
	validTo date,
	minimumPrice int,
	refundable boolean,
	seatNumberRestrictions int,
	classID int,
	constraint pricecategory_PK primary key(categoryID),
	constraint category_class_FK foreign key(classID) references Classes(classID)
);

create table Prices
(
	priceID int not null auto_increment,
	amount int not null,
	priceCategoryID int not null,
	constraint price_PK primary key(priceID),
	constraint price_pricecategory_FK foreign key(priceCategoryID) references PriceCategories(categoryID)
);

create table Passengers
(
    seatingID int not null auto_increment,
    personID varchar(35) not null,
    personName varchar(75) not null,
    priceID int,
    seatID int not null,
    bookedFlightID int not null,
    constraint seating_PK primary key(seatingID),
	constraint seting_price_FK foreign key(priceID) references Prices(priceID),
    constraint seating_booking_FK foreign key(bookedFlightID) references BookedFlights(bookedFlightID),
    constraint seating_seat_FK foreign key(seatID) references AircraftSeats(seatID)
);

