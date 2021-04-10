
CREATE TABLE `Passenger` (
`Passenger_ID` INT NOT NULL AUTO_INCREMENT,
`First_Name` VARCHAR(20) NOT NULL,
`Last_Name` VARCHAR(20) NOT NULL,
`Address` VARCHAR(50) NOT NULL,
`Phone_No.` VARCHAR(10) NOT NULL,
`Age` INT NOT NULL,
`Passenger_Type` VARCHAR(20) NOT NULL,
PRIMARY KEY (`Passenger_ID`));
   
INSERT INTO `Passenger` VALUES(1,'Abhishek', 'Singh', 'Delhi', '9821343423', 20, 'Excursion');
INSERT INTO `Passenger` VALUES(2,'Bhuvan', 'Jha', 'Banglore', '9384723972', 40, 'Business');
INSERT INTO `Passenger` VALUES(3,'Rohan', 'Malik', 'Mumbai', '9821343423', 20, 'Excursion');
INSERT INTO `Passenger` VALUES(4,'Hitik', 'Kumar', 'Delhi', '9384723972', 30, 'Business');
INSERT INTO `Passenger` VALUES(5,'Kumar', 'Apurva', 'Delhi', '9821343423', 18, 'Excursion');
INSERT INTO `Passenger` VALUES(6,'Jatin', 'Papreja', 'Hyderabad', '9384723972', 32, 'Business');
INSERT INTO `Passenger` VALUES(7,'Kartikay', 'Bagla', 'London', '9821343423', 15, 'Excursion');
INSERT INTO `Passenger` VALUES(8,'Kunal', 'Sharma', 'New York', '9384723972', 25, 'Business');
INSERT INTO `Passenger` VALUES(9,'Inder', 'Khatri', 'Guwahati', '9821343423', 15, 'Excursion');
INSERT INTO `Passenger` VALUES(10,'Maddy', 'Mayank', 'Chennai', '9384723972', 34, 'Business');




CREATE TABLE `Route` (
 `Route_No.` INT NOT NULL AUTO_INCREMENT,
 `Source` VARCHAR(20) NOT NULL,
 `Destination` VARCHAR(20) NOT NULL,
 `Route_Type` VARCHAR(20) NOT NULL,
 `Passenger_Type` VARCHAR(20) NOT NULL,
 `Time_of_day` TIME NOT NULL,
PRIMARY KEY (`Route_No.`));

INSERT INTO `Route` VALUES(1,'Banglore', 'Delhi', 'Domestic', 'Excursion', '09:30:00');
INSERT INTO `Route` VALUES(2,'Delhi', 'Berlin', 'Continental', 'Business', '19:30:00');
INSERT INTO `Route` VALUES(3,'Bangalore', 'Kolkata', 'Domestic', 'Excursion', '20:30:00');
INSERT INTO `Route` VALUES(4,'Sydney', 'Delhi', 'Continental', 'Business', '15:30:00');
INSERT INTO `Route` VALUES(5,'Bangalore', 'Delhi', 'Domestic', 'Business', '09:00:00');
INSERT INTO `Route` VALUES(6,'London', 'Delhi', 'Continental', 'Excursion', '04:30:00');
INSERT INTO `Route` VALUES(7,'Guwahti', 'Pune', 'Domestic', 'Business', '09:45:00');
INSERT INTO `Route` VALUES(8,'New York', 'Mumbai', 'Continental', 'Excursion', '03:15:00');
INSERT INTO `Route` VALUES(9,'Delhi', 'Hyderabad', 'Domestic', 'Excursion', '21:35:00');
INSERT INTO `Route` VALUES(10,'Chennai', 'Delhi', 'Continental', 'Excursion', '09:40:00');


CREATE TABLE `Itinerary` (
 `Source` VARCHAR(20) NOT NULL,
 `Destination` VARCHAR(20) NOT NULL,
 `Ticket_No` INT NOT NULL,
 `Flight_No` INT NOT NULL,
 `Leg_No` INT NOT NULL,
 `Flight_Date` DATE NOT NULL, 
 `Fare_Type` VARCHAR(20) NOT NULL
 );
 
INSERT INTO `Itinerary` VALUES('Bangalore', 'Delhi', 1, 1, 1, '2021-02-05', 'Economy');
INSERT INTO `Itinerary` VALUES('Delhi', 'Berlin', 2, 2, 3, '2021-03-25', 'Business');
INSERT INTO `Itinerary` VALUES('Bangalore', 'Kolkata', 3, 3, 1, '2021-04-10', 'Economy');
INSERT INTO `Itinerary` VALUES('Sydney', 'Delhi', 4, 4, 2, '2021-05-30', 'Business');
INSERT INTO `Itinerary` VALUES('Bangalore', 'Delhi', 5, 5, 1, '2021-06-15', 'Economy' );
INSERT INTO `Itinerary` VALUES('London', 'Delhi', 6, 6, 2, '2021-07-05', 'Business');
INSERT INTO `Itinerary` VALUES('Guwahati', 'Pune', 7, 7, 1, '2021-08-03', 'Economy');
INSERT INTO `Itinerary` VALUES('New York', 'Mumbai', 8, 8, 30, '2021-09-02', 'Business');
INSERT INTO `Itinerary` VALUES('Delhi', 'Hyderabad', 9, 9, 1, '2021-10-02', 'Economy');
INSERT INTO `Itinerary` VALUES('Chennai', 'Delhi', 10, 10, 1, '2021-11-28', 'Business');
 
 
 CREATE TABLE `Airport` (
 `Airport_No` INT NOT NULL,
 `Airport_Name` VARCHAR(20) NOT NULL,
 `Location` VARCHAR(50) NOT NULL,
 `Capacity` INT NOT NULL,
 PRIMARY KEY (`Airport_No`));

INSERT INTO `Airport` VALUES(1, 'BNGL', 'Bangalore', 100);
INSERT INTO `Airport` VALUES(2, 'DEL', 'Delhi', 300);
INSERT INTO `Airport` VALUES(3, 'BRL', 'Berlin', 300);
INSERT INTO `Airport` VALUES(4, 'PUN', 'Pune', 100);
INSERT INTO `Airport` VALUES(5, 'NYK', 'New York', 450);
INSERT INTO `Airport` VALUES(6, 'HDB', 'Hyderabad', 200);
INSERT INTO `Airport` VALUES(7, 'MUM', 'Mumbai', 250);
INSERT INTO `Airport` VALUES(8, 'CHN', 'Chennai', 80);
INSERT INTO `Airport` VALUES(9, 'LND', 'London', 350);
INSERT INTO `Airport` VALUES(10, 'GWH', 'Guwahati', 60);
INSERT INTO `Airport` VALUES(11, 'SYD', 'Sydney', 250);
INSERT INTO `Airport` VALUES(12, 'KOL', 'Kolkata', 150);


CREATE TABLE `Aircraft` (
`Aircraft_ID` INT NOT NULL AUTO_INCREMENT,
`Aircraft_Type` VARCHAR(20) NOT NULL,
`Capacity` INT NOT NULL,
PRIMARY KEY (`Aircraft_ID`));
 
INSERT INTO `Aircraft` values (1, 'Airbus A318', 150);
INSERT INTO `Aircraft` values (2, 'Boeing 737', 100);
INSERT INTO `Aircraft` values (3, 'Bell 044', 200);
INSERT INTO `Aircraft` values (4, 'Boeing 737', 150);
INSERT INTO `Aircraft` values (5, 'Bell 044', 200);
INSERT INTO `Aircraft` values (6, 'Airbus A318', 150);
INSERT INTO `Aircraft` values (7, 'Airbus A318', 150);
INSERT INTO `Aircraft` values (8, 'Bell 044', 200);
INSERT INTO `Aircraft` values (9, 'Bell 044', 200);
INSERT INTO `Aircraft` values (10, 'Boeing 737', 150);

 CREATE TABLE `Flight` (
 `Flight_No.` INT NOT NULL AUTO_INCREMENT,
 `Source` VARCHAR(20) NOT NULL,
 `Destination` VARCHAR(20) NOT NULL,
 `Arrival_Time` TIME NOT NULL,
 `Departure_Time` TIME NOT NULL,
 `Time_of_day` TIME NOT NULL,
 `Aircraft_Type` VARCHAR(20) NOT NULL,
 `Route_No` INT NOT NULL,
 `No_of_Service` INT NOT NULL,
 PRIMARY KEY (`Flight_No.`));
 

