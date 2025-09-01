USE PodrskaRadaMuzeja
GO
CREATE VIEW pUmetanje_Azuriranje_Predmeta
AS
SELECT Predmet.Inv_Br# as InventarskiBroj, Predmet.Dig_Sifra as DigitalnaSifra,
Predmet.Br_Dosije#fk as OdrzavanjeKvaliteta , Predmet.Sifra_Zbr#fk as SifraZbirke, Zbirka.Naziv_Zbr as Zbirka,
Zbirka.ID_Odlj#fk as SifraOdeljenja, Odeljenje.Naziv_Odlj as Odeljenje, Predmet.ID_Don#fk as Donator
FROM Predmet left join Zbirka on Predmet.Sifra_Zbr#fk=Zbirka.Sifra_Zbr#
AND Zbirka.Naziv_Zbr=Zbirka.Naziv_Zbr
left join Odeljenje on Zbirka.ID_Odlj#fk=Odeljenje.ID_Odlj#;
GO

SELECT *
FROM pUmetanje_Azuriranje_Predmeta
