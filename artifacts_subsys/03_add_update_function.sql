USE PodrskaRadaMuzeja
GO
CREATE FUNCTION udfAzuriranaIzlozba (@SifraIzloz int = NULL)
RETURNS TABLE
AS RETURN SELECT *
FROM pUmetanje_Azuriranje_Izlozbe
WHERE SifraIzlozbe = @SifraIzloz ;
GO

--Pozivanje funkcije i prikaz tabele
SELECT *
from udfAzuriranaIzlozba (2401)
