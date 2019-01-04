SHOW DATABASES;


create schema if not exists Eintrag;
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


create table if not exists Buchung(
  Buchung int(1),
  kundeid int(100),
  speisen boolean,
  getraenke boolean,
  unterhaltungen boolean,
  extras boolean,

  PRIMARY KEY (kundeid),
  PRIMARY KEY (Buchung),
  FOREIGN KEY (kundeid) references Kundendaten (id)
);

create table if not exists speisen(
  Buchungsid int(1),

  Hochzeitssuppe int(1),


  PRIMARY KEY (Buchungsid),
  Foreign Key (Buchungsid) references Buchung (Buchung)
);

create table if not exists getraenke(
  Buchungsid int(1),

  Hochzeitssuppe int(1),


  PRIMARY KEY (Buchungsid),
  Foreign Key (Buchungsid) references Buchung (Buchung)
);

create table if not exists unterhaltungen(
  Buchungsid int(1),

  Hochzeitssuppe int(1),


  PRIMARY KEY (Buchungsid),
  Foreign Key (Buchungsid) references Buchung (Buchung)
);

create table if not exists extras(
  Buchungsid int(1),

  Hochzeitssuppe int(1),


  PRIMARY KEY (Buchungsid),
  Foreign Key (Buchungsid) references Buchung (Buchung)
);



show COLUMNS from Kundendaten;
show columns from Buchung;
show columns from speisen;
show columns from getraenke;
show columns from unterhaltungen;
show columns from extras;

/* drop schema Eintrag;