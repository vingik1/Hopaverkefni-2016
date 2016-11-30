call AddFlightGeneralStaff(Employee_Number char(9), new_flightCode int(11))
-- tekur við einkennis númer og flugkóða
-- bætir við almennan starfsmann svo sem T.d: hlaðmenn,ræsting,afgreiðsla(móttaka,innskráing)
-- dæmi call AddFlightGeneralStaff('DE7166873',9);

call UpdateCabinCrew(Employee_Number char(9), new_flightCode int(11));
-- tekur við einkennis númer og flugkóða
-- einkennis numerið er fyrir hvaða flugþjón og flugkóðinn er í hvað flug á að setja hann
-- dæmi call UpdateCabinCrew('IS4160916',9);


call CrewMemberHistory(Employee_Number char(9))
-- settur inn einkennis númer starfsmann og færð svo upp hvaða flug hann er skráður í og hefur verið skráður í 
-- dæmi call CrewMemberHistory('DE7129159');


call AddCabinCrew(CabinCrewInfo text)
-- þarf að geta tekið langan lista sem sem bætir við Flugþjón og Flugkóðan 
-- dæmi Call AddCabinCrew('DE7129159;9;DE8510054;9;IS1040873;9;IS1582229;9;');
-- sjá Hópaverkefni viðbætur við gagngrunn til að sjá virkni

call RemoveEmployee(Employee_Number char(9))
-- eyðir út starfsmann sem hefur verið rekinn eða hætta
-- dæmi call RemoveEmployee('DE7166873');


call AddEmployee(Employee_Number char(9),first_name varchar(55),last_name varchar(55),DOB date,Country varchar(35),Job_title varchar(55))
-- bætir við nýjum starfsmanni
-- dæmi call AddEmployee('DE7166873','Robert','Wolf','1962-09-05','Germany','Office Germany');

call FlightEmployeeInfo(flight_Number char(5),flight_date date)
-- sér alla starfsmenn í ákveðnu flugi 
-- dæmi call FlightEmployeeInfo('FA501','2016-08-26');
