CREATE TABLE region (
  Idregion int NOT NULL,
  NameRegion text,
  PRIMARY KEY (Idregion));
 
 INSERT INTO region VALUES (1,'Region1'),(2,'Region2'),(3,'Region3');

CREATE TABLE client1 (
  Idclient int NOT NULL,
  Name1 text,
  mail text,
  adress text,
  tel text,
  Idregion int DEFAULT NULL,
  Status1 varchar(45) DEFAULT NULL,
  PRIMARY KEY (Idclient),
   CONSTRAINT fk1 FOREIGN KEY (Idregion) REFERENCES region (Idregion));
   
  INSERT INTO client1 VALUES (1,'Name1','mail1','Adress1','tel1',1,NULL),(2,'Name2','mail2','Adress2','tel2',2,NULL),(3,'Name3','mail3','Adress3','tel3',1,NULL),(4,'Name4','mail4','Adress4','tel4',1,NULL),(5,'Name5','mail5','Adress5','tel5',3,NULL),(6,'Name6','mail6','Adress6','tel6',2,NULL),(7,'Name7','mail7','Adress7','tel7',3,NULL),(8,'Name8','mail8','Adress8','tel8',1,NULL);

 
 CREATE TABLE dogovor (
  IdOrder int NOT NULL,
  DateDog date DEFAULT NULL,
  Idclient int DEFAULT NULL,
  Total int DEFAULT NULL,
  PRIMARY KEY (IdOrder),
  CONSTRAINT fk5 FOREIGN KEY (Idclient) REFERENCES client1 (Idclient));
  
 INSERT INTO dogovor VALUES (1,'2023-01-02',1,NULL),(2,'2023-01-03',2,NULL),(3,'2023-01-04',4,NULL),(4,'2023-02-04',2,NULL),(5,'2023-02-05',5,NULL),(6,'2023-02-06',3,NULL),(7,'2023-03-06',8,NULL),(8,'2023-03-07',1,NULL),(9,'2023-03-08',2,NULL),(10,'2023-04-08',4,NULL),(11,'2023-04-09',3,NULL),(12,'2023-04-10',1,NULL);

CREATE TABLE product(
  Idprod int NOT NULL,
  NameProd char(10) DEFAULT NULL,
  characteristic1 char(20) DEFAULT NULL,
  characteristic2 char(20) DEFAULT NULL,
  Status1 varchar(45) DEFAULT NULL,
  balance int DEFAULT NULL,
  weightAvgPprice float DEFAULT NULL,
  PRIMARY KEY (Idprod));
  
INSERT INTO product VALUES (1,'NameProd1','char1','char21',NULL,NULL,NULL),(2,'NameProd2','char2','char22',NULL,NULL,NULL),(3,'NameProd3','char3','char23',NULL,NULL,NULL),(4,'NameProd4','char4','char21',NULL,NULL,NULL),(5,'NameProd5','char5','char23',NULL,NULL,NULL),(6,'NameProd6','char1','char21',NULL,NULL,NULL),(7,'NameProd7','char2','char22',NULL,NULL,NULL),(8,'NameProd8','char3','char23',NULL,NULL,NULL),(9,'NameProd9','char4','char24',NULL,NULL,NULL),(10,'NameProd10','char5','char22',NULL,NULL,NULL);
 
CREATE TABLE plan (
  NumMonth int NOT NULL,
  Idprod int NOT NULL,
  Quantity int DEFAULT NULL,
  PRIMARY KEY (NumMonth,Idprod),
  CONSTRAINT fk2 FOREIGN KEY (Idprod) REFERENCES product (Idprod));
 
 INSERT INTO plan VALUES (1,1,21),(1,2,26),(1,3,12),(1,4,21),(1,5,28),(1,6,40),(1,7,50),(1,8,28),(1,9,51),(1,10,25),(2,1,42),(2,2,12),(2,3,38),(2,4,24),(2,5,30),(2,6,70),(2,7,14),(2,8,50),(2,9,30),(2,10,23),(3,1,16),(3,2,16),(3,3,27),(3,4,19),(3,5,11),(3,6,21),(3,7,19),(3,8,16),(3,9,10),(3,10,24),(4,1,19),(4,2,11),(4,3,17),(4,4,11),(4,5,29),(4,6,18),(4,7,21),(4,8,13),(4,9,19),(4,10,13);

CREATE TABLE storage1 (
  Idstorage int NOT NULL,
  NameStorage char(10) DEFAULT NULL,
  PRIMARY KEY (Idstorage));
 
INSERT INTO storage1 VALUES (1,'Name1'),(2,'Name2'),(3,'Name3'); 

CREATE TABLE release1 (
  RelDate date NOT NULL,
  Idstorage int NOT NULL,
  Idprod int NOT NULL,
  Quantity int DEFAULT NULL,
  PRIMARY KEY (RelDate,Idstorage,Idprod),
  CONSTRAINT fk3 FOREIGN KEY (Idprod) REFERENCES product (Idprod),
  CONSTRAINT fk4 FOREIGN KEY (Idstorage) REFERENCES storage1 (Idstorage));
 
 INSERT INTO release1 VALUES ('2023-01-11',2,4,7),('2023-01-11',3,9,17),('2023-01-12',3,6,12),('2023-01-12',3,10,14),('2023-01-13',1,6,8),('2023-01-13',1,7,7),('2023-01-14',1,6,6),('2023-01-14',3,6,5),('2023-01-15',2,4,2),('2023-01-15',2,7,18),('2023-01-16',2,3,10),('2023-01-16',2,6,4),('2023-01-17',1,7,12),('2023-01-18',1,7,5),('2023-01-18',2,10,5),('2023-01-19',1,9,13),('2023-01-19',2,4,5),('2023-01-20',1,1,17),('2023-01-20',1,5,16),('2023-01-21',1,8,19),('2023-01-21',3,1,4),('2023-01-22',2,9,14),('2023-01-23',2,7,2),('2023-01-24',2,6,3),('2023-01-25',1,9,1),('2023-02-02',1,5,6),('2023-02-03',1,8,17),('2023-02-04',3,1,4),('2023-02-05',2,2,7),('2023-02-05',3,1,10),('2023-02-06',1,7,8),('2023-02-06',3,3,16),('2023-02-07',2,9,11),('2023-02-07',3,10,2),('2023-02-08',1,10,7),('2023-02-08',3,3,1),('2023-02-09',1,1,5),('2023-02-09',2,6,18),('2023-02-10',1,9,5),('2023-02-11',2,10,5),('2023-02-12',2,3,9),('2023-02-13',1,6,8),('2023-02-14',1,1,17),('2023-02-15',3,5,20),('2023-02-16',2,3,12),('2023-02-17',1,6,11),('2023-02-18',1,10,4),('2023-02-18',2,8,20),('2023-02-19',1,6,17),('2023-02-19',1,7,3),('2023-02-20',2,2,1),('2023-02-21',1,1,7),('2023-02-22',2,7,5),('2023-02-23',2,9,10),('2023-02-23',2,10,9),('2023-02-23',3,8,3),('2023-02-24',2,8,11),('2023-02-24',3,1,1),('2023-02-24',3,6,11),('2023-03-01',1,5,6),('2023-03-02',1,4,8),('2023-03-03',2,4,8),('2023-03-04',1,3,8),('2023-03-04',2,5,4),('2023-03-05',1,5,1),('2023-03-05',2,5,5),('2023-03-06',3,5,1),('2023-03-06',3,10,5),('2023-03-07',2,5,3),('2023-03-07',3,2,6),('2023-03-11',2,9,8),('2023-03-11',3,1,1),('2023-03-12',1,6,8),('2023-03-12',1,8,5),('2023-03-13',2,7,4),('2023-03-13',3,8,3),('2023-03-14',1,8,8),('2023-03-14',3,2,1),('2023-03-15',1,3,7),('2023-03-15',1,4,8),('2023-03-15',1,8,2),('2023-03-16',1,7,4),('2023-03-16',2,2,4),('2023-03-17',1,5,4),('2023-03-17',2,8,4),('2023-03-18',3,4,3),('2023-03-19',2,6,4),('2023-03-20',2,7,1),('2023-03-20',3,3,5),('2023-03-21',2,2,1),('2023-03-21',3,2,1),('2023-03-22',2,3,6),('2023-03-22',3,3,6),('2023-03-23',1,5,6),('2023-03-24',1,5,4),('2023-03-25',2,10,2),('2023-03-26',2,5,4),('2023-03-27',2,1,6),('2023-04-01',3,6,4),('2023-04-02',3,7,5),('2023-04-03',2,4,7),('2023-04-04',2,7,1),('2023-04-05',2,3,6),('2023-04-05',2,4,2),('2023-04-06',1,5,4),('2023-04-06',1,6,1),('2023-04-07',2,4,6),('2023-04-07',2,5,4),('2023-04-08',2,4,5),('2023-04-08',2,5,9),('2023-04-09',2,1,6),('2023-04-09',3,7,7),('2023-04-10',2,10,3),('2023-04-10',3,6,5),('2023-04-11',3,2,9),('2023-04-12',1,3,2),('2023-04-13',3,6,6),('2023-04-14',1,5,1),('2023-04-15',2,1,7),('2023-04-15',3,10,2),('2023-04-16',3,5,3),('2023-04-16',3,6,4),('2023-04-17',3,7,3),('2023-04-18',2,4,5),('2023-04-19',1,1,6),('2023-04-19',2,7,5),('2023-04-20',2,6,6),('2023-04-20',3,3,7),('2023-04-21',2,6,6),('2023-04-21',2,7,3),('2023-04-22',2,9,8),('2023-04-23',2,10,5),('2023-04-24',2,1,9);

CREATE TABLE delivery (
  Iddel int NOT NULL,
  DateDel date DEFAULT NULL,
  Iddogovor int DEFAULT NULL,
  TotalDel int DEFAULT NULL,
  PRIMARY KEY (Iddel),
  CONSTRAINT fk8 FOREIGN KEY (Iddogovor) REFERENCES dogovor (IdOrder));
 
INSERT INTO delivery VALUES (1,'2023-01-26',1,NULL),(2,'2023-01-27',1,NULL),(3,'2023-01-28',2,NULL),(4,'2023-01-29',2,NULL),(5,'2023-01-29',3,NULL),(6,'2023-01-30',3,NULL),(7,'2023-02-15',4,NULL),(8,'2023-02-16',5,NULL),(9,'2023-02-17',6,NULL),(10,'2023-02-18',6,NULL),(11,'2023-02-19',6,NULL),(12,'2023-03-17',7,NULL),(13,'2023-03-18',7,NULL),(14,'2023-03-19',8,NULL),(15,'2023-03-20',9,NULL),(16,'2023-03-21',9,NULL),(17,'2023-04-17',10,NULL),(18,'2023-04-18',10,NULL);
 
CREATE TABLE specdeliv (
  Iddel int NOT NULL,
  Idprod int NOT NULL,
  Price int DEFAULT NULL,
  QuantityDel int DEFAULT NULL,
  PRIMARY KEY (Iddel,Idprod),
  CONSTRAINT fk10 FOREIGN KEY (Idprod) REFERENCES product (Idprod),
  CONSTRAINT fk9 FOREIGN KEY (Iddel) REFERENCES delivery (Iddel)
);


INSERT INTO specdeliv VALUES (1,2,2200,3),(1,3,3300,5),(2,2,2200,4),(3,3,3300,6),(3,4,4400,3),(4,4,4400,2),(5,5,5500,3),(6,5,5500,3),(6,6,6600,9),(7,10,1100,3),(8,3,3300,8),(8,4,4400,5),(9,6,6600,2),(9,7,8050,3),(10,6,6600,2),(11,6,6600,2),(11,7,8050,4),(12,1,1150,8),(12,4,4600,4),(13,4,4600,4),(13,6,6900,4),(14,8,9200,3),(15,3,3450,4),(15,5,5750,7),(16,3,3450,4),(16,4,4600,9),(17,1,1200,6),(17,3,3600,1),(18,3,3600,10);



 
 
 
 
 
 

 
 
  
 
 
 
 
 