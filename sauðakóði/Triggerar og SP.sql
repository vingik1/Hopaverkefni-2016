drop trigger if exists check_Jobtitle;
delimiter $$
create trigger check_Jobtitle
before insert on crewregistration
for each row 
begin
	declare msg varchar(255);
    declare Job_Title varchar(55);
    select employeesregistration.JobTitle into Job_Title
    from employeesregistration
    inner join crewregistration on employeesregistration.EmployeeNumber = crewregistration.EmployeeNumber
    where crewregistration.flightCode = new.flightCode;
    
     set msg = 'Employee must be Captain or First Officer to fly the Airplane';
     declare continue handler for not found set done = true;
    
	else if(Job_Title = 'First Officer') then 
			leave case;
		else
			signal sqlstate '45000' set message_text = msg;
    end case;
    /*if(Job_Title = 'Captain' or Job_Title = 'First Officer') then
		set msg = concat('Employee must be Captain or First Officer to fly the Airplane');
        signal sqlstate '45000' set message_text = msg;
    end if;*/
end $$

delimiter ;

delimiter $$
drop procedure if exists SeatingArrangement $$
create procedure SeatingArrangement(aircraft_ID char(6))
begin
	declare Class_Name varchar(25);
    declare row_number tinyint(4);
    declare seat_number char(1);
    declare aircraft_deck char(5);
    
    declare xml_string text;
    
    declare done int default false;
    
    select aircraftType
    from aircrafts
    where aircrafts.aircraftID = aircraft_ID;
 -- concat(aircraftseats.rowNumber,aircraftseats.seatNumber) as 'Seat Number'
	declare SeatingCursor cursor for
	select classes.className,aircraftseats.rowNumber,aircraftseats.seatNumber,aircraftseats.deck
    from classes
    inner join aircraftseats on classes.classID = aircraftseats.classID
    inner join aircrafts on aircraftseats.aircraftID = aircrafts.aircraftID
    where aircrafts.aircraftID = aircraft_ID;
    
    declare continue handler for not found set done = true;
    
    set xml_string = '<Aircraft>';
    
    open SeatingCursor;
    
    read_loop: loop
		fetch SeatingCursor into Class_Name,row_number,seat_number,aircraft_deck;
        if done then
			leave read_loop;
		end if;
        if 
			set xml_string = concat(xml_string,'<SeatingArrangement><Name>',Class_Name,'</Name><Seat>',concat(row_number,seat_number),'</Seat><deck>',aircraft_deck,'</deck></SeatingArrangement>');
		end if;
    end loop;
    
    set xml_string = concat(xml_string,'</Aircraft>');
    
    close SeatingCursor;
    select xml_string;
end $$
delimiter ;


drop procedure if exists  AddFlightDeck2 $$
create procedure AddFlightDeck2(Employee_Number char(9),flight_Code int(11))
begin
	declare FlyerJob varchar(55);
    declare msg varchar(255);

	select employeesregistration.JobTitle into FlyerJob from employeesregistration
    inner join crewregistration on employeesregistration.EmployeeNumber = crewregistration.EmployeeNumber
    where crewregistration.EmployeeNumber = Employee_Number
    and crewregistration.flightCode = flightCode;
    
    set msg = 'Employee must be Captain or First Officer to fly the Airplane';
    
    case
		when (FlyerJob = 'First Officer') then 
    		Insert Into crewregistration(EmployeeNumber,flightCode)
			VALUES(Employee_Number,flight_Code);
    
		when FlyerJob = 'First Officer' then 
			Insert Into crewregistration(EmployeeNumber,flightCode)
			VALUES(Employee_Number,flight_Code);
		else
			signal sqlstate '45000' set message_text = msg;
    end case;
    
end $$
delimiter ;