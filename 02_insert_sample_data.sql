USE PodrskaRadaMuzeja;
GO

--[Saradnik]
INSERT [dbo].[Saradnik] ([Sifra_Sarad#], [Ime], [Prezime], [Plata], [JMBG]) VALUES (24, N'DAMIR', N'BUBIC', 52200.0000,  CAST(1234567890123 AS Numeric(18, 0)))
INSERT [dbo].[Saradnik] ([Sifra_Sarad#], [Ime], [Prezime], [Plata], [JMBG]) VALUES (45, N'SLAVICA', N'POPOV', 63200.0000,  CAST(1234567890123 AS Numeric(18, 0)))
INSERT [dbo].[Saradnik] ([Sifra_Sarad#], [Ime], [Prezime], [Plata], [JMBG]) VALUES (49, N'LEILA', N'KURDALI', 37500.0000,  CAST(1234567890123 AS Numeric(18, 0)))
INSERT [dbo].[Saradnik] ([Sifra_Sarad#], [Ime], [Prezime], [Plata], [JMBG]) VALUES (153, N'VANJA', N'VANJA', 37500.0000,  CAST(1234567890123 AS Numeric(18, 0)))
INSERT [dbo].[Saradnik] ([Sifra_Sarad#], [Ime], [Prezime], [Plata], [JMBG]) VALUES (172, N'MILOS', N'ARSIC', 36400.0000,  CAST(1234567890123 AS Numeric(18, 0)))
INSERT [dbo].[Saradnik] ([Sifra_Sarad#], [Ime], [Prezime], [Plata], [JMBG]) VALUES (181, N'IVANA', N'MARIC', 74200.0000,  CAST(1234567890123 AS Numeric(18, 0)))

--[Radnik]
INSERT [dbo].[Radnik] ([Sifra_Rad#], [Ime], [Prezime], [Plata], [JMBG], [Pol]) VALUES (4, N'OLGA', N'NINKOV', 44800.0000,  CAST(1234567890123 AS Numeric(18, 0)), N'Z')
INSERT [dbo].[Radnik] ([Sifra_Rad#], [Ime], [Prezime], [Plata], [JMBG], [Pol]) VALUES (11, N'JUDIT', N'RAFFAI', 44800.0000,  CAST(1234567890123 AS Numeric(18, 0)), N'Z')
INSERT [dbo].[Radnik] ([Sifra_Rad#], [Ime], [Prezime], [Plata], [JMBG], [Pol]) VALUES (25,N'ESTER', N'BAJARI',  52000.0000,  CAST(1234567890123 AS Numeric(18, 0)), N'Z')
INSERT [dbo].[Radnik] ([Sifra_Rad#], [Ime], [Prezime], [Plata], [JMBG], [Pol]) VALUES (26, N'NIKOLA', N'NIKOLOV', 44000.0000,  CAST(1234567890123 AS Numeric(18, 0)), N'Z')
INSERT [dbo].[Radnik] ([Sifra_Rad#], [Ime], [Prezime], [Plata], [JMBG], [Pol]) VALUES (30,  N'ROBERT',N'KOVAC', 35000.0000,  CAST(1234567890123 AS Numeric(18, 0)), N'M')
INSERT [dbo].[Radnik] ([Sifra_Rad#], [Ime], [Prezime], [Plata], [JMBG], [Pol]) VALUES (45,N'JANOS', N'KISPALKO',  52000.0000,  CAST(1234567890123 AS Numeric(18, 0)), N'M')
INSERT [dbo].[Radnik] ([Sifra_Rad#], [Ime], [Prezime], [Plata], [JMBG], [Pol]) VALUES (55,  N'CABA',N'LALIC', 52000.0000,  CAST(1234567890123 AS Numeric(18, 0)), N'M')

--[Skladiste]
INSERT [dbo].[Skladiste] ([Sifra_Sklad#], [Lokacija_Sklad]) VALUES (1, N'Gradski Muzej Subotica')
INSERT [dbo].[Skladiste] ([Sifra_Sklad#], [Lokacija_Sklad]) VALUES (2, N'Gradski Muzej Subotica')
INSERT [dbo].[Skladiste] ([Sifra_Sklad#], [Lokacija_Sklad]) VALUES (3, N'Gradski Muzej Subotica')
INSERT [dbo].[Skladiste] ([Sifra_Sklad#], [Lokacija_Sklad]) VALUES (4, N'Gradski Muzej Subotica')
INSERT [dbo].[Skladiste] ([Sifra_Sklad#], [Lokacija_Sklad]) VALUES (5, N'Gradski Muzej Subotica')
INSERT [dbo].[Skladiste] ([Sifra_Sklad#], [Lokacija_Sklad]) VALUES (6, N'Gradski Muzej Subotica')
INSERT [dbo].[Skladiste] ([Sifra_Sklad#], [Lokacija_Sklad]) VALUES (7, N'Gradski Muzej Subotica')
INSERT [dbo].[Skladiste] ([Sifra_Sklad#], [Lokacija_Sklad]) VALUES (8, N'Gradski Muzej Subotica')
INSERT [dbo].[Skladiste] ([Sifra_Sklad#], [Lokacija_Sklad]) VALUES (9, N'Gradski Muzej Subotica')
INSERT [dbo].[Skladiste] ([Sifra_Sklad#], [Lokacija_Sklad]) VALUES (10, N'Gradski Muzej Backa Topola')

--[Odeljenje]
INSERT [dbo].[Odeljenje] ([ID_Odlj#], [Naziv_Odlj], [Sifra_Sklad#fk]) VALUES (100100, N'GRADSKI MUZEJ - OPSTA SLUZBA', 1)
INSERT [dbo].[Odeljenje] ([ID_Odlj#], [Naziv_Odlj], [Sifra_Sklad#fk]) VALUES (100200, N'ARHEOLOSKO ODELJENJE', 2)
INSERT [dbo].[Odeljenje] ([ID_Odlj#], [Naziv_Odlj], [Sifra_Sklad#fk]) VALUES (100300, N'ETNOLOSKO ODELJENJE', 3)
INSERT [dbo].[Odeljenje] ([ID_Odlj#], [Naziv_Odlj], [Sifra_Sklad#fk]) VALUES (100400, N'ISTORIJSKO ODELJENJE', 4)
INSERT [dbo].[Odeljenje] ([ID_Odlj#], [Naziv_Odlj], [Sifra_Sklad#fk]) VALUES (100500, N'PRIRODNJACKO ODELJENJE', 5)
INSERT [dbo].[Odeljenje] ([ID_Odlj#], [Naziv_Odlj], [Sifra_Sklad#fk]) VALUES (100600, N'UMETNICKO ODELJENJE', 6)
INSERT [dbo].[Odeljenje] ([ID_Odlj#], [Naziv_Odlj], [Sifra_Sklad#fk]) VALUES (100700, N'BIBLIOTEKA', 7)
INSERT [dbo].[Odeljenje] ([ID_Odlj#], [Naziv_Odlj], [Sifra_Sklad#fk]) VALUES (100800, N'PEDAGOSKO ODELJENJE', 8)
INSERT [dbo].[Odeljenje] ([ID_Odlj#], [Naziv_Odlj], [Sifra_Sklad#fk]) VALUES (100900, N'RESTAURATORSKI I FOTOGRAFSKI ATELJE', 9)
INSERT [dbo].[Odeljenje] ([ID_Odlj#], [Naziv_Odlj], [Sifra_Sklad#fk]) VALUES (200000, N'GRADSKI MUZEJ-BACKA TOPOLA', 10)

--[RadnoMesto]
INSERT [dbo].[RadnoMesto] ([Sifra_RM#], [Naziv_RM], [ID_Odlj#fk]) VALUES (1, N'DIREKTOR', 100100)
INSERT [dbo].[RadnoMesto] ([Sifra_RM#], [Naziv_RM], [ID_Odlj#fk]) VALUES (6, N'KOORDINATOR PRAVNIH POSLOVA', 100100)
INSERT [dbo].[RadnoMesto] ([Sifra_RM#], [Naziv_RM], [ID_Odlj#fk]) VALUES (18, N'TEHNICAR - MANIPULANT', 100200)
INSERT [dbo].[RadnoMesto] ([Sifra_RM#], [Naziv_RM], [ID_Odlj#fk]) VALUES (27, N'BIBLIOTEKAR - PRIPRAVNIK', 100400)
INSERT [dbo].[RadnoMesto] ([Sifra_RM#], [Naziv_RM], [ID_Odlj#fk]) VALUES (30, N'MUZEJSKI SAVETNIK BIOLOG', 100700)
INSERT [dbo].[RadnoMesto] ([Sifra_RM#], [Naziv_RM], [ID_Odlj#fk]) VALUES (40, N'TEHNICAR ODRZAVANJA INFORMACIONOG SISTEMA', 100900)

--[Angazovanje_Sarad]
INSERT [dbo].[Angazovanje_Sarad] ([Datum_Od#],[Datum_Do], [Sifra_Sarad#fk], [Sifra_RM#fk]) VALUES ( CAST(N'2016-09-01' AS Date), NULL, 24,1)
INSERT [dbo].[Angazovanje_Sarad] ([Datum_Od#],[Datum_Do], [Sifra_Sarad#fk], [Sifra_RM#fk]) VALUES ( CAST(N'2018-12-15' AS Date),NULL, 45,6)
INSERT [dbo].[Angazovanje_Sarad] ([Datum_Od#],[Datum_Do], [Sifra_Sarad#fk], [Sifra_RM#fk]) VALUES ( CAST(N'2005-01-01' AS Date),NULL,153,18)

--[Angazovanje_Rad]
INSERT [dbo].[Angazovanje_Rad] ([Datum_Od#],[Datum_Do], [Sifra_Rad#fk], [Sifra_RM#fk]) VALUES ( CAST(N'2009-05-03' AS Date),NULL,4, 27)
INSERT [dbo].[Angazovanje_Rad] ([Datum_Od#],[Datum_Do], [Sifra_Rad#fk], [Sifra_RM#fk]) VALUES ( CAST(N'2019-02-11' AS Date),NULL,11, 18)
INSERT [dbo].[Angazovanje_Rad] ([Datum_Od#],[Datum_Do], [Sifra_Rad#fk], [Sifra_RM#fk]) VALUES ( CAST(N'2018-01-31' AS Date),NULL,25, 6)
INSERT [dbo].[Angazovanje_Rad] ([Datum_Od#],[Datum_Do], [Sifra_Rad#fk], [Sifra_RM#fk]) VALUES ( CAST(N'2020-02-01' AS Date),NULL, 30, 30)
INSERT [dbo].[Angazovanje_Rad] ([Datum_Od#],[Datum_Do],[Sifra_Rad#fk], [Sifra_RM#fk]) VALUES ( CAST(N'2016-03-11' AS Date),CAST(N'2020-05-06' AS Date), 26, 40)
INSERT [dbo].[Angazovanje_Rad] ([Datum_Od#],[Datum_Do],[Sifra_Rad#fk], [Sifra_RM#fk]) VALUES ( CAST(N'2020-05-06' AS Date),NULL, 55, 40)


--[Zbirka]
INSERT [dbo].[Zbirka] ([Sifra_Zbr#], [Naziv_Zbr], [Br_Predmeta], [Br_Dig_Predmeta], [ID_Odlj#fk]) VALUES (01, N'PRAISTORIJA', 202, 139, 100200)
INSERT [dbo].[Zbirka] ([Sifra_Zbr#], [Naziv_Zbr], [Br_Predmeta], [Br_Dig_Predmeta], [ID_Odlj#fk]) VALUES (13, N'ZBIRKA ZASTAVA I ZASTAVNIH VRPCI', 4, 1, 100400)
INSERT [dbo].[Zbirka] ([Sifra_Zbr#], [Naziv_Zbr], [Br_Predmeta], [Br_Dig_Predmeta], [ID_Odlj#fk]) VALUES (27, N'FOTOGRAFIJE I DOKUMENTI', 84, 84, 100300)
INSERT [dbo].[Zbirka] ([Sifra_Zbr#], [Naziv_Zbr], [Br_Predmeta], [Br_Dig_Predmeta], [ID_Odlj#fk]) VALUES (03, N'STARA I RETKA KNJIGA', 345, 343, 100700)
INSERT [dbo].[Zbirka] ([Sifra_Zbr#], [Naziv_Zbr], [Br_Predmeta], [Br_Dig_Predmeta], [ID_Odlj#fk]) VALUES (07, N'UMETNICKA ZBIRKA - LIKOVNA UMETNOST', 1846, 1173, 100600)
INSERT [dbo].[Zbirka] ([Sifra_Zbr#], [Naziv_Zbr], [Br_Predmeta], [Br_Dig_Predmeta], [ID_Odlj#fk]) VALUES (38, N'ZOOLOSKA ZBIRKA - ZBIRKA SISARA', 87, 61, 100500)

--[Zaposlenje]
INSERT [dbo].[Zaposlenje] ([Sifra_Rad#fk], [ID_Odlj#fk]) VALUES (4, 100400)
INSERT [dbo].[Zaposlenje] ([Sifra_Rad#fk], [ID_Odlj#fk]) VALUES (25, 100100)
INSERT [dbo].[Zaposlenje] ([Sifra_Rad#fk], [ID_Odlj#fk]) VALUES (30, 100700)
INSERT [dbo].[Zaposlenje] ([Sifra_Rad#fk], [ID_Odlj#fk]) VALUES (55, 100900)

--[Mesto]
INSERT [dbo].[Mesto] ([Ime_Zgrada#], [Ime_Grada]) VALUES (N'Gradski Muzej Subotica', N'Subotica')
INSERT [dbo].[Mesto] ([Ime_Zgrada#], [Ime_Grada]) VALUES (N'Gradska Kuca', N'Subotica')INSERT [dbo].[Mesto] ([Ime_Zgrada#], [Ime_Grada]) VALUES (N'Biskupijska riznica', N'Pecuj')
INSERT [dbo].[Mesto] ([Ime_Zgrada#], [Ime_Grada]) VALUES (N'Gradski Muzej Backa Topola', N'Backa Topola')

--[Izlozbe]
INSERT [dbo].[Izlozbe] ([Sifra_Izloz#], [Ime_Izloz], [Ime_Sale], [Datum_Od_Izloz], [Datum_Do_Izloz], [Ime_Zgrada#fk]) VALUES (2401, N'Galerija madarske likovne umetnosti u Vojvodini', N'PRVI SPRAT - Desna sala',CAST(N'2021-04-15' AS Date), NULL,N'Gradski Muzej Subotica')
INSERT [dbo].[Izlozbe] ([Sifra_Izloz#], [Ime_Izloz], [Ime_Sale], [Datum_Od_Izloz], [Datum_Do_Izloz], [Ime_Zgrada#fk]) VALUES (3402, N'Brokni slikar P.A. Senser', N'PRIZEMLJE',CAST(N'2020-09-12' AS Date), CAST(N'2020-11-12' AS Date), N'Biskupijska riznica')
INSERT [dbo].[Izlozbe] ([Sifra_Izloz#], [Ime_Izloz], [Ime_Sale], [Datum_Od_Izloz], [Datum_Do_Izloz], [Ime_Zgrada#fk]) VALUES (2701, N'Izlozba slika Sandora Olaha (1886-1966)', N'PRVI SPRAT',CAST(N'2019-12-10' AS Date), CAST(N'2020-01-31' AS Date),N'Gradski Muzej Backa Topola')
INSERT [dbo].[Izlozbe] ([Sifra_Izloz#], [Ime_Izloz], [Ime_Sale], [Datum_Od_Izloz], [Datum_Do_Izloz], [Ime_Zgrada#fk]) VALUES (2403, N'LP - Istorija gramofona i zlatno doba ploca', N'DRUGI SPRAT - Leva sala',CAST(N'2019-12-13' AS Date), CAST(N'2020-10-19' AS Date), N'Gradski Muzej Subotica')

--[Blagajna]
INSERT [dbo].[Blagajna] ([Sifra_Blag#], [Racun_Blag]) VALUES (10072, N'965-000062065766-34')

--[Cenovnik]
INSERT [dbo].[Cenovnik] ([Sif_Cenov#], [Cene]) VALUES (001, 150.0000)
INSERT [dbo].[Cenovnik] ([Sif_Cenov#], [Cene]) VALUES (002, 0.0000)
INSERT [dbo].[Cenovnik] ([Sif_Cenov#], [Cene]) VALUES (003, 150.0000)

--[Ulaznica]
INSERT [dbo].[Ulaznica] ([Sif_Cenov#fk], [Iznos], [Sifra_Blag#fk], [Sifra_Izloz#fk]) VALUES (001, 150.0000, 10072, 2401)
INSERT [dbo].[Ulaznica] ([Sif_Cenov#fk], [Iznos], [Sifra_Blag#fk], [Sifra_Izloz#fk]) VALUES (002, 0.0000, 10072, 2701)
INSERT [dbo].[Ulaznica] ([Sif_Cenov#fk],[Iznos], [Sifra_Blag#fk], [Sifra_Izloz#fk]) VALUES (003, 900.0000, 10072, 2701)

--[StalnePostavke]
INSERT [dbo].[StalnePostavke] ([Sifra_Izloz#fk], [Ime_Izloz]) VALUES (2401, N'Galerija madarske likovne umetnosti u Vojvodini')

--[TematskeIzlozbe]
INSERT [dbo].[TematskeIzlozbe] ([Sifra_Izloz#fk], [Ime_Izloz]) VALUES (3402, N'Brokni slikar P.A. Senser')
INSERT [dbo].[TematskeIzlozbe] ([Sifra_Izloz#fk], [Ime_Izloz]) VALUES (2701, N'Izlozba slika Sandora Olaha (1886-1966)')
INSERT [dbo].[TematskeIzlozbe] ([Sifra_Izloz#fk], [Ime_Izloz]) VALUES  (2403, N'LP - Istorija gramofona i zlatno doba ploca')

--[Autor]
INSERT [dbo].[Autor] ([Sifra_Rad#fk], [Ime_Radnik]) VALUES (4, N'OLGA NINKOV')
INSERT [dbo].[Autor] ([Sifra_Rad#fk], [Ime_Radnik]) VALUES (25, N'ESTER BAJARI')
INSERT [dbo].[Autor] ([Sifra_Rad#fk], [Ime_Radnik]) VALUES (30, N'ROBERT KOVAC')

--[Vodi]
INSERT [dbo].[Vodi] ([Sifra_Rad#fk], [Sifra_Izloz#fk]) VALUES (4, 2701)
INSERT [dbo].[Vodi] ([Sifra_Rad#fk], [Sifra_Izloz#fk]) VALUES (25, 3402)
INSERT [dbo].[Vodi] ([Sifra_Rad#fk], [Sifra_Izloz#fk]) VALUES (4, 2403)

--[Predavanje]
INSERT [dbo].[Predavanje] ([Sifra_Pred#], [Ime_Pred], [Ime_Sale], [Datum_Pred]) VALUES (501, N'Oblaci i film - predavanje', N'TRECI SPRAT',CAST(N'2020-10-09' AS Date))
INSERT [dbo].[Predavanje] ([Sifra_Pred#], [Ime_Pred], [Ime_Sale], [Datum_Pred]) VALUES (502, N'Tito i umetnost - projekcija dokumentarnog filma', N'TRECI SPRAT',CAST(N'2020-10-10' AS Date))
INSERT [dbo].[Predavanje] ([Sifra_Pred#], [Ime_Pred], [Ime_Sale], [Datum_Pred]) VALUES (503, N'Znacaj dr Karolja Cilaga u istoriji novinarstva - predavanje', N'TRECI SPRAT',CAST(N'2020-10-22' AS Date))

--[Predavac]
INSERT [dbo].[Predavac] ([Sifra_Rad#fk], [Ime_Radnik]) VALUES (4, N'OLGA NINKOV')
INSERT [dbo].[Predavac] ([Sifra_Rad#fk], [Ime_Radnik]) VALUES (45, N'JANOS KISPALKO')
INSERT [dbo].[Predavac] ([Sifra_Rad#fk], [Ime_Radnik]) VALUES (55, N'CABA LALIC')

--[Predaje]
INSERT [dbo].[Predaje] ([Sifra_Rad#fk], [Sifra_Pred#fk]) VALUES (4, 501)
INSERT [dbo].[Predaje] ([Sifra_Rad#fk], [Sifra_Pred#fk]) VALUES (4, 502)
INSERT [dbo].[Predaje] ([Sifra_Rad#fk], [Sifra_Pred#fk]) VALUES (45, 503)

--[OdrzavanjeKvaliteta]
INSERT [dbo].[OdrzavanjeKvaliteta] ([Br_Dosije#], [Inv_Br_Predm], [Muzej_Odrz], [Oznaci_Dosije], [Ime_Autora], [Dat_Ulz_Predm], [Ime_Vlas], [Ime_Zbir], [Naziv_Predm],[Dimenzije_Predm],[I_Osob_Podn_Zahtv],[I_Osob_Predat_Ulz],[I_Osob_Predat_Izl],[I_Osob_Prim_Ulz],[I_Osob_Prim_Izl],[Dat_Izl_Predm],[Ranije_Intrv]) VALUES (56, 1313, N'Gradski Muzej Subotica',N'KSS',N'Zuzana Korhec Pap',CAST(N'1999-10-07' AS Date), N'Gradski Muzej Subotica', N'UMETNICKA ZBIRKA - LIKOVNA UMETNOST', N'Profil sedog muskarca', N'Sirina: 30,5cm; Visina: 36,5cm',N'Olga Ninkov K.',N'Olga Ninkov K.', N'Zuzana Korhec Pap', N'Zuzana Korhec Pap', N'Olga Ninkov K.',CAST(N'1999-12-07' AS Date),N'NIJE BILO')
INSERT [dbo].[OdrzavanjeKvaliteta] ([Br_Dosije#], [Inv_Br_Predm], [Muzej_Odrz], [Oznaci_Dosije], [Ime_Autora], [Dat_Ulz_Predm], [Ime_Vlas], [Ime_Zbir], [Naziv_Predm],[Dimenzije_Predm],[I_Osob_Podn_Zahtv],[I_Osob_Predat_Ulz],[I_Osob_Predat_Izl],[I_Osob_Prim_Ulz],[I_Osob_Prim_Izl],[Dat_Izl_Predm],[Ranije_Intrv]) VALUES (79, 2000, N'Gradski Muzej Subotica',N'KSS',N'Zuzana Korhec Pap',CAST(N'2002-01-20' AS Date), N'Gradski Muzej Subotica', N'UMETNICKA ZBIRKA - LIKOVNA UMETNOST', N'Potret deteta', N'Sirina: 54cm; Visina: 69cm',N'Olga Ninkov K.',N'Olga Ninkov K.', N'Zuzana Korhec Pap', N'Zuzana Korhec Pap', N'Olga Ninkov K.',CAST(N'2002-06-21' AS Date),N'NIJE BILO')
INSERT [dbo].[OdrzavanjeKvaliteta] ([Br_Dosije#], [Inv_Br_Predm], [Muzej_Odrz], [Oznaci_Dosije], [Ime_Autora], [Dat_Ulz_Predm], [Ime_Vlas], [Ime_Zbir], [Naziv_Predm],[Dimenzije_Predm],[I_Osob_Podn_Zahtv],[I_Osob_Predat_Ulz],[I_Osob_Predat_Izl],[I_Osob_Prim_Ulz],[I_Osob_Prim_Izl],[Dat_Izl_Predm],[Ranije_Intrv]) VALUES (85, 750, N'Gradski Muzej Subotica',N'KSS',N'Zuzana Korhec Pap',CAST(N'2002-04-24' AS Date), N'Gradski Muzej Subotica', N'UMETNICKA ZBIRKA - LIKOVNA UMETNOST', N'Muski portret', N'Sirina: 55,5cm; Visina: 68,8cm',N'Olga Ninkov K.',N'Olga Ninkov K.', N'Zuzana Korhec Pap', N'Zuzana Korhec Pap', N'Olga Ninkov K.',CAST(N'2002-05-24' AS Date),N'NIJE BILO')
INSERT [dbo].[OdrzavanjeKvaliteta] ([Br_Dosije#], [Inv_Br_Predm], [Muzej_Odrz], [Oznaci_Dosije], [Ime_Autora], [Dat_Ulz_Predm], [Ime_Vlas], [Ime_Zbir], [Naziv_Predm],[Dimenzije_Predm],[I_Osob_Podn_Zahtv],[I_Osob_Predat_Ulz],[I_Osob_Predat_Izl],[I_Osob_Prim_Ulz],[I_Osob_Prim_Izl],[Dat_Izl_Predm],[Ranije_Intrv]) VALUES (132, 330, N'Gradski Muzej Subotica',N'KP',N'Zuzana Korhec Pap',CAST(N'2004-10-03' AS Date), N'Gradski Muzej Subotica', N'UMETNICKA ZBIRKA - LIKOVNA UMETNOST', N'Studija zene (Franz Eisenhut 1891)', N'Sirina: 31,5cm; Visina: 29,5cm',N'Olga Ninkov K.',N'Olga Ninkov K.', N'Zuzana Korhec Pap', N'Zuzana Korhec Pap', N'Olga Ninkov K.',CAST(N'2004-10-31' AS Date),N'NIJE BILO')

--[Konzervacija]
INSERT [dbo].[Konzervacija] ([Br_Dosije#fk], [Ime_Konzrv]) VALUES (56, N'Zuzana Korhec Pap')
INSERT [dbo].[Konzervacija] ([Br_Dosije#fk], [Ime_Konzrv]) VALUES (85, N'Zuzana Korhec Pap')

--[Restauracija]
INSERT [dbo].[Restauracija] ([Br_Dosije#fk], [Ime_Restaur]) VALUES (79, N'Zuzana Korhec Pap')
INSERT [dbo].[Restauracija] ([Br_Dosije#fk], [Ime_Restaur]) VALUES (132, N'Zuzana Korhec Pap')

--[Donator]
INSERT [dbo].[Donator] ([ID_Don#], [Mesto], [Adresa], [E_Mail], [Br_Telefon]) VALUES (890, N'Senta',N'1. Reon bb',N'',0625144686)
INSERT [dbo].[Donator] ([ID_Don#], [Mesto], [Adresa], [E_Mail], [Br_Telefon]) VALUES (988, N'Backo Gradiste',N'Antal Lasla 12',N'stevanpetrovic3@gmail.com',null)
INSERT [dbo].[Donator] ([ID_Don#], [Mesto], [Adresa], [E_Mail], [Br_Telefon]) VALUES (36, N'Subotica',N'Somborski put 6',N'',024557144)
INSERT [dbo].[Donator] ([ID_Don#], [Mesto], [Adresa], [E_Mail], [Br_Telefon]) VALUES (39, N'Palic',N'Krfska 4',N'office@zoopalic.co.rs',024753075)

--[FizickoLice]
INSERT [dbo].[FizickoLice] ([ID_Don#fk], [Ime_Prezime]) VALUES (890, N'Caba Matovic')
INSERT [dbo].[FizickoLice] ([ID_Don#fk], [Ime_Prezime]) VALUES (988, N'Stevan Petrovic')

--[PravnoLice]
INSERT [dbo].[PravnoLice] ([ID_Don#fk], [Naziv_Firme]) VALUES (36, N'Reformatska crkvena opstina')
INSERT [dbo].[PravnoLice] ([ID_Don#fk], [Naziv_Firme]) VALUES (39, N'ZOO Palic')

--[Predmet]
INSERT [dbo].[Predmet] ([Inv_Br#], [Dig_Sifra], [Vrednost], [Br_Ulaz_Knjig], [Naziv], [Mesto_Izrd], [Vreme_Izrd], [Sif_Nacin_Nabavk], [Autor/Vlasnik],[Stil/Skola],[Materijal_Tehnike],[Dimenzije],[Napomena],[Br_Delova],[Sifra_Zbr#fk],[ID_Don#fk],[Br_Dosije#fk]) VALUES (85, N'85.jpg', 50.0000, 185, N'dleto',NULL,NULL,3, NULL, NULL,NULL, NULL,NULL, 1, 01, NULL, NULL )
INSERT [dbo].[Predmet] ([Inv_Br#], [Dig_Sifra], [Vrednost], [Br_Ulaz_Knjig], [Naziv], [Mesto_Izrd], [Vreme_Izrd], [Sif_Nacin_Nabavk], [Autor/Vlasnik],[Stil/Skola],[Materijal_Tehnike],[Dimenzije],[Napomena],[Br_Delova],[Sifra_Zbr#fk],[ID_Don#fk],[Br_Dosije#fk]) VALUES (147, N'147.jpg', 10.0000, 1147 , N'prsljenak',NULL,NULL,3, NULL, NULL,NULL, NULL,NULL, 1, 01, NULL, NULL )
INSERT [dbo].[Predmet] ([Inv_Br#], [Dig_Sifra], [Vrednost], [Br_Ulaz_Knjig], [Naziv], [Mesto_Izrd], [Vreme_Izrd], [Sif_Nacin_Nabavk], [Autor/Vlasnik],[Stil/Skola],[Materijal_Tehnike],[Dimenzije],[Napomena],[Br_Delova],[Sifra_Zbr#fk],[ID_Don#fk],[Br_Dosije#fk]) VALUES (214, N'214.jpg', 15.0000, 1214 , N'teg',NULL,NULL,3, NULL, NULL,NULL, NULL,NULL, 1, 01, NULL, NULL )
INSERT [dbo].[Predmet] ([Inv_Br#], [Dig_Sifra], [Vrednost], [Br_Ulaz_Knjig], [Naziv], [Mesto_Izrd], [Vreme_Izrd], [Sif_Nacin_Nabavk], [Autor/Vlasnik],[Stil/Skola],[Materijal_Tehnike],[Dimenzije],[Napomena],[Br_Delova],[Sifra_Zbr#fk],[ID_Don#fk],[Br_Dosije#fk]) VALUES (18, N'U-18.jpg', 150.0000, 4059 , N'Portret zene',NULL, N'I polovina XIX veka',2, N'Nepoznat autor', N'Impresionizam',N'Ulje, Platno', N'69x54 cm',NULL, 1, 07, 890, NULL )
INSERT [dbo].[Predmet] ([Inv_Br#], [Dig_Sifra], [Vrednost], [Br_Ulaz_Knjig], [Naziv], [Mesto_Izrd], [Vreme_Izrd], [Sif_Nacin_Nabavk], [Autor/Vlasnik],[Stil/Skola],[Materijal_Tehnike],[Dimenzije],[Napomena],[Br_Delova],[Sifra_Zbr#fk],[ID_Don#fk],[Br_Dosije#fk]) VALUES (30, N'U-30.jpg', 200.0000, 4071 , N'Sencanska ulica',N'Senta', N'1954',2, N'Dorde Bosan', N'Impresionizam',N'Ulje, Platno', N'50x61 cm',NULL, 1, 07, 988, NULL )
INSERT [dbo].[Predmet] ([Inv_Br#], [Dig_Sifra], [Vrednost], [Br_Ulaz_Knjig], [Naziv], [Mesto_Izrd], [Vreme_Izrd], [Sif_Nacin_Nabavk], [Autor/Vlasnik],[Stil/Skola],[Materijal_Tehnike],[Dimenzije],[Napomena],[Br_Delova],[Sifra_Zbr#fk],[ID_Don#fk],[Br_Dosije#fk]) VALUES (750, N'U-750.jpg', 500.0000, 4750 , N'Muski ortret',N'Subotica', N'1936',2, N'Nepoznat autor', NULL,N'Ulje, Platno', N'55,5x68,8 cm',N'Kozervirano', 1, 07, NULL, 85)

--[Izlozbeno]
INSERT[dbo].[Izlozbeno] ([Inv_Br#fk], [Sifra_Izloz#fk]) VALUES (18, 2401)
INSERT [dbo].[Izlozbeno] ([Inv_Br#fk], [Sifra_Izloz#fk]) VALUES (30, 2401)
INSERT [dbo].[Izlozbeno] ([Inv_Br#fk], [Sifra_Izloz#fk]) VALUES (750, 2401)  
