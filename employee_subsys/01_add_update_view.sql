USE PodrskaRadaMuzeja; 
GO 
CREATE VIEW pUmetanje_Azuriranje_Radnika 
AS 
SELECT Angazovanje_Rad.Sifra_Rad#fk as SifraRadnika, Radnik.Ime + ' ' + Radnik.Prezime as Radnik, RadnoMesto.ID_Odlj#fk as Odeljenje, 
Angazovanje_Rad.Sifra_RM#fk as SifraRadnogMesta, Angazovanje_Rad.Datum_Od#, Angazovanje_Rad.Datum_Do, Radnik.JMBG 
 
FROM Radnik join Angazovanje_Rad on Angazovanje_Rad.Sifra_Rad#fk = Radnik.Sifra_Rad# 
join RadnoMesto on Angazovanje_Rad.Sifra_RM#fk = RadnoMesto.Sifra_RM# 
join Odeljenje on RadnoMesto.ID_Odlj#fk = Odeljenje.ID_Odlj#; 
 
GO
--Upit nad pogledom 
SELECT * 
FROM pUmetanje_Azuriranje_Radnika 
