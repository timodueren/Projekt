use Datenbank;
drop table if exists Kundendaten

# Erstellen der Tabelle "Kundendaten"
create table Kundendaten(
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

# Füllen der Tabelle "Kundendaten"
insert into Kundendaten values (001,'Müller','Sandra','Lingener Straße',9,49809,'samüller','passwort3'),
                              (002,'Schneider','Andre','Osnabrücker Straße', 40, 49808, 'anschneider','kennwort0');

# Abfragen der Tabelle "Kundendaten"
# Adresse
select strasse, hausnummer, postleitzahl from Kundendaten;
