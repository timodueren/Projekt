SHOW DATABASES;

create schema if not exists Eintrag;
USE Eintrag;

/* drop table if exists Kundendaten*/

/* Erstellen der Tabelle "Kundendaten"*/
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

/* Füllen der Tabelle "Kundendaten"*/
insert into Kundendaten values (001,'Müller','Sandra','Lingener Straße',9,49809,'samüller','passwort3'),
                              (002,'Schneider','Andre','Osnabrücker Straße', 40, 49808, 'anschneider','kennwort0');

/* Abfragen der Tabelle "Kundendaten"*/
select strasse, hausnummer, postleitzahl from Kundendaten;






create table if not exists Buchung(
  Buchung int(100),
  kundeid int(100),
  speisen boolean,
  getraenke boolean,
  unterhaltungen boolean,
  extras boolean,
  PRIMARY KEY (kundeid),
  PRIMARY KEY (Buchung),
  FOREIGN KEY (kundeid) references Kundendaten (id)
);


/*Füllen der Tabelle "Buchung"*/
insert into Buchung values (001,2,4,1,1);

/* select Kundendaten.id, Buchung.speisen,
      from Buchung, Kundendaten
      where ;
*/






create table if not exists speisen(
  Buchungsid int(100),
  Hochzeitssuppe int(100),
  Tomatensuppe int(100),
  Porreecremesuppe int(100),
  Gulaschsuppe int(100),
  Gyrossuppe int(100),
  Hähnchenschnitzel und Kartoffelsalat int(100),
  Leberkäse mit Kartoffelpüree int(100),
  Sauerfleisch mit Bratkartoffeln und Remouladensoße int(100),
  Matjes mit gepellten Kartoffeln und Butterbohnen int(100),
  Kohlrouladen mit Salzkartoffeln und Weißkohlgemüse int(100),
  Gyrosbraten mit Kartoffelgratin, Tzatziki und Krautsalat int(100),
  Sahneschnitzel mit Salzkartoffeln, Gemüse und Salat int(100),
  Geschnetzeltes Schweinefilet mit Butterspätzle und Gemüse int(100),
  Gratiniertes Schweinefilet auf Penne int(100),
  Gebratene Nudeln mit Gemüse int(100),
  Nudelngemüseauflauf int(100),
  Gemüseauflauf int(100),
  Falaffel mit Kräutersoße, Baguette und Salat int(100),
  Gemischter Salat int (100)
  Eis mit heißen Früchten int(100),
  Mousse au Chocolatint(100),
  Crème Brûlée int(100),
  Tiramisu int (100),
  Panna Cotta int (100),

  PRIMARY KEY (Buchungsid),
  Foreign Key (Buchungsid) references Buchung (Buchung)
);

insert into speisen values (2,10,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,10,0,0,);







create table if not exists getraenke(
  Buchungsid int(100),
  Filterkaffee int (100),
  Cappuccino int (100),
  Latte Macchiato int (100),
  Tee verschiederner Sorten int (100),
  Heiße Schokolade int (100),
  Heiße weiße Schokolade int (100),
  Wasser Naturelle int (100),
  Wasser Medium int (100),
  Wasser Classic int (100),
  Coca-Cola int (100),
  Fanta int (100),
  Sprite int (100),
  Apfelsaft int (100),
  Apfelschorle int (100),
  Orangensaft int (100),
  Bitburger int (100),
  Bitburger alkoholfrei int (100),
  Radler int (100),
  Hefeweizen Hell/Dunkel int (100),
  Hefeweizen alkoholfrei int (100),
  Riesling trocken int (100),
  Grauburgunder int (100),
  Pinot Noir Rosé int (100),
  Chiantin int (100),
  Spätburgunder int (100),
  Tempranillo int (100),
  Caipirinha int (100),
  Mojito int (100),
  Cuba Libre int (100),
  Tequila Sunrise int (100),
  Long Island Iced Tea int (100),
  Ipanema (alkoholfrei) int (100),
  Virgin Mule (alkoholfrei) int (100),
  Sambuca int (100),
  43er int (100),
  Baileys int (100),
  Jägermeister int (100),
  Tequila int (100),
  Wodka int (100),
  Obstbrände verschiedene Sorten int (100),
  Cognac int (100),
  Whisky int (100),
  PRIMARY KEY (Buchungsid),
  Foreign Key (Buchungsid) references Buchung (Buchung)
);

insert into getraenke values (2,20,0,0,0,0,40,40,40,40,40,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,);






create table if not exists unterhaltungen(
  Buchungsid int(100),
  DJ int(100),
  Live-Band int(100),
  Artisten int(100),
  Comedian int(100),
  Clowns int(100),
  Bauchredner int(100),

  PRIMARY KEY (Buchungsid),
  Foreign Key (Buchungsid) references Buchung (Buchung)
);

insert into unterhaltungen values (2,0,5,0,0,0,1);







create table if not exists extras(
  Buchungsid int(100),
  Hüpfburgen int(100),
  Trampoline int(100),
  Durchführung von Partyspielen int(100),
  Puppentheater int(100),
  Heizpilz int(100),
  Barista int(100),
  PRIMARY KEY (Buchungsid),
  Foreign Key (Buchungsid) references Buchung (Buchung)
  );

insert into extras values (2,0,3,3,0,0,0);



show COLUMNS from Kundendaten;
show columns from Buchung;
show columns from speisen;
show columns from getraenke;
show columns from unterhaltungen;
show columns from extras;

/* drop schema Eintrag;