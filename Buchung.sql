use Datenbank;
drop table if exists Buchung

# Erstellen der Tabelle "Buchung"
create table Buchung(
  kundeid int(100),
  speisen int(1),
  getraenke int(1),
  unterhaltungen int(1),
  extras int (1),

  PRIMARY KEY (kundeid),
  FOREIGN KEY (kundeid) references Kundendaten (id)
);

#Füllen der Tabelle "Buchung"
insert into Buchung values (001,2,4,1,1);

select Kundendaten.id, Buchung.speisen,
      from Buchung, Kundendaten
      where ;