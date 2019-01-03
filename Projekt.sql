SHOW DATABASES;


create schema Eintrag;
USE Eintrag;

create table if not exists Kundendaten(
  id int (100),
  name varchar(255),
  vorname varchar(255),
  strasse varchar(255),
  hausnummer varchar(10),
  postleitzahl int(5),
  loginname varchar(20),
  loginpasswort varchar(20),
  PRIMARY KEY (id)
);


create table Buchung(
  kundeid int(100),
  speisen int(1),
  getraenke int(1),
  unterhaltungen int(1),
  extras int (1),

  PRIMARY KEY (kundeid),
  FOREIGN KEY (kundeid) references Kundendaten (id)
);




show COLUMNS from Kundendaten;
show columns from Buchung;

drop schema Eintrag;