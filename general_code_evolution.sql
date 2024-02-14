CREATE DATABASE auction_website_project;
USE auction_website_project;

CREATE TABLE login_information (
	lgmember_id INT,
    email VARCHAR(100) NOT NULL,
    username VARCHAR(100) NOT NULL,
    Pass_word VARCHAR(100) NOT NULL
    );

CREATE TABLE personal_information (
	pimember_id INT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    dob VARCHAR(11) NOT NULL,
    address VARCHAR(100) NOT NULL,
    phone_number VARCHAR(10) NOT NULL
    );
    
CREATE TABLE users (
	umember_id INT NOT NULL AUTO_INCREMENT,
    assigned_id INT,
    seller_num INT,
    bidder_num INT,
    PRIMARY KEY (umember_id)
    );

SELECT * FROM item_info;

INSERT INTO items(auctioning_item_num,access_seller_id,registered_item_check)
VALUES (1457,5,1),
(2679,18,1),
(5971,7,1),
(3797,20,1),
(8707,9,1),
(9636,10,1),
(3036,3,1),
(5792,4,1),
(4093,13,1),
(8170,5,1),
(9811,5,1),
(7830,6,1),
(7348,20,1),
(1070,5,1),
(8981,4,1),
(2166,12,1),
(2519,6,1),
(3088,11,1),
(1491,19,1),
(9949,12,1),
(8958,18,1),
(2260,15,1),
(3171,5,1),
(3569,6,1),
(3856,1,1),
(4869,1,1),
(3296,20,1),
(5285,17,1),
(1879,16,1),
(8501,13,1),
(8410,8,1),
(4003,2,1),
(9864,13,1),
(2123,8,1),
(5682,13,1),
(4258,13,1),
(5361,12,1),
(9338,13,1),
(6275,9,1),
(3797,13,1),
(1000,7,1),
(6504,9,1),
(6718,10,1),
(6644,10,1),
(3496,18,1),
(2161,19,1),
(8516,6,1),
(5539,1,1),
(7609,3,1),
(3440,4,1),
(5086,11,1);



INSERT INTO item_info(iiitem_id,item_name,item_category,item_base_price,item_quality)
VALUES (71,"All Guinness World Record Books (2000-2022)","BOOKS",250,"Decent"),
(72,"Medieval Sword","COLLECTABLES",532,"Decent"),
(73,"Vietnam War Army Shirt","COLLECTABLES",35,"Terrible"),
(74,"Vietnam War Veteran Patch","COLLECTABLES",15,"Terrible"),
(75,"Victorian Spoonware","COLLECTABLES",45,"Some Damage"),
(76,"Medieval Armor Piece","COLLECTABLES",4000,"Great"),
(77,"Napoleonic Firearm","COLLECTABLES",5000,"Exceptional"),
(78,"WW2 British War Medals","COLLECTABLES",350,"Decent"),
(79,"Napoleonic Coin","COLLECTABLES",200,"Worn"),
(80,"Original Victorian Painting of a British Tax Collector and His Family","COLLECTABLES",3000,"Great");

INSERT INTO login_information
VALUES 
(51,'IgnacioArias@mail.com','merge','^{m5X28J'),(52,'EsterBuck@mail.com','americanidiot','^%$#EDGFH%$'),(53,'BerylLara@mail.com','voidman','%$^YGFD#$%^YHG'),(54,'JewelHeath@mail.com','hellboy','%^YHGFdEW$%^%YGRF'),
(55,'TabathaGrant@rmail.com','soulful','p_@+Maw8'),(56,'BorisDonaldson@mail.com','greenday','^YHGFE$%^YHG'),(57,'HalRocha@mail.com','eyesocket','546y5GFRER#'),(58,'JanaPratt@mail.com','janejane','$^%YGFr3e245'),(59,'OdellLin@mail.com','obj','%REFRGY%T$%'),(60,'OdisLynn@rmail.com','odisz','$%^YGFRE#$%^TG'),
(61,'QuinnHinton@goopmail.com','kaicenat','$7RX3cN'),(62,'MosesShaffer@goopmail.com','brighteue','$%TGFE$%^'),
(63,'RandolphCuevas@mail.com','adinro','HY{*4[Hz'),(64,'JamaalRowland@goopmail.com','brighteyes','3456ygfew34%TFE'),(65,'HymanWoods@goopmail.com','skullboy','%HTREF#R@4t5ygre'),(66,'FannieGonzales@mail.com','fantom','G%$ERG%$T#$TE'),(67,'JohnathanAndrade@mail.com','johnnyandy','G#$TERG$#T$#34t3t'),(68,'MarcellusMathews@mail.com','marcusaurelius','T$#TRFEFWERT$5gre'),(69,'HiramRamos@mail.com','ramramturbo','g#$E#$TT#$'),(70,'RhodaBlake@rmail.com','blakegriffin245','%$REGY%^$%REF'),
(71,'SuzanneBurch@rmail.com','kicker','#EOJfew'),
(72,'MillicentWashington@rmail.com','superman','34tgredsfF@#4'),
(73,'LindseyHouse@mail.com','batman','$#GE3qd'),(74,'GalenBerger@rmail.com','burgertown','3456ygfde456yg'),
(75,'VicenteBowman@mail.com','345frear','$#GREWE2345t'),(76,'ForrestHuerta@mail.com','froester','g543wefty654'),
(77,'CleoSanchez@mail.com','freeboy','@#EWFG342'),(78,'PauletteStevenson@mail.com','paulieeboy','43wefg53'),
(79,'JaredClarke@mail.com','eagleeeeeee','GH%GRES'),(80,'SummerColon@mail.com','summie','65y43erg'),
(81,'LawerenceHutchinson@mail.com','towerrr','#$%^YGFD24rt'),(82,'PhillipFarle@rmail.com','tiststststs','45g5ref4'),(83,'JulesVelez@goopmail.com','watchman','#$%GEg43tr3ef34'),(84,'KirstenFox@mail.com','kristenwest','#%TRG34t34twd34'),(85,'BennettFields@mail.com','bennyben','#%TRE#$%TTRG3'),(86,'AlexisHoover@goopmail.com','thedawwg','%TFEDWer$T#%ref34%T'),(87,'TerryMarks@mail.com','markhenry','4354trGFE#T%$re'),(88,'TiffanyBarrett@mail.com','tifftaff','$#%$^TGRFEW3454trfefwf'),(89,'DylanMooney@mail.com','moongreat','%$^T%GFRER#456t5fer'),(90,'DamonClements@mail.com','braveheart','$YTR#$%46tre345t'),
(91,'DebraPowers@rmail.com','gandolfthegrey','weG#$EWf'),(92,'VelmaMorris@rmail.com','tiktoktiktok','4hf34iejf902'),(93,'NestorBenson@rmail.com','batmun','#$%TG#R'),(94,'BobbieBarr@goopmail.com','bobbobobob','#$%TG#4t'),(95,'DouglassMueller@mail.com','duggydoggg','#$%^TRE#5trge'),(96,'DianaJohns@mail.com','kittygirl123','$#%^TRF34t43'),(97,'ErikaNoble@mail.com','nobleism','$%TYGFE#456tfe'),(98,'EdgarQuinn@mail.com','quinnschnyder','3tg43F#$F#$F'),(99,'ElliottLowe@mail.com','ellylowy','$#%TYGFE#$%tfe3'),(100,'HueyOneill@mail.com','tufftoy','f#$%TGFE#');


UPDATE items
SET access_seller_id = 10
Where iitem_id = 70;

DELETE FROM users
WHERE umember_id > 50;

DELETE FROM ;

DELETE FROM ;

SELECT * FROM shipping_info;

INSERT INTO shipping_info
VALUES(1,"Normal","Delivering from Warehouse","Receipt.txt",5),
(2,"Normal","Shipping","Receipt.txt",10),
(3,"Expedited","Yet to Ship","Receipt.txt",15),
(4,"Expedited","Yet to Ship","Receipt.txt",15),
(5,"Normal","Yet to Ship","Receipt.txt",10),
(6,"Normal","Delivering from Warehouse","Receipt.txt",100),
(7,"Expedited","Shipping","Receipt.txt",15),
(8,"Normal","Shipping","Receipt.txt",10),
(9,"Normal","Delivering from Warehouse","Receipt.txt",10),
(10,"Normal","Yet to Ship","Receipt.txt",10);

INSERT INTO auctions
VALUES (0,1,61,,),
(1,1,62,,),
(2,1,63,,),
(3,1,64,,),
(4,1,65,,),
(5,1,66,,),
(6,1,67,,),
(7,1,68,,),
(8,1,69,,),
(9,1,70,,),
(10,1,71,,),
(11,1,72,,),
(12,1,73,,),
(13,1,74,,),
(14,1,75,,),
(15,1,76,,),
(16,1,77,,),
(17,1,78,,),
(18,1,79,,),
(19,1,80,,),
(20,1,81,,),
(21,1,82,,),
(22,1,83,,),
(23,1,84,,),
(24,1,85,,),
(25,1,86,,),
(26,1,87,,),
(27,1,88,,),
(28,1,89,,),
(29,1,90,,),
(30,1,91,,),
(31,1,92,,),
(32,1,93,,),
(33,1,94,,),
(34,1,95,,),
(35,1,96,,),
(36,1,97,,),
(37,1,98,,),
(38,1,99,,),
(39,1,100,,),
(40,1,101,,),
(41,1,102,,),
(42,1,103,,),
(43,1,104,,),
(44,1,105,,),
(45,1,106,,),
(46,1,107,,),
(47,1,108,,),
(48,1,109,,),
(49,1,110,,),
(50,1,111,,);



SELECT * FROM item_info;

INSERT INTO item_info
VALUES (80,'Lovecraft Anthology','BOOKS',25,'Worn'),
(81,'College Calculus Textbook','BOOKS',200,'Brand New'),
(82,'College Calculus Textbook','BOOKS',75,'Terrible'),
(83,'A Great Gatsby - With Art','BOOKS',24,'Decent'),
(84,'Physics Highschool Textbook','BOOKS',150,'Great'),
(85,'Berserk All Volumes','BOOKS',75,'Terrible'),
(86,'Renaissance Artbook','BOOKS',25,'Terrible'),
(87,'Toyota SUV','CARS',15000,'Decent'),
(88,'Jeep Wrangler','CARS',25000,'Great'),
(89,'Toyota Corolla','CARS',5000,'Terrible'),
(90,'Dodge Hellcat','CARS',60000,'Exceptional'),
(91,'Toyota Corolla','CARS',14000,'Some Damage'),
(92,'Toyota Corolla','CARS',15500,'Some Damage'),
(93,'Chevrolet Silverado','CARS',25000,'Some Damage'),
(94,'Yeezy 350 V2','SNEAKERS',250,'Worn'),
(95,'Yeezy Foams','SNEAKERS',250,'Some Damage'),
(96,'Yeezy 700s','SNEAKERS',100,'Terrible'),
(97,'Air Jordan 5s','SNEAKERS',240,'Great'),
(98,'Air Jordan 3s','SNEAKERS',300,'Exceptional'),
(99,'Air Jordan 8s','SNEAKERS',200,'Great'),
(100,'Black Leather Jacket','CLOTHES',400,'Great'),
(101,'Brown Leather Jacket','CLOTHES',450,'Great'),
(102,'Nets Jersey','CLOTHES',75,'Worn'),
(103,'Lakers Jersey','CLOTHES',95,'Decent'),
(104,'Islanders Jersey','CLOTHES',100,'Some Damage'),
(105,'Ripped Levi Jeans','CLOTHES',50,'Terrible'),
(106,'Aaron Rodgers Retro Jersey Gameworn','CLOTHES',500,'Exceptional'),
(107,'Ripped Levi Jeans','CLOTHES',100,'Decent'),
(108,'Green Letterman Jacket','CLOTHES',150,'Decent'),
(109,'Yeezus Tour Merchandise T-Shirt','CLOTHES',150,'Decent'),
(110,'Weezer Tour Merchandise T-Shirt','CLOTHES',75,'Worn'),
(111,'Opium Tour Merchandise T-Shirt','CLOTHES',90,'Worn');

SELECT * FROM withdrawals;

SELECT * FROM transactions;

SELECT * FROM failed_bids;

INSERT INTO failed_bids(f_auction_bid,item_id,bidder_id,amount_bid)
VALUES (1,61,12,10),(2,62,20,20),(3,63,14,3500),(4,64,15,10000),(5,65,33,25000),(6,66,31,200),(7,67,22,500),(8,68,38,75),(9,69,41,200),(10,70,17,1000);

SELECT * FROM item_info;

UPDATE item_info
SET iiitem_id = iiitem_id + 52
Where iiitem_id;

ALTER TABLE transactions
ADD COLUMN payment INT;

INSERT INTO withdrawals(w_auction_id,seller_id,w_wallet_paid_id,item_sold)
VALUES (2,10,10,45),(10,49,49,1250);

INSERT INTO transactions(t_auction_id,bidder_id,shipping_info,t_wallet_payment_id,item_bought)
VALUES (2,5,1,5,62),(10,40,2,40,70);

ALTER TABLE transactions
ADD COLUMN item_bought INT;

ALTER TABLE withdrawals
DROP COLUMN item_bought;

INSERT INTO shipping_info
VALUES (1,"Normal","Yet to Ship","Receipt.txt",20), (2,"Expedited","Delivering from Warehouse","Receipt.txt",45);

INSERT INTO wallet_information (wiwallet_id, account_balance)
VALUES (1,2500),(2,3720),(3,500),(4,3500),(5,500),(6,750),(7,456),(8,532),(9,9999),(10,1406),
(11,5693),(12,8572),(13,45),(14,2856),(15,2234),(16,5524),(17,5000),(18,1184),(19,1111),(20,2090),
(21,9012),(22,4851),(23,725),(24,775),(25,640),(26,250),(27,546),(28,750),(29,3500),(30,544),
(31,4569),(32,05),(33,75000),(34,5560),(35,50000),(36,250),(37,55000),(38,50200),(39,586),(40,3000),
(41,1000),(42,5359),(43,7290),(44,66),(45,85),(46,5600),(47,60000),(48,750000),(49,100000),(50,10000);

SELECT * FROM personal_information;

INSERT INTO personal_information (pimember_id, first_name, last_name, dob, address, phone_number)
VALUES (1, 'Sam', 'Smith', '1983-01-06', '180 Woodland Lane Paramus, NJ 07652', '5878686441'),
(2,'Joe','Johnson','1976-12-08', '908 Tailwater St. Newington, CT 06111', '3147370018'),
(3,'MikeSmith','Smith','1987-08-08', '13 53rd St. Fresh Meadows, NY 11365', '9555997623'),
(4,'Gabriel','Hernandez','2000-03-16', '283 Grant St. Kernersville, NC 27284', '2219114131'),
(5,'Jose','Gonzalez','1966-02-26', '789 Brickyard Drive Clermont, FL 34711', '5396253476'),
(6,'RohanRegin','Regin','2000-03-11', '22 Fairview St. Villa Park, IL 60181', '2225686527'),
(7,'Raegan','Allister','1980-03-13', '7605 Park Ave. Ambler, PA 19002', '3644724248'),
(8,'Charlie','McDoughery','1965-05-03', '860 Penn Ave. Toledo, OH 43612', '6458498225'),
(9,'Michael','Jordan','1995-10-02', '170 North Main Rd. Dallas, GA 30132', '6754148503'),
(10,'Darren','Brown','1982-03-27', '962 Walnut Dr. Cedar Falls, IA 50613', '6864952405'),
(11,'Fernando','Alonso','1984-09-19', '9058 Walt Whitman Ave. Miamisburg, OH 45342', '8707466834'),
(12,'Aiden','Gomez','1986-09-09', '421 Young Ave. Lithonia, GA 30038', '9386920431'),
(13,'Richard','Ross','1976-05-24', '34 Sutor Court Maumee, OH 43537', '7938572284'),
(14,'South','West','2000-09-17', '567 West St. Jonesborough, TN 37659', '4122343456'),
(15,'Aubrey','Graham','1994-06-04', '66 Glenwood Ave. Stow, OH 44224', '7967520458'),
(16,'Tama','Geraldson','1983-11-18', '7451 N. Victoria Ave. Fort Lee, NJ 07024', '3792889285'),
(17,'Mikey','Conac','1993-06-11', '54 Bridge Road Wisconsin Rapids, WI 54494', '8364069397'),
(18,'Jared','Jack Jr.','1981-03-07', '47 Wayne St. Warwick, RI 02886', '5737078664'),
(19,'Thomas','Barthelomeu','2002-08-22', '8371 Main St. West Bend, WI 53095', '5252720141'),
(20,'Jeremia','Shodan','1981-10-01', '558 Applegate Ave. Uniontown, PA 15401', '7425883377'),
(21,'DionysOswati','Oswati','1993-10-18', '76 N. Nut Swamp St. Hartselle, AL 35640', '3853281874'),
(22,'Jochim','Dubthach','1991-02-11', '8809 East Street Suffolk, VA 23434', '5773778883'),
(23,'Trophimos','Okonkwo','1984-05-10', '426 S. Meadowbrook Street Newtown, PA 18940', '6664335681'),
(24,'Anand','Iudhail','1989-04-14', '8897 Acacia Street Dearborn, MI 48124', '5254719454'),
(25,'Annemarie','Fatma','1981-09-26', '5 Ridgewood Dr. Champlin, MN 55316', '4723541833'),
(26,'ParvatiVishal','Vishal','1999-03-02', '39 Brown Avenue Jamestown, NY 14701', '7869453364'),
(27,'Sin','Mahboubeh','1995-10-14', '286 Ann Ave. Fort Myers, FL 33905', '4452319882'),
(28,'Tabatha','Braden','1977-01-05', '7717 S. Richardson St. Lindenhurst, NY 11757', '6795118827'),
(29,'Seffora','Prasad','1981-03-06', '944 Foster Ave. Providence, RI 02904', '9234679394'),
(30,'Femme','Antonijo','1998-03-03', '14 Richardson Lane Piedmont, SC 29673', '9738253939'),
(31,'HamletChukwudi','Chukwudi','1980-09-14', '9624 Hickory Rd. Lombard, IL 60148', '3149382519'),
(32,'Joop','Johnnie','1997-06-22', '67 Border Dr. Beckley, WV 25801', '6093082080'),
(33,'Victor','Asel','1983-03-25', '8 South Silver Spear Ave. Danbury, CT 06810', '5137229533'),
(34,'Annalisa','Pascuala','1977-02-02', '8831 Edgemont Ave. Grand Forks, ND 58201', '6224958149'),
(35,'Edith','Cyriaca','2003-04-12', '742 Glenholme St. East Hartford, CT 06118', '4284874748'),
(36,'AviliusRaginahildiz','Raginahildiz','1991-04-11', '84 Gregory Lane Pottstown, PA 19464', '9058547015'),
(37,'Debora','Teodor','1981-07-09', '219 W. Greystone Ave. Marcus Hook, PA 19061', '2437551460'),
(38,'SookieEvelin','Evelin','1997-10-31', '51 E. Border St. Hamden, CT 06514', '3589263805'),
(39,'Galilahi','Sassa','1996-05-19', '846 South White Street Calumet City, IL 60409', '8382467692'),
(40,'KamalYeongSuk','Yeong-Suk','2000-02-12', '9632 Harvard Road Jacksonville, NC 28540', '9249836755'),
(41,'Iepthae','Pisti','1996-04-19', '9965 Ridgeview Lane Hartsville, SC 29550', '9694315427'),
(42,'Hira','Oybek','2000-07-20', '32 Manor Station Ave. Essex, MD 21221', '2657884747'),
(43,'Gui','Abhishek','1992-04-30', '52 Hall St. Southfield, MI 48076', '2822316180'),
(44,'Thomas','Agrippa','1987-03-28', '8374 SE. Randall Mill Ave. Lilburn, GA 30047', '6483513915'),
(45,'Sam','Florry','1999-12-02', '723 Summer St. Dorchester, MA 02125', '9243711544'),
(46,'Melita','Zona','1977-01-28', '65 Bayport Ave. Wappingers Falls, NY 12590', '8735534701'),
(47,'LylouSunder','Sunder','1995-02-02', '5 Jones St. Tullahoma, TN 37388', '7354374828'),
(48,'James','Harden','2003-12-03', '5 Tanglewood Ave. Mount Juliet, TN 37122', '9964251067'),
(49,'Malthe','Viktoria','1981-08-25', '144 Evergreen Dr. Greer, SC 29650', '9549996544'),
(50,'Aslan','Kishan','1986-05-27', '910 Yukon St. Millington, TN 38053', '2576482696');

UPDATE auctions
SET access_seller_id = 10
Where access_seller_id = 49;

SELECT * FROM shipping;

INSERT INTO auctions_info
VALUES (11,200,1,350),
(12,500,1,600),
(13,250,1,45),
(14,0,0,55),
(15,6000,1,120),
(16,5000,1,6500),
(17,8000,1,8000),
(18,0,0,600),
(19,345,1,400),
(20,72,1,5000),
(23,65,1,300),
(24,1000,1,120),
(25,0,0,50),
(26,4500,1,200),
(27,5420,1,150),
(28,4061,1,50),
(29,0,0,17500),
(30,5444,1,35000),
(31,821,1,7500),
(32,431,1,650000),
(33,464,1,20000),
(34,0,0,30000),
(35,500,1,255),
(36,600,1,265),
(37,250,1,325),
(38,533,1,425),
(39,120,1,500),
(40,400,1,100),
(41,0,0,110),
(42,0,0,110),
(43,800,1,65),
(44,900,1,550),
(45,3500,1,200),
(46,1200,1,195),
(47,1350,1,190),
(48,0,0,200),
(49,2500,1,200),
(50,3000,1,130),
(51,2500,1,120);

SELECT * FROM seller;


INSERT INTO auctions
VALUES (1,1,113,2,5),
(2,1,114,5,18),
(3,1,115,10,7),
(4,1,116,35,20),
(5,1,117,23,9),
(6,1,118,42,10),
(7,1,119,33,3),
(8,1,120,34,4),
(9,1,121,21,13),
(10,1,122,12,5),
(11,1,123,8,5),
(12,1,124,9,6),
(13,1,125,3,20),
(14,1,126,75,5),
(15,1,127,82,4),
(16,1,128,73,12),
(17,1,129,54,6),
(18,1,130,65,11),
(19,1,131,82,19),
(20,1,132,93,12),
(21,1,133,99,18),
(22,1,134,64,15),
(23,1,135,24,5),
(24,1,136,34,6),
(25,1,137,65,1),
(26,1,138,71,1),
(27,1,139,34,20),
(28,1,140,44,17),
(29,1,141,55,16),
(30,1,142,55,13),
(31,1,143,21,8),
(32,1,144,13,2),
(33,1,145,12,13),
(34,1,146,11,8),
(35,1,147,45,13),
(36,1,148,32,13),
(37,1,149,73,12),
(38,1,150,65,13),
(39,1,151,82,9),
(40,1,152,90,13),
(41,1,153,83,7),
(42,1,154,94,9),
(43,1,155,100,10),
(44,1,156,25,10),
(45,1,157,66,18),
(46,1,158,65,19),
(47,1,159,52,6),
(48,1,160,33,1),
(49,1,161,13,3),
(50,1,162,12,4),
(51,1,163,1,11);

INSERT INTO seller_information
VALUES (6,"Deliveries often late"),
(10,"Great customer service"),
(11,"Horrible customer service"),
(17,"Communicative and honest"),
(18,"Great seller"),
(23,"Reliable"),
(26,"Can be hard to work with"),
(31,"Cheap items at a good price"),
(44,"Reputable"),
(49,"Very good items for cheap");

SELECT * FROM shipping_info;

ALTER TABLE auctions_info
DROP COLUMN item_price;

INSERT INTO auctions_info (aiauction_id, auction_time, auction_status, amount_bid)
VALUES (1,100,1,20), (2,0,0,45),
(3,250,1,3750),(4,3400,1,15000),(5,5000,1,35000),(6,350,1,250),(7,552,1,600),
(8,272,1,100),(9,344,1,300),(10,0,0,1250);

INSERT INTO item_info (iiitem_id, item_name, item_category, item_base_price, item_quality)
VALUES (61,'ASOIAF Series','BOOKS',15,'Some Damage'), (62,'Harry Potter Series','BOOKS',35,'Exceptional'),
(63,'','CARS',3500,'Terrible'),(64,'','CARS',10000,'Decent'),(65,'','CARS',25000,'Great'),(66,'KD55s','SNEAKERS',150,'Worn'),(67,'LeBrons Ltd. Ed.','SNEAKERS',450,'Brand New'),
(68,'Air Jordans','SNEAKERS',75,'Terrible'),(69,'Yeezys','SNEAKERS',250,'Worn, Great'),(70,'Roman Coin','COINS',300,'Mint Condition');

UPDATE item_info
SET item_name = 'Dodge Challenger'
Where iiitem_id = 65;

DELETE FROM items WHERE iitem_id = 112;

SET FOREIGN_KEY_CHECKS=0;

INSERT INTO items (access_seller_id)
VALUES (6), (10),
(11),(17),(18),(23),(26),
(31),(44),(49);


CREATE TABLE wallet(
	wallet_id INT NOT NULL AUTO_INCREMENT,
    access_user_id INT,
    PRIMARY KEY (wallet_id)
);

CREATE TABLE wallet_information(
	wiwallet_id INT,
    account_balance INT
);

CREATE TABLE seller(
	sseller_id INT NOT NULL AUTO_INCREMENT,
    seller_verification BOOL,
    item_selling_num INT,
    PRIMARY KEY (sseller_id)
);

CREATE TABLE seller_information(
	siseller_id INT,
    seller_reviews VARCHAR(300)
);

CREATE TABLE bidders(
	bbidder_id INT NOT NULL AUTO_INCREMENT,
    bidder_verification BOOL,
    auction_for_item_num INT,
    PRIMARY KEY (bbidder_id)
);

CREATE TABLE items(
	iitem_id INT NOT NULL AUTO_INCREMENT,
    auctioning_item_num INT,
    PRIMARY KEY (iitem_id)
);

CREATE TABLE item_info(
	iiitem_id INT,
    item_name varchar(300),
    item_category varchar(300),
    item_base_price INT,
    item_quality varchar(300),
    item_price INT
);

CREATE TABLE auctions(
	aauction_id INT NOT NULL AUTO_INCREMENT,
    auction_validity BOOL,
    item_id INT,
    PRIMARY KEY (aauction_id)
);

CREATE TABLE auctions_info(
	aiauction_id INT,
    auction_time INT,
    auction_status BOOL,
    amount_bid INT,
    item_price INT
);

CREATE TABLE shipping(
	shipping_id INT NOT NULL AUTO_INCREMENT,
    bidder_id INT,
    item_id INT,
    PRIMARY KEY (shipping_id)
);

CREATE TABLE shipping_info(
	sishipping_id INT,
    shipping_type varchar(300),
    shipping_updates varchar(300),
    shipping_receipt varchar(300),
    shipping_price INT
);

CREATE TABLE failed_bids(
	f_auction_bid INT,
    item_id INT,
    bidder_id INT,
    amount_bid INT NOT NULL
);

CREATE TABLE transactions(
	t_auction_id INT,
    bidder_id INT,
    shipping_info INT,
    t_wallet_payment_id INT
);

CREATE TABLE withdrawals(
	w_auction_id INT,
    seller_id INT,
    w_wallet_paid_id INT
);

ALTER TABLE login_information
ADD FOREIGN KEY (lgmember_id) REFERENCES users(umember_id);

ALTER TABLE personal_information
ADD FOREIGN KEY (pimember_id) REFERENCES users(umember_id);

ALTER TABLE wallet
ADD FOREIGN KEY (access_user_id) REFERENCES users(umember_id);

ALTER TABLE wallet_information
ADD FOREIGN KEY (wiwallet_id) REFERENCES wallet(wallet_id);

ALTER TABLE seller
ADD COLUMN access_user_id INT;

ALTER TABLE seller
ADD FOREIGN KEY (access_user_id) REFERENCES users(umember_id);

ALTER TABLE seller_information
ADD FOREIGN KEY (siseller_id) REFERENCES seller(sseller_id);

ALTER TABLE bidders
ADD FOREIGN KEY (access_user_id) REFERENCES users(umember_id);

ALTER TABLE items
ADD COLUMN access_seller_id INT;

ALTER TABLE item_info
ADD FOREIGN KEY (iiitem_id) REFERENCES items(iitem_id);

ALTER TABLE auctions
ADD COLUMN access_bidder_id INT;

ALTER TABLE auctions
ADD FOREIGN KEY (access_bidder_id) REFERENCES bidders(bbidder_id);

ALTER TABLE auctions_info
ADD FOREIGN KEY (aiauction_id) REFERENCES auctions(aauction_id);

ALTER TABLE auctions
ADD FOREIGN KEY (item_id) REFERENCES items(iitem_id);

ALTER TABLE shipping
ADD FOREIGN KEY (bidder_id) REFERENCES auctions(access_bidder_id);

ALTER TABLE shipping_info
ADD FOREIGN KEY (sishipping_id) REFERENCES shipping(shipping_id);

ALTER TABLE failed_bids
ADD FOREIGN KEY (f_auction_bid) REFERENCES auctions(aauction_id);

ALTER TABLE failed_bids
ADD FOREIGN KEY (item_id) REFERENCES auctions(item_id);

ALTER TABLE failed_bids
ADD FOREIGN KEY (bidder_id) REFERENCES auctions(access_bidder_id);

ALTER TABLE failed_bids
ADD FOREIGN KEY (amount_bid) REFERENCES wallet(wallet_id);

ALTER TABLE transactions
ADD FOREIGN KEY (t_auction_id) REFERENCES auctions(aauction_id);

ALTER TABLE transactions
ADD FOREIGN KEY (bidder_id) REFERENCES auctions(access_bidder_id);

ALTER TABLE transactions
ADD FOREIGN KEY (shipping_info) REFERENCES shipping(shipping_id);

ALTER TABLE transactions
ADD FOREIGN KEY (t_wallet_payment_id) REFERENCES wallet(wallet_id);

ALTER TABLE withdrawals
ADD FOREIGN KEY (w_auction_id) REFERENCES auctions(aauction_id);

ALTER TABLE withdrawals
ADD FOREIGN KEY (w_wallet_paid_id) REFERENCES wallet(wallet_id);

ALTER TABLE items
ADD FOREIGN KEY (access_seller_id) REFERENCES seller(sseller_id);

ALTER TABLE items
ADD COLUMN registered_item_check BOOL;

ALTER TABLE auctions
ADD FOREIGN KEY (access_seller_id) REFERENCES seller(sseller_id);

ALTER TABLE withdrawals
ADD FOREIGN KEY (w_auction_id) REFERENCES auctions(access_seller_id);

ALTER TABLE personal_information
MODIFY COLUMN dob date;

SELECT * FROM users;

SELECT
u.umember_id,
u.seller_num,
CONCAT(p.first_name, ' ' , p.last_name) as full_name,
si.seller_reviews,
ii.item_name,
ii.item_quality,
ii.item_category
FROM users u
LEFT JOIN personal_information p on u.umember_id = p.pimember_id
LEFT JOIN seller s on u.seller_num = s.sseller_id
LEFT JOIN seller_information si on s.sseller_id = si.siseller_id
LEFT JOIN items i on s.sseller_id = i.access_seller_id
LEFT JOIN item_info ii on i.iitem_id = ii.iiitem_id
WHERE seller_num > 0 AND item_name IS NOT NULL;

SELECT * FROM auctions_info;

SELECT
i1.full_name,
i1.item_category,
i1.amount_bid - i1.item_base_price as Profit
FROM (SELECT
u.umember_id,
u.seller_num,
CONCAT(p.first_name, ' ' , p.last_name) as full_name,
ii.item_name,
ii.item_category,
ii.item_base_price,
ai.amount_bid
FROM users u
LEFT JOIN personal_information p on u.umember_id = p.pimember_id
LEFT JOIN seller s on u.seller_num = s.sseller_id
LEFT JOIN items i on s.sseller_id = i.access_seller_id
LEFT JOIN item_info ii on i.iitem_id = ii.iiitem_id
LEFT JOIN auctions a on i.iitem_id = a.item_id
LEFT JOIN auctions_info ai on a.aauction_id = ai.aiauction_id
WHERE seller_num > 0 AND item_name IS NOT NULL AND aiauction_id IS NOT NULL) i1;

SELECT
u.umember_id,
u.seller_num,
CONCAT(p.first_name, ' ' , p.last_name) as full_name,
ii.item_name,
ii.item_category,
ii.item_quality,
ai.aiauction_id,
ii.item_base_price,
ai.amount_bid,
i.iitem_id
FROM users u
LEFT JOIN personal_information p on u.umember_id = p.pimember_id
LEFT JOIN seller s on u.seller_num = s.sseller_id
LEFT JOIN items i on s.sseller_id = i.access_seller_id
LEFT JOIN item_info ii on i.iitem_id = ii.iiitem_id
LEFT JOIN auctions a on i.iitem_id = a.item_id
LEFT JOIN auctions_info ai on a.aauction_id = ai.aiauction_id
WHERE seller_num > 0 AND item_name IS NOT NULL AND aiauction_id IS NOT NULL;

select * from items;

UPDATE auctions_info
SET access_bidder_id = 65
WHERE aiuction_id = 52;

SELECT * FROM auctions_info;

INSERT INTO auctions_info
VALUES (52,300,1,200),
(53,300,1,150);

SELECT
u.umember_id,
u.bidder_num,
CONCAT(p.first_name, ' ' , p.last_name) as full_name,
ii.item_name,
ii.item_category,
ii.item_quality,
ai.aiauction_id,
ai.amount_bid,
i.iitem_id
FROM users u
LEFT JOIN personal_information p on u.umember_id = p.pimember_id
LEFT JOIN bidders b on u.bidder_num = b.bbidder_id
LEFT JOIN auctions a on a.access_bidder_id = b.bbidder_id
LEFT JOIN items i on a.item_id = i.iitem_id
LEFT JOIN item_info ii on i.iitem_id = ii.iiitem_id
LEFT JOIN auctions_info ai on a.aauction_id = ai.aiauction_id
WHERE auction_status = 0 AND item_name IS NOT NULL AND aiauction_id IS NOT NULL;

SELECT * FROM wallet_information;
DELETE FROM wallet_information;

INSERT INTO wallet_information
VALUES(0,100000),
(1,100000),
(2,100000),
(3,100000),
(4,100000),
(5,100000),
(6,100000),
(7,100000),
(8,100000),
(9,100000),
(10,100000),
(11,100000),
(12,100000),
(13,100000),
(14,100000),
(15,100000),
(16,100000),
(17,100000),
(18,100000),
(19,100000),
(20,100000),
(21,100000),
(22,100000),
(23,100000),
(24,100000),
(25,100000),
(26,100000),
(27,100000),
(28,100000),
(29,100000),
(30,100000),
(31,100000),
(32,100000),
(33,100000),
(34,100000),
(35,100000),
(36,100000),
(37,100000),
(38,100000),
(39,100000),
(40,100000),
(41,100000),
(42,100000),
(43,100000),
(44,100000),
(45,100000),
(46,100000),
(47,100000),
(48,100000),
(49,100000),
(50,100000),
(51,100000),
(52,100000),
(53,100000),
(54,100000),
(55,100000),
(56,100000),
(57,100000),
(58,100000),
(59,100000),
(60,100000),
(61,100000),
(62,100000),
(63,100000),
(64,100000),
(65,100000),
(66,100000),
(67,100000),
(68,100000),
(69,100000),
(70,100000),
(71,100000),
(72,100000),
(73,100000),
(74,100000),
(75,100000),
(76,100000),
(77,100000),
(78,100000),
(79,100000),
(80,100000),
(81,100000),
(82,100000),
(83,100000),
(84,100000),
(85,100000),
(86,100000),
(87,100000),
(88,100000),
(89,100000),
(90,100000),
(91,100000),
(92,100000),
(93,100000),
(94,100000),
(95,100000),
(96,100000),
(97,100000),
(98,100000),
(99,100000),
(100,100000);

SELECT
u.umember_id,
u.bidder_num,
CONCAT(p.first_name, ' ' , p.last_name) as full_name,
ii.item_name,
ii.item_category,
ii.item_quality,
ai.aiauction_id,
ai.amount_bid,
i.iitem_id,
si.shipping_type,
si.shipping_price
FROM users u
LEFT JOIN personal_information p on u.umember_id = p.pimember_id
LEFT JOIN bidders b on u.bidder_num = b.bbidder_id
LEFT JOIN auctions a on a.access_bidder_id = b.bbidder_id
LEFT JOIN items i on a.item_id = i.iitem_id
LEFT JOIN item_info ii on i.iitem_id = ii.iiitem_id
LEFT JOIN auctions_info ai on a.aauction_id = ai.aiauction_id
LEFT JOIN shipping s on s.bidder_id = a.access_bidder_id
LEFT JOIN shipping_info si on si.sishipping_id = s.shipping_id
WHERE auction_status = 0 AND item_name IS NOT NULL AND aiauction_id IS NOT NULL;