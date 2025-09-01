USE PodrskaRadaMuzeja;
GO
CREATE PROCEDURE udpUmetanjeAzuriranjeRadnika
@SifraRad int, @Ime as nvarchar(30), @Prezime as nvarchar(30),@Plata as money, @SifraRM as int, @DatOd as Date, @DatDo as Date, @JMBG as numeric, @Pol as nvarchar(1)
AS
BEGIN TRY
SET XACT_ABORT ON
BEGIN TRANSACTION
IF @SifraRad IS NULL
BEGIN
SELECT @SifraRad = max(Sifra_Rad#)+1 from Radnik
 INSERT INTO Radnik (Sifra_Rad#, Ime, Prezime, Plata, JMBG, Pol)
  VALUES (@SifraRad, @Ime, @Prezime, @Plata, @JMBG, @Pol);
  INSERT INTO Angazovanje_Rad(Sifra_Rad#fk, Datum_Od#, Datum_Do, Sifra_RM#fk)
  VALUES (@SifraRad, @DatOd, @DatDo,@SifraRM);
END
ELSE IF @SifraRad = (Select Sifra_Rad# from Radnik where Sifra_Rad# = @SifraRad)
BEGIN
UPDATE Radnik
SET Sifra_Rad# = @SifraRad, Ime = @Ime, Prezime = @Prezime, Plata = @Plata, JMBG = @JMBG, Pol = @Pol Where Sifra_Rad#=@SifraRad;
UPDATE Angazovanje_Rad
SET Angazovanje_Rad.Datum_Od# = @DatOd, Angazovanje_Rad.Datum_Do = @DatDo, Angazovanje_Rad.Sifra_RM#fk=@SifraRM Where Sifra_Rad#fk=@SifraRad;
END
COMMIT TRANSACTION
END TRY
BEGIN CATCH
 PRINT 'DOSLO JE DO POJAVE GRESKE!'
  PRINT '------ Proverite ulazne parametre-------'
  ROLLBACK TRANSACTION;
  PRINT 'Transakcija je ponistila promene.'
END CATCH;

GO
EXEC udpUmetanjeAzuriranjeRadnika
@SifraRad = 25,
@Ime = 'ESTER',
@Prezime = 'BAJARI',
@Plata = 44000.0000,
@SifraRM = 6,
@DatOd = '2018-01-31',
@DatDo = '2020-03-25',
@JMBG = 1234567890123,
@Pol='Z';

GO
EXEC udpUmetanjeAzuriranjeRadnika
@SifraRad = NULL,
@Ime = 'MARKO',
@Prezime = 'LULIC',
@Plata = 44000.0000,
@SifraRM = 27,
@DatOd = '2021-01-31',
@DatDo = NULL,
@JMBG = 1234567890123,
@Pol='M';
