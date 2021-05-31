use project_of_realestate;



create table Owners(
Owner_ID int primary key,
Name varchar(30),
Phone_number numeric(10,0),
Email varchar(30)
);

desc  project_of_realestate.Owners;
show tables;

create table Properties(
Property_ID int primary key,
Status varchar(10),
Asking_price int,
Address varchar(30),
Pin_code int,
Size_sq_feet int,
BHK int,
Property_type varchar(20),
Rent_per_month int,
Owner_ID int,
check(Status in("available", "rent", "sold")),
foreign key (Owner_ID) references Owners(Owner_ID)
);
ALTER TABLE Properties
MODIFY COLUMN Size_sq_feet int;

desc  project_of_realestate.Properties;

create table clients(
Client_Id int primary key,
Name varchar(30),
Phone_Number numeric(10,0),
Address varchar(30),
Email varchar(30)
);

desc  project_of_realestate.Clients;

create table Agent(
Agent_ID int primary key,
Name varchar(30),
Email varchar(30),
Phone_number numeric(10,0)
);

desc  project_of_realestate.Agent;

create table transaction(
Transcation_ID int primary key,
Date DATE,
Property_ID int,
Agent_ID int,
Client_ID int,
Owner_ID int,
Final_Price int,
Transaction_type varchar(20),
check (Transaction_type in("Sold", "Rent")),
foreign key (Property_ID) references Properties(Property_Id),
foreign key (Owner_id) references Owners(Owner_ID),
foreign key (Agent_ID) references Agent(Agent_Id),
foreign key (Client_Id) references Clients(Client_Id)
); 

create table can_show(
		property_id integer,
        Agent_id integer,
        primary key(property_id, Agent_id)

);

insert into can_show values(40006, 298598);
insert into can_show values(40111, 298593);
insert into can_show values(40112, 298588);
insert into can_show values(40113, 298583);
insert into can_show values(40114, 298578);
insert into can_show values(40115, 298573);
insert into can_show values(40006, 298598);
insert into can_show values(40006, 298593);
insert into can_show values(40006, 298588);
insert into can_show values(40006, 298583);


desc Owners;
desc Properties;
desc Clients;
desc agent;
desc transaction;

insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301001, 'Wain MacFie', 'wmacfie0@hhs.gov', 5177175477);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301002, 'Lizbeth Layland', 'llayland1@com.com', 5914139423);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301003, 'Corny Espadas', 'cespadas2@goo.ne.jp', 7589698126);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301004, 'Far Orto', 'forto3@about.me', 1825126874);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301005, 'Francesco Charpling', 'fcharpling4@cnbc.com', 7358023171);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301006, 'Burtie Swaisland', 'bswaisland5@newyorker.com', 4085931753);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301007, 'Hertha Tinwell', 'htinwell6@wordpress.com', 7912965720);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301008, 'Dani Greenhill', 'dgreenhill7@hp.com', 7979913050);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301009, 'Gustaf Wyleman', 'gwyleman8@baidu.com', 5714915364);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301010, 'Stacee Czajkowski', 'sczajkowski9@si.edu', 2698849487);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301011, 'Alika Gainfort', 'againfort0@liveinternet.ru', 1724783846);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301012, 'Mag Mattioni', 'mmattioni1@google.cn', 4072041844);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301013, 'Nari Spinozzi', 'nspinozzi2@delicious.com', 3835035612);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301014, 'Lizbeth Layland', 'lkeetch3@pagesperso-orange.fr', 9431127087);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301015, 'Stanislaus Wanjek', 'swanjek4@google.com.hk', 7189574107);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301016, 'Ronnie McLane', 'rmclane5@studiopress.com', 4544226464);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301017, 'Bartlet Ludmann', 'bludmann6@domainmarket.com', 2406913714);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301018, 'Hertha Tinwell', 'hridout7@ning.com', 4897448597);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301019, 'Nike Grundon', 'ngrundon8@squidoo.com', 3185503402);
insert into Owners (Owner_ID, Name, Email, Phone_number) values (1301020, 'Aland Hancorn', 'ahancorn9@army.mil', 4829813684);

