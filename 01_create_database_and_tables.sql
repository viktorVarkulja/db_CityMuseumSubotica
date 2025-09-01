USE master;
GO
IF EXISTS (SELECT NAME 
           FROM   master.dbo.sysdatabases 
            WHERE  NAME = N'PodrskaRadaMuzeja')

BEGIN
DROP DATABASE PodrskaRadaMuzeja; 
END

CREATE DATABASE PodrskaRadaMuzeja; 
GO
USE PodrskaRadaMuzeja; 

CREATE TABLE [Saradnik] 
  ( 
     [Sifra_Sarad#] [INT] NOT NULL, 
     [Ime]           [NVARCHAR](30) NOT NULL, 
     [Prezime]       [NVARCHAR](30) NOT NULL, 
     [Plata]         [MONEY] NOT NULL, 
     [JMBG]          [NUMERIC](18, 0) NOT NULL, 
     PRIMARY KEY ([Sifra_Sarad#]) 
  ); 
CREATE TABLE [Radnik] 
  ( 
     [Sifra_Rad#] [INT] NOT NULL, 
     [Ime]         [NVARCHAR](30) NOT NULL, 
     [Prezime]     [NVARCHAR](30) NOT NULL, 
     [Plata]       [MONEY] NOT NULL, 
     [JMBG]        [NUMERIC](18, 0) NOT NULL, 
     [Pol]         [NVARCHAR](1) NOT NULL, 
     PRIMARY KEY ([Sifra_Rad#]) 
  ); 
CREATE TABLE [Skladiste] 
  ( 
     [Sifra_Sklad#]  [INT] NOT NULL, 
     [Lokacija_Sklad] [NVARCHAR](30) NOT NULL, 
     PRIMARY KEY ([Sifra_Sklad#])
  ); 
CREATE TABLE [Odeljenje] 
  ( 
     [ID_Odlj#]        [INT] NOT NULL, 
     [Naziv_Odlj]      [NVARCHAR] (50) NOT NULL, 
     [Sifra_Sklad#fk] [INT] NOT NULL, 
     PRIMARY KEY ([ID_Odlj#]), 
     FOREIGN KEY ([Sifra_Sklad#fk]) REFERENCES [Skladiste] ([Sifra_Sklad#])
  ); 
  CREATE TABLE [RadnoMesto] 
  ( 
     [Sifra_RM#] [INT] NOT NULL, 
     [Naziv_RM]   [NVARCHAR] (50) NOT NULL, 
     [ID_Odlj#fk] [INT] NOT NULL, 
     PRIMARY KEY ([Sifra_RM#]), 
     FOREIGN KEY ([ID_Odlj#fk]) REFERENCES [Odeljenje] ([ID_Odlj#]), 
  )
CREATE TABLE [Angazovanje_Sarad] 
  ( 
     [Datum_Od#]       [DATE] NOT NULL, 
     [Datum_Do]        [DATE] NULL, 
     [Sifra_Sarad#fk] [INT] NOT NULL, 
     [Sifra_RM#fk]    [INT] NOT NULL, 
     PRIMARY KEY ([Datum_Od#], [Sifra_Sarad#fk], [Sifra_RM#fk]), 
     FOREIGN KEY ([Sifra_Sarad#fk]) REFERENCES [Saradnik] ([Sifra_Sarad#]), 
     FOREIGN KEY ([Sifra_RM#fk]) REFERENCES [RadnoMesto] ([Sifra_RM#])
  ); 
CREATE TABLE [Angazovanje_Rad] 
  ( 
     [Datum_Od#]     [DATE] NOT NULL, 
     [Datum_Do]      [DATE] NULL, 
     [Sifra_Rad#fk] [INT] NOT NULL, 
     [Sifra_RM#fk]  [INT] NOT NULL, 
     PRIMARY KEY ([Datum_Od#], [Sifra_Rad#fk], [Sifra_RM#fk]), 
     FOREIGN KEY ([Sifra_Rad#fk]) REFERENCES [Radnik] ([Sifra_Rad#])
, 
     FOREIGN KEY ([Sifra_RM#fk]) REFERENCES [RadnoMesto] ([Sifra_RM#])
  ); 
CREATE TABLE [Zbirka] 
  ( 
     [Sifra_Zbr#]     [INT] NOT NULL, 
     [Naziv_Zbr]       [NVARCHAR](50) NOT NULL, 
     [Br_Predmeta]     [INT] NOT NULL, 
     [Br_Dig_Predmeta] [INT] NOT NULL, 
     [ID_Odlj#fk]      [INT] NOT NULL, 
     PRIMARY KEY ([Sifra_Zbr#]), 
     FOREIGN KEY ([ID_Odlj#fk]) REFERENCES [Odeljenje] ([ID_Odlj#])
  ); 
CREATE TABLE [Zaposlenje] 
  ( 
     [Sifra_Rad#fk] [INT] NOT NULL, 
     [ID_Odlj#fk]    [INT] NOT NULL, 
     PRIMARY KEY ([Sifra_Rad#fk]), 
     FOREIGN KEY ([Sifra_Rad#fk]) REFERENCES [Radnik] ([Sifra_Rad#])
    , 
     FOREIGN KEY ([ID_Odlj#fk]) REFERENCES [Odeljenje] ([ID_Odlj#])
  ); 
CREATE TABLE [Mesto] 
  ( 
     [Ime_Zgrada#] [NVARCHAR](30) NOT NULL, 
     [Ime_Grada]   [NVARCHAR](30) NOT NULL, 
     PRIMARY KEY ([Ime_Zgrada#])
  ); 
CREATE TABLE [Izlozbe] 
  ( 
     [Sifra_Izloz#]  [INT] NOT NULL, 
     [Ime_Izloz]      [NVARCHAR](50) NOT NULL, 
     [Ime_Sale]        [NVARCHAR](30) NOT NULL, 
     [Datum_Od_Izloz] [DATE] NOT NULL, 
     [Datum_Do_Izloz] [DATE] NULL, 
     [Ime_Zgrada#fk]   [NVARCHAR](30) NOT NULL, 
     PRIMARY KEY ([Sifra_Izloz#]), 
     FOREIGN KEY ([Ime_Zgrada#fk]) REFERENCES [Mesto] ([Ime_Zgrada#]
)
  ); 
CREATE TABLE [Blagajna] 
  ( 
     [Sifra_Blag#] [INT] NOT NULL, 
     [Racun_Blag]  [NVARCHAR](30) NOT NULL, 
     PRIMARY KEY ([Sifra_Blag#])
  );CREATE TABLE [Cenovnik] 
  ( 
     [Sif_Cenov#] [INT] NOT NULL, 
     [Cene]       [MONEY] NOT NULL, 
     PRIMARY KEY ([Sif_Cenov#])
  ); 
CREATE TABLE [Ulaznica] 
  ( 
     [Sif_Cenov#fk]    [INT] NOT NULL, 
     [Iznos]          [MONEY] NOT NULL, 
     [Sifra_Blag#fk]   [INT] NOT NULL, 
     [Sifra_Izloz#fk] [INT] NOT NULL, 
     PRIMARY KEY ([Sif_Cenov#fk]), 
     FOREIGN KEY ([Sif_Cenov#fk]) REFERENCES [Cenovnik] ([Sif_Cenov#]), 
     FOREIGN KEY ([Sifra_Izloz#fk]) REFERENCES [Izlozbe] ([Sifra_Izloz#]), 
     FOREIGN KEY ([Sifra_Blag#fk]) REFERENCES [Blagajna] ([Sifra_Blag#])
  ); 
CREATE TABLE [StalnePostavke] 
  ( 
     [Sifra_Izloz#fk] [INT] NOT NULL, 
     [Ime_Izloz]      [NVARCHAR](50) NOT NULL, 
     PRIMARY KEY ([Sifra_Izloz#fk]), 
     FOREIGN KEY ([Sifra_Izloz#fk]) REFERENCES [Izlozbe] ([Sifra_Izloz#])
  ); 
CREATE TABLE [TematskeIzlozbe] 
  ( 
     [Sifra_Izloz#fk] [INT] NOT NULL, 
     [Ime_Izloz]      [NVARCHAR](50) NOT NULL, 
     PRIMARY KEY ([Sifra_Izloz#fk]), 
     FOREIGN KEY ([Sifra_Izloz#fk]) REFERENCES [Izlozbe] ([Sifra_Izloz#])
  ); 
CREATE TABLE [Autor] 
  ( 
     [Sifra_Rad#fk] [INT] NOT NULL, 
     [Ime_Radnik]   [NVARCHAR](30) NOT NULL, 
     PRIMARY KEY ([Sifra_Rad#fk]), 
     FOREIGN KEY ([Sifra_Rad#fk]) REFERENCES [Radnik] ([Sifra_Rad#])
  ); 
CREATE TABLE [Vodi] 
  ( 
     [Sifra_Rad#fk]    [INT] NOT NULL, 
     [Sifra_Izloz#fk] [INT] NOT NULL, 
     PRIMARY KEY ([Sifra_Rad#fk], [Sifra_Izloz#fk]), 
     FOREIGN KEY ([Sifra_Rad#fk]) REFERENCES [Autor] ([Sifra_Rad#fk]
), 
     FOREIGN KEY ([Sifra_Izloz#fk]) REFERENCES [TematskeIzlozbe] ( 
     [Sifra_Izloz#fk])
  ); 
CREATE TABLE [Predavanje] 
  ( 
     [Sifra_Pred#] [INT] NOT NULL, 
     [Ime_Pred]     [NVARCHAR](100) NOT NULL, 
     [Ime_Sale]     [NVARCHAR](30) NOT NULL, 
     [Datum_Pred]   [DATE] NOT NULL, 
     PRIMARY KEY ([Sifra_Pred#])
  ); 
CREATE TABLE [Predavac] 
  ( 
     [Sifra_Rad#fk] [INT] NOT NULL, 
     [Ime_Radnik]   [NVARCHAR](30) NOT NULL, 
     PRIMARY KEY ([Sifra_Rad#fk]), 
     FOREIGN KEY ([Sifra_Rad#fk]) REFERENCES [Radnik] ([Sifra_Rad#])
  ); 
  CREATE TABLE [Predaje] 
  ( 
     [Sifra_Rad#fk]  [INT] NOT NULL, 
     [Sifra_Pred#fk] [INT] NOT NULL, 
     PRIMARY KEY ([Sifra_Rad#fk], [Sifra_Pred#fk]), 
     FOREIGN KEY ([Sifra_Rad#fk]) REFERENCES [Predavac] ([Sifra_Rad#fk]), 
     FOREIGN KEY ([Sifra_Pred#fk]) REFERENCES [Predavanje] ([Sifra_Pred#])
  ); 
CREATE TABLE [OdrzavanjeKvaliteta] 
  ( 
     [Br_Dosije#]        [INT] NOT NULL, 
     [Inv_Br_Predm]      [INT] NOT NULL, 
     [Muzej_Odrz]       [NVARCHAR](50) NOT NULL, 
     [Oznaci_Dosije]     [NVARCHAR](10) NOT NULL, 
     [Ime_Autora]        [NVARCHAR] (30) NULL, 
     [Dat_Ulz_Predm]     [DATE] NOT NULL, 
     [Ime_Vlas]          [NVARCHAR] (30) NOT NULL, 
     [Ime_Zbir]          [NVARCHAR] (50) NOT NULL, 
     [Naziv_Predm]       [NVARCHAR] (50) NOT NULL, 
     [Dimenzije_Predm]   [NVARCHAR] (30) NULL, 
     [I_Osob_Podn_Zahtv] [NVARCHAR] (30) NOT NULL, 
     [I_Osob_Predat_Ulz] [NVARCHAR] (30) NOT NULL, 
     [I_Osob_Predat_Izl] [NVARCHAR] (30) NOT NULL, 
     [I_Osob_Prim_Ulz]   [NVARCHAR] (30) NOT NULL, 
     [I_Osob_Prim_Izl]   [NVARCHAR] (30) NOT NULL, 
     [Dat_Izl_Predm]     [DATE] NOT NULL, 
     [Ranije_Intrv]      [NVARCHAR] (30) NULL, 
     PRIMARY KEY ([Br_Dosije#])
  ); 
CREATE TABLE [Konzervacija] 
  ( 
     [Br_Dosije#fk] [INT] NOT NULL, 
     [Ime_Konzrv]  [NVARCHAR] (30) NOT NULL, 
     PRIMARY KEY ([Br_Dosije#fk]), 
   FOREIGN KEY ([Br_Dosije#fk]) REFERENCES [OdrzavanjeKvaliteta] ([Br_Dosije#])
  ); 
CREATE TABLE [Restauracija] 
  ( 
     [Br_Dosije#fk] [INT] NOT NULL, 
     [Ime_Restaur] [NVARCHAR] (30) NOT NULL, 
     PRIMARY KEY ([Br_Dosije#fk]), 
     FOREIGN KEY ([Br_Dosije#fk]) REFERENCES [OdrzavanjeKvaliteta] (
[Br_Dosije#])
  ); CREATE TABLE [Donator] 
  ( 
     [ID_Don#]    [INT] NOT NULL, 
     [Mesto]      [NVARCHAR] (30) NOT NULL, 
     [Adresa]     [NVARCHAR] (30) NOT NULL, 
     [E_Mail]     [NVARCHAR] (30) NULL, 
     [Br_Telefon] [INT] NULL, 
     PRIMARY KEY ([ID_Don#])
  ); 
CREATE TABLE [FizickoLice] 
  ( 
     [ID_Don#fk]    [INT] NOT NULL, 
     [Ime_Prezime] [NVARCHAR] (30) NOT NULL, 
     PRIMARY KEY ([ID_Don#fk]), 
     FOREIGN KEY ([ID_Don#fk]) REFERENCES [Donator] ([ID_Don#])
  ); 
CREATE TABLE [PravnoLice] 
  ( 
     [ID_Don#fk]    [INT] NOT NULL, 
     [Naziv_Firme] [NVARCHAR] (30) NOT NULL, 
     PRIMARY KEY ([ID_Don#fk]), 
     FOREIGN KEY ([ID_Don#fk]) REFERENCES [Donator] ([ID_Don#]), 
  ); 
CREATE TABLE [Predmet] 
  ( 
     [Inv_Br#]            [INT] NOT NULL, 
     [Dig_Sifra]        [NVARCHAR](10) NOT NULL, 
     [Vrednost]           [MONEY] NOT NULL, 
     [Br_Ulaz_Knjig]      [INT] NOT NULL, 
     [Naziv]              [NVARCHAR] (50) NOT NULL, 
     [Mesto_Izrd]         [NVARCHAR] (30) NULL, 
     [Vreme_Izrd]         [NVARCHAR] (30) NULL, 
     [Sif_Nacin_Nabavk] [INT] NOT NULL, 
     [Autor/Vlasnik]      [NVARCHAR] (30) NULL, 
     [Stil/Skola]        [NVARCHAR] (30) NULL, 
     [Materijal_Tehnike]  [NVARCHAR] (30) NULL, 
     [Dimenzije]          [NVARCHAR] (30) NULL, 
     [Napomena]           [NVARCHAR] (30) NULL, 
     [Br_Delova]          [INT] NULL, 
     [Sifra_Zbr#fk]      [INT] NOT NULL, 
     [ID_Don#fk]          [INT] NULL, 
     [Br_Dosije#fk]       [INT] NULL, 
     PRIMARY KEY ([Inv_Br#]), 
     FOREIGN KEY ([ID_Don#fk]) REFERENCES [Donator] ([ID_Don#]), 
     FOREIGN KEY ([Br_Dosije#fk]) REFERENCES [OdrzavanjeKvaliteta] ( 
     [Br_Dosije#]), 
     FOREIGN KEY ([Sifra_Zbr#fk]) REFERENCES [Zbirka] ([Sifra_Zbr#])
  ); 
CREATE TABLE [Izlozbeno] 
  ( 
     [Inv_Br#fk]        [INT] NOT NULL, 
     [Sifra_Izloz#fk] [INT] NOT NULL, 
     PRIMARY KEY ([Inv_Br#fk]), 
     FOREIGN KEY ([Sifra_Izloz#fk]) REFERENCES [Izlozbe] ([Sifra_Izloz#]), 
     FOREIGN KEY ([Inv_Br#fk]) REFERENCES [Predmet] ([Inv_Br#]));  
