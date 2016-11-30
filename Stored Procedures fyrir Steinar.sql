-- höfundur: Viktor Ingi Kárason

-- verður að að fara í þessari röð

-- 1. 
call PassengerPaymentBooking(payment_type bit,card_issued_by varchar(35),cardholders_name varchar(55),class_id int,return_flight tinyint)
-- dæmi call PassengerPaymentBooking(1,'VISA','Peter Griffin',3,1);


-- 2. 
call FlightBooking(booking_number int,flight_Code int,flight_order tinyint)

-- dæmi call FlightBooking(293,72,1);


-- 3. 
call PassengerBooking(passenger_id varchar(35),passenger_name varchar(55),price_id int,booked_FlightID int)
-- dæmi call PassengerBooking('SE19647389','Larry Finley',1137,6,295);


-- sem myndir setja upp dæminn svona:

call PassengerPaymentBooking(1,'VISA','Peter Griffin',3,1);
call FlightBooking(293,72,1);
call PassengerBooking('SE19647389','Larry Finley',1137,6,295);

-- ef ekki gert í réttri röð þá virkar þetta ekki