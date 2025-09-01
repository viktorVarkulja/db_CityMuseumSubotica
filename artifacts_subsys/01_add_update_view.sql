USE PodrskaRadaMuzeja
GO
CREATE VIEW pUmetanje_Azuriranje_Izlozbe
AS
SELECT Izlozbe.Sifra_Izloz# as SifraIzlozbe,
Izlozbe.Ime_Izloz as Izlozba , Izlozbe.Ime_Sale as Sala, Izlozbe.Datum_Od_Izloz as DatumOd ,
Izlozbe.Datum_Do_Izloz as DatumDo, Izlozbe.Ime_Zgrada#fk as Zgrada, Vodi.Sifra_Rad#fk as Autor

FROM Izlozbe left join Vodi on Izlozbe.Sifra_Izloz#=Vodi.Sifra_Izloz#fk;

GO
SELECT *
FROM pUmetanje_Azuriranje_Izlozbe