INSERT INTO `Flight` VALUES(1, 'Banglore', 'Delhi', '09:15:00', '15:30:00', '09:15:00', 'Boeing 737', 1, 1);
INSERT INTO `Flight` VALUES(2, 'Delhi', 'Berlin', '22:15:00', '3:30:00', '22:15:00', 'Airbus A318', 2, 2);
INSERT INTO `Flight` VALUES(3, 'Bangalore', 'Kolkata', '15:15:00', '09:30:00', '15:15:00', 'Boeing 737', 3, 4);
INSERT INTO `Flight` VALUES(4, 'Sydney', 'Delhi', '17:45:00', '15:30:00', '17:45:00', 'Bell 044', 4, 3);
INSERT INTO `Flight` VALUES(5, 'Bangalore', 'Delhi', '09:15:00', '12:30:00', '09:15:00', 'Boeing 737', 5, 2);
INSERT INTO `Flight` VALUES(6, 'London', 'Delhi', '12:15:00', '10:30:00', '12:15:00', 'Airbus A318', 6, 3);
INSERT INTO `Flight` VALUES(7, 'Guwahati', 'Pune', '16:15:00', '15:30:00', '16:15:00', 'Boeing 737', 7, 1); 
INSERT INTO `Flight` VALUES(8, 'New York', 'Mumbai', '13:15:00', '5:30:00', '13:15:00', 'Boeing 737', 8, 4);
INSERT INTO `Flight` VALUES(9,'Delhi', 'Hyderabad', '03:30:00', '15:30:00', '03:30:00', 'Bell 044', 9, 2);
INSERT INTO `Flight` VALUES(10, 'Chennai', 'Delhi', '17:15:00', '7:30:00', '17:15:00', 'Airbus A318', 10, 3);
 

CREATE TABLE `Ticket` (
`Ticket_No.` INT NOT NULL AUTO_INCREMENT,
`Departure_Date` DATE NOT NULL,
`Source` VARCHAR(20) NOT NULL,
`Destination` VARCHAR(20) NOT NULL,
`Passenger_ID` VARCHAR(20) NOT NULL,
PRIMARY KEY (`Ticket_No.`));

INSERT INTO `Ticket` VALUES(1,'2021-02-05', 'Banglore', 'Delhi', 1);
INSERT INTO `Ticket` VALUES(2,'2021-03-25', 'Delhi', 'Berlin', 2);
INSERT INTO `Ticket` VALUES(3,'2021-04-10', 'Bangalore', 'Kolkata', 3);
INSERT INTO `Ticket` VALUES(4,'2021-05-30', 'Sydney', 'Delhi', 4);
INSERT INTO `Ticket` VALUES(5,'2021-06-15', 'Bangalore', 'Delhi', 5);
INSERT INTO `Ticket` VALUES(6,'2021-07-05', 'London', 'Delhi', 6);
INSERT INTO `Ticket` VALUES(7,'2021-08-03', 'Guwahati', 'Pune', 7);
INSERT INTO `Ticket` VALUES(8,'2021-09-02', 'New York', 'Mumbai', 8);
INSERT INTO `Ticket` VALUES(9,'2021-10-02', 'Delhi', 'Hyderabad', 9);
INSERT INTO `Ticket` VALUES(10,'2021-11-28', 'Chennai', 'Delhi', 10);


CREATE TABLE `Fare` (
`Fare_Type` VARCHAR(20) NOT NULL,
`Fare_Desc` VARCHAR(20) NOT NULL
);

INSERT INTO `Fare` VALUES('Eco', 'Normal');
INSERT INTO `Fare` VALUES('Buss', 'High');
INSERT INTO `Fare` VALUES('Eco', 'Normal');
INSERT INTO `Fare` VALUES('Buss', 'High');
INSERT INTO `Fare` VALUES('Eco', 'Normal');
INSERT INTO `Fare` VALUES('Buss', 'High');
INSERT INTO `Fare` VALUES('Eco', 'Normal');
INSERT INTO `Fare` VALUES('Buss', 'High');
INSERT INTO `Fare` VALUES('Eco', 'Normal');
INSERT INTO `Fare` VALUES('Buss', 'High');


CREATE TABLE `Tariff` (
`Route_No` INT NOT NULL,
`Fare_Type` VARCHAR(20) NOT NULL,
`Price` INT NOT NULL,
`Ticket_No` INT NOT NULL
);

INSERT INTO `Tariff` VALUES(1, 'Eco', 15000, 1);
INSERT INTO `Tariff` VALUES(2, 'Buss', 20000, 2);
INSERT INTO `Tariff` VALUES(3, 'Eco', 15000, 3);
INSERT INTO `Tariff` VALUES(4, 'Buss', 20000, 4);
INSERT INTO `Tariff` VALUES(5, 'Eco', 15000, 5);
INSERT INTO `Tariff` VALUES(6, 'Buss', 20000, 6);
INSERT INTO `Tariff` VALUES(7, 'Eco', 15000, 7);
INSERT INTO `Tariff` VALUES(8, 'Buss', 20000, 8);
INSERT INTO `Tariff` VALUES(9, 'Eco', 15000, 9);
INSERT INTO `Tariff` VALUES(10, 'Buss', 20000, 10);

select * from `Passenger`;
select * from `Route`;
Select * from `Itinerary`;
select * from `Airport`;
select * from `Aircraft`;
select * from `Flight`;
select * from `Ticket`;
select * from `Fare`;
select * from `Tariff`;

select * from `Flight`
order by `Flight`.`Departure_Time` Desc, `Flight`.`No_of_Service`;

select a.Ticket_No, a.No_of_Flights from (select Itinerary.Ticket_No, count(Itinerary.Flight_No) as No_of_Flights  from Itinerary
group by Itinerary.Ticket_No) a
where a.Ticket_No >= 1 and a.Ticket_No <= 5

select a.Ticket_No from 
(select Itinerary.Ticket_No, count(Itinerary.Flight_No) as No_of_Flights  from Itinerary
group by Itinerary.Ticket_No) a
where a.No_of_Flights >= 1

select a.Route_No from
(select Flight.Route_No, count(Flight.`Flight_No.`) as No_of_Flights from Flight
 group by Flight.Route_No) a
 where a.No_of_Flights <= 1
 
 select Fare.Fare_Type, count(Fare.Fare_Type) as No_of_Occurences
from Fare
group by Fare.Fare_Type;

select distinct(Aircraft.Capacity) from Aircraft inner join
(select Flight.Aircraft_Type from Flight
where Flight.`Flight_No.` = 1) a
on Aircraft.Aircraft_Type = a.Aircraft_Type;

select * from Aircraft inner join
(select a.Aircraft_Type from 
(select Itinerary.Ticket_No, Itinerary.Flight_No, Flight.Aircraft_Type from Itinerary inner join Flight on Itinerary.Flight_No = Flight.`Flight_No.`) a
where a.Ticket_No = 5) b
on Aircraft.Aircraft_Type = b.Aircraft_Type;

select * from Flight where Flight.Source = 'Bangalore' and Flight.Destination = 'Delhi' and Flight.Departure_Time < '15:30:00';

select distinct Flight_No1, Source1, Destination1, Departure_Time1, Flight_No2, Source2, Destination2, Departure_Time2 from 
(select `Flight_No.` as Flight_No1, Source as Source1, Destination as Destination1, Arrival_Time as Arrival_Time1, Departure_Time as Departure_Time1, Route_No as Route_No1 from Flight 
where Flight.Source = 'Bangalore') a 
inner join
(select `Flight_No.`as Flight_No2, Source as Source2, Destination as Destination2, Arrival_Time as Arrival_Time2, Departure_Time as Departure_Time2, Route_No as Route_No2 from Flight 
where Flight.Destination = 'Berlin') b
on a.Destination1 = b.Source2

select Flight.Source as Airport_Name from Flight
where Flight.`Flight_No.` = 7

select distinct Aircraft.Aircraft_ID, Aircraft.Aircraft_Type, Aircraft.Capacity from Flight inner join Aircraft
on Flight.Aircraft_Type = Aircraft.Aircraft_Type
where Flight.`Flight_No.` = 6

select distinct Aircraft.Aircraft_ID, Aircraft.Aircraft_Type, Aircraft.Capacity from Aircraft inner join
(select Flight.`Flight_No.`, Flight.Aircraft_Type from Flight,
(select Itinerary.Flight_No from Itinerary,
(Select Ticket.`Ticket_No.` from Ticket, 
(select Passenger.Passenger_ID from Passenger
where Passenger.First_Name = 'Kartikay') a
where Ticket.Passenger_ID = a.Passenger_ID) b
where Itinerary.Ticket_No = b.`Ticket_No.`) c
where c.`Flight_No` = Flight.`Flight_No.`) d
on d.Aircraft_Type = Aircraft.Aircraft_Type

select distinct Fare.Fare_Type, Fare.Fare_Desc 
from Fare inner join Tariff
on Fare.Fare_Type = Tariff.Fare_Type
where Tariff.Route_No = 4

select SUM(Tariff.Price) as Total_Ticket_Price 
from Tariff
where Tariff.Ticket_No = 8

select Flight.Source as Departure_Airport, Flight.Destination as Arrival_Airport from Flight
where Flight.`Flight_No.` = 10





