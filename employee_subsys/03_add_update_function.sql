USE PodrskaRadaMuzeja
GO
CREATE FUNCTION udfAzuriranRadnik (@SifraRad int)
RETURNS TABLE
AS
RETURN SELECT *
FROM pUmetanje_Azuriranje_Radnika
WHERE SifraRadnika = @SifraRad ;
GO

--Pozivanje funkcije i prikaz tabele
SELECT *
FROM udfAzuriranRadnik (25)
