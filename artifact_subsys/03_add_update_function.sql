USE PodrskaRadaMuzeja
GO
CREATE FUNCTION udfAzuriranPredmet (@InvBr int = NULL, @SifraZbirke int = NULL)
RETURNS TABLE
AS RETURN SELECT *
FROM pUmetanje_Azuriranje_Predmeta
WHERE InventarskiBroj = @InvBr AND SifraZbirke= @SifraZbirke;
GO

--Pozivanje funkcije i prikaz tabele
SELECT *
from udfAzuriranPredmet (18, 07)