select * from Owners;

insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101101, 'Thedric De Michele', 'tde0@posterous.com', 8979549307, '7 Shoshone Court');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101102, 'Homerus Dommerque', 'hdommerque1@wordpress.org', 4808998379, '60 Pepper Wood Center');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101103, 'Gauthier Domerc', 'gdomerc2@wordpress.org', 6685266621, '3964 Jackson Point');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101104, 'Viviyan Costi', 'vcosti3@wired.com', 5398721420, '7 Oak Hill');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101105, 'Leroi Goody', 'lgoody4@barnesandnoble.com', 5613907068, '0 Katie Plaza');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101106, 'Sebastiano Fownes', 'sfownes5@google.de', 5543657099, '57228 Rowland Avenue');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101107, 'Matthew Kemble', 'mkemble6@vkontakte.ru', 7348644726, '5359 Sunbrook Place');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101108, 'Cahra Fairlaw', 'cfairlaw7@thetimes.co.uk', 7078605269, '0274 Mifflin Parkway');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101109, 'Eberto Pagin', 'epagin8@stanford.edu', 6739043973, '9608 Shoshone Court');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101110, 'Tammara Weatherhogg', 'tweatherhogg9@merriam.com', 6697219790, '08 Banding Drive');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101111, 'Trenton Peacock', 'tpeacocka@parallels.com', 4282951230, '43 Forest Dale Avenue');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101112, 'Renata Densie', 'rdensieb@fema.gov', 2374660168, '33 Spohn Plaza');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101113, 'Leone Crutcher', 'lcrutcherc@theguardian.com', 6485376842, '106 New Castle Place');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101114, 'Anderson Karpmann', 'akarpmannd@linkedin.com', 7763824024, '4 Lukken Center');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101115, 'Jessy Boss', 'jbosse@un.org', 3486636640, '37090 Fieldstone Alley');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101116, 'Rosalie Govinlock', 'rgovinlockf@fc2.com', 5653292191, '962 Sherman Plaza');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101117, 'Irvine Tregust', 'itregustg@huffingtonpost.com', 6368315956, '640 Service Terrace');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101118, 'Darius Windless', 'dwindlessh@google.de', 1285462322, '12124 Laurel Avenue');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101119, 'Anderson Karpmann', 'hgeratti@ifeng.com', 6284383879, '4784 Oneill Junction');
insert into Clients (Client_ID, Name, Email, Phone_number, Address) values (2101120, 'Trenton Peacock', 'bkerfootj@rediff.com', 5097629340, '6 Rusk Court');

select * from Clients;

insert into Properties (Property_ID, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40001, 'Available', 1982, 1543, 4, 'Residential', 18564, 643660);
insert into Properties (Property_ID, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40003, 'Available', 59720, 6541, 3, 'Residential', 8509, 17170000);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40004, 'Available', 781100, 2388, 5, 'Rowland', 14835, 9052832);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40005, 'Available', 781059, 3233, 5, 'Industrial', 7255, 19680402);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40006, 'Available', 781096, 7509, 3, 'Rowland', 5699, null);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40007, 'Available', 781121, 5724, 2, 'Rowland', 3255, null);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40008, 'Available', 781097, 4788, 1, 'Commercial', 6097, 9047803);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40009, 'Available', 781111, 2281, 5, 'Commercial', 11361, null);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40010, 'Available', 781091, 9048, 5, 'Rowland', 9967, 12542605);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40011, 'Available', 781075, 1955, 3, 'Residential', 10118, 830825);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40012, 'Available', 781127, 4701, 5, 'Rowland', 17733, 15237313);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40013, 'Available', 781094, 5776, 5, 'Rowland', 9950, 7678538);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40101, 'Available', 781048, 5110, 4, 'Rowland', 3969, 6529762);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40102, 'Available', 781074, 6015, 4, 'Residential', 9831, 500417);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40103, 'Available', 781047, 4353, 5, 'Industrial', null, 9639321);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40104, 'Available', 781085, 5027, 1, 'Rowland', 10691, 1353185);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40105, 'Available', 781115, 8429, 1, 'Industrial', null, 8980738);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40106, 'Available', 781054, 7602, 4, 'Residential', null, 18676964);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40107, 'Available', 781053, 5529, 4, 'Residential', 17516, 1273324);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40108, 'Available', 781128, 7664, 2, 'Industrial', 13232, 8665083);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40109, 'Available', 781063, 9034, 3, 'Residential', 17553, 5174762);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (401010, 'Available', 781018, 7638, 2, 'Commercial', 8388, 4387313);


insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price, Address) values (40011, 'Available', 781075, 1955, 3, 'Residential', 10118, 830825);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40012, 'Available', 781127, 4701, 5, 'Rowland', 17733, 15237313);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40013, 'Available', 781094, 5776, 5, 'Rowland', 9950, 7678538);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40101, 'Available', 781048, 5110, 4, 'Rowland', 3969, 6529762);
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price) values (40102, 'Available', 781074, 6015, 4, 'Residential', 9831, 500417);

update Properties set Rent_per_month = 28089 where Property_ID = 40001;
update Properties set Rent_per_month = 39021 where Property_ID = 40001;
update Properties set Rent_per_month = 21001 where Property_ID = 40003;
update Properties set  Rent_per_month = 31070 where Property_ID = 40004;
update Properties set Rent_per_month = 37789 where Property_ID = 40005;
update Properties set Rent_per_month = 38658 where Property_ID = 40006;
update Properties set Rent_per_month = 59256 where Property_ID = 40007;
update Properties set Rent_per_month = 29000 where Property_ID = 40008;

update Properties set  Property_type = 'Residential' where Property_ID = 40004;
update Properties set Property_type = 'Residential' where Property_ID = 40005;
update Properties set Property_type = 'Residential' where Property_ID = 40006;
update Properties set Property_type = 'Residential' where Property_ID = 40007;
update Properties set Property_type = 'Residential' where Property_ID = 40008;

update Properties set Address = '95 Hayes Drive' where Property_ID = 40001;
update Properties set Address = '9534 Service Terrace' where Property_ID = 40003;
update Properties set Address = '452 La Follette Avenue' where Property_ID = 40004;
update Properties set Address = '77 David Place' where Property_ID = 40005;
update Properties set Address = '60500 Del Mar Point' where Property_ID = 40006;
update Properties set Address = '298 La Follette Lane' where Property_ID = 40007;
update Properties set Address = '103 Grayhawk Court' where Property_ID = 40008;
update Properties set Address = '305 Talmadge Place' where Property_ID = 40009;
update Properties set Address = '0 Moose Circle' where Property_ID = 40010;
update Properties set Address = '18 Bluestem Way' where Property_ID = 40011;
update Properties set Address = '6 Knutson Trail' where Property_ID = 40012;
update Properties set Address = '9 6th Road' where Property_ID = 40013;
update Properties set Address = '72258 Waxwing Drive' where Property_ID = 40101;
update Properties set Address = '429 Artisan Park' where Property_ID = 40102;
update Properties set Address = '19 Saint Paul Crossing' where Property_ID = 40103;
update Properties set Address = '9 Grasskamp Road' where Property_ID = 40104;
update Properties set Address = '127 Eastwood Place' where Property_ID = 40105;
update Properties set Address = '9 Delaware Alley' where Property_ID = 40106;
update Properties set Address = '8 Barnett Pass' where Property_ID = 40107;
update Properties set Address = '6036 Dexter Way' where Property_ID = 40108;
update Properties set Address = '6 Knutson Trail' where Property_ID = 40109;
update Properties set Address = '04028 Springs Trail' where Property_ID = 40110;


insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price, Address) values (40111, 'Available', 781075, 1955, 3, 'Residential', 9000, 830825, '60500 Del Mar Point');
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price, Address) values (40112, 'Available', 781075, 4701, 5, 'Residential', 7733, 15237313, '60500 Del Mar Point');
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price, Address) values (40113, 'Available', 781075, 5776, 2, 'Residential', 9950, 7678538, '60500 Del Mar Point');
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price, Address) values (40114, 'Available', 781075, 5110, 4, 'Residential', 3969, 6529762, '60500 Del Mar Point');
insert into Properties (Property_Id, Status, Pin_code, Size_sq_feet, BHK, Property_type, Rent_per_month, Asking_price, Address) values (40115, 'Available', 781075, 6015, 3, 'Residential', 9831, 500417, '60500 Del Mar Point');


LOAD DATA LOCAL INFILE 'C:\\Users\\abhinandan\\OneDrive\\Desktop\\Dbsms_project\\agent.txt' INTO TABLE Agent
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' ;
SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = true;

select  * from agent;

select * from Owners;


desc Properties;
select * from properties;

-- adding owner id to table properties

update properties 
set Owner_ID = 1301017
where Property_ID = 40001;

update properties 
set Owner_ID = 1301015
where Property_ID = 40006;

update properties 
set Owner_ID = 1301012
where Property_ID = 40003;

update properties 
set Owner_ID = 1301001
where Property_ID = 40004;

update properties 
set Owner_ID = 1301007
where Property_ID = 40005;

update properties 
set Owner_ID = 1301011
where Property_ID = 40007;

update properties 
set Owner_ID = 1301014
where Property_ID = 40008;

update properties 
set Owner_ID = 1301019
where Property_ID = 40009;

update properties 
set Owner_ID = 1301020
where Property_ID = 40010;

update properties 
set Owner_ID = 1301003
where Property_ID = 40011;

update properties 
set Owner_ID = 1301002
where Property_ID = 40012;

update properties 
set Owner_ID = 1301018
where Property_ID = 40013;

update properties 
set Owner_ID = 1301016
where Property_ID = 40101;

update properties 
set Owner_ID = 1301013
where Property_ID = 40102;

update properties 
set Owner_ID = 1301004
where Property_ID = 40103;

update properties 
set Owner_ID = 1301005
where Property_ID = 40104;

update properties 
set Owner_ID = 1301005
where Property_ID = 40105;

update properties 
set Owner_ID = 1301006
where Property_ID = 40107;

update properties 
set Owner_ID = 1301008
where Property_ID = 40108;

update properties 
set Owner_ID = 1301009
where Property_ID = 40109;

update properties 
set Owner_ID = 1301010
where Property_ID = 401010;

update properties 
set Owner_ID = 1301016
where Property_ID = 40106;


select * from properties;
select * from agent;
select * from clients;
select * from owners;

select * from transaction;

use project_of_realestate;
select * from properties;
select * from Agent;
														
insert into transaction values(8252501, "2000-11-25", 40001, 298553, 2101111, 1301017, 18564, "rent");
insert into transaction values(8252502, "2001-10-24",  40004, 298563, 1301001, 1301011, 9052832, "sold");
insert into transaction values(8252503, "2013-07-26",  40005, 298593, 1301007, 1301005, 8980738, "sold");
insert into transaction values(8252504, "2015-12-05",  40011, 298603, 1301007, 1301001, 19680402, "sold");
insert into transaction values(8252505, "2011-11-11",  40013, 298608, 2101101, 1301018, 9950, "rent");
insert into transaction values(8252506, "2013-10-18",  40104, 298553, 2101119, 1301005, 10691, "rent");
insert into transaction values(8252507, "2017-09-19",  40106, 298583, 1301016, 1301009, 18676964, "sold");
insert into transaction values(8252508, "2008-04-20",  401010, 298598, 2101110, 1301010, 8388, "rent");
insert into transaction values(8252509, "2004-01-21",  40107, 298548, 2101120, 1301006, 17516, "rent");
insert into transaction values(8252510, "2005-08-22",  40109, 298568, 1301009, 1301018, 5174762, "sold");
insert into transaction values(8252511, "2007-04-24",  40108, 298558, 2101108, 1301008, 13232, "rent");
insert into transaction values(8252512, "2003-11-28",  40103, 298568, 1301004, 1301013, 9639321, "sold");

insert into transaction values(8252513, "2000-11-25", 40005, 298553, 2101111, 1301007, 19680402, "sold");
insert into transaction values(8252514, "2001-10-24",  40007, 298563, 2101113, 1301011, 59256, "rent");


update properties 
set status = 'sold', Owner_ID = null 
where Property_ID = 40005;

update properties 
set status = 'rent', Owner_ID = 1301011 
where Property_ID = 40007;


update transaction  
set Date = "2021-07-04"
where Transcation_ID = 8252505;

select * from owners;
select * from clients;

insert into clients values(1301001, 'Wain MacFie', 5177175477, 'near airport', 'wmacfie0@hhs.gov');
insert into clients values(1301007, 'Hertha Tinwell', 7912965720, 'near railwayline', 'htinwell6@wordpress.com');
insert into clients values(1301016, 'Ronnie McLane', 4544226464, 'near airport', 'rmclane5@studiopress.com');
insert into clients values(1301009, 'Gustaf Wyleman', 5714915364, 'near busstand', 'gwyleman8@baidu.com');
insert into clients values(1301004, 'Far Orto', 1825126874, 'near airport', 'forto3@about.me');

-- Find addresses of homes in your city (for example Guwahati) with rent between Rs.20,000 and Rs. 40,000 per
-- month.


select Address
from properties
where Property_type = 'Residential' and (rent_per_month between 20000 and 40000) ; 


-- Find details of homes for rent in G.S.Road (you can use the name of another locality if your city is different)
-- with at least 2 bedrooms and costing less than Rs.10,000 per month. Show the contact number(s) of agents
-- who can show you these properties.

select Address, pin_code, Size_sq_feet, BHK, Rent_per_month,  Agent.Phone_number 
from properties, Agent, can_show
where Address = '60500 Del Mar Point' and Property_type = 'Residential' and BHK >= 2 and Rent_per_month < 10000 and status = 'Available'
and (can_show.property_id = properties.Property_ID and can_show.Agent_id = Agent.Agent_id);



-- Find the name of the agent who has sold the most property in the year 2021 by total amount in rupees.


select Agent.Name from Agent where Agent.Agent_ID = (
select max_amount1.Agent_ID 
from (select transaction.Agent_ID , sum(transaction.Final_Price) as total_amount
from transaction
where transaction.Date like "2021%"
group by transaction.Agent_ID) as max_amount1
where max_amount1.total_amount = (select max(total_amount) from (select transaction.Agent_ID , sum(transaction.Final_Price) as total_amount
from transaction
where transaction.Date like "2021%"
group by transaction.Agent_ID) as max_amount)
);

-- Find the addresses of homes in your city that are available for sale and that has at least 2 bed rooms. List the
-- asking price and the number of bedrooms, with other details that may be necessary.

select Address,pin_code, BHK, Asking_price
from properties
where Property_type = 'Residential' and  BHK >= 2 and status = 'Available' and Asking_price is not null; 


 -- List the details of the most expensive houses and the houses with the highest rent, in the database.

select Address, Pin_code, Size_sq_feet, BHK, Asking_price, Rent_per_month, Status
from properties as p
where p.Asking_price =(
select  max(Asking_price) from properties ) or 
p.Rent_per_month =(
select  max(Rent_per_month) from properties );

insert into transaction values( 8252515 , '2021-04-09', 40001, 298543, 1301001, 1301017, 643660,'Sold');


select * from agent;
use project_of_realestate;
select * from properties;
select * from agent;
select * from clients;

select * from transaction;
insert into transaction values(8252519, '2021-04-22', 40011, 298608, 2101112, 1301018, 10118,'rent');
