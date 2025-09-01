USE PodrskaRadaMuzeja;
GO
CREATE PROCEDURE udpUmetanjeAzuriranjeIzlozbe
@SifraIzloz as nvarchar(10), @ImeIzloz as nvarchar(30), @Sala as nvarchar(30), @DatOd as Date, @DatDo as Date,  @ImeZgrade as nvarchar(30), @Autor as int
AS
BEGIN TRY
SET XACT_ABORT ON
BEGIN TRANSACTION
IF @SifraIzloz IS NULL
BEGIN
SELECT CONVERT(nvarchar(10),Sifra_Izloz#) as Sifra_Izloz# from Izlozbe;
IF @ImeZgrade = N'Gradski Muzej Subotica' OR @ImeZgrade = N'Gradska Kuca'
BEGIN
SElect @SifraIzloz = max(Sifra_Izloz#)+1 from Izlozbe where Sifra_Izloz# LIKE '24%'
SELECt CONVERT(int,@SifraIzloz)
 INSERT INTO Izlozbe(Sifra_Izloz#, Ime_Izloz, Ime_Sale, Datum_Od_Izloz, Datum_Do_Izloz, Ime_Zgrada#fk)
  VALUES (@SifraIzloz, @ImeIzloz, @Sala, @DatOd, @DatDo, @ImeZgrade);
   IF @Autor IS NULL
  BEGIN
  INSERT INTO StalnePostavke (Sifra_Izloz#fk, Ime_Izloz)
  VALUES (@SifraIzloz, @ImeIzloz);
  END
  ELSE
  BEGIN
  INSERT INTO TematskeIzlozbe (Sifra_Izloz#fk, Ime_Izloz)
  VALUES (@SifraIzloz, @ImeIzloz);
  INSERT INTO Vodi(Sifra_Rad#fk, Sifra_Izloz#fk)
  VALUES (@Autor, @SifraIzloz);
  END
END
ELSE IF @ImeZgrade = N'Gradski Muzej Baccka Topola'
BEGIN
SElect @SifraIzloz = max(Sifra_Izloz#)+1 from Izlozbe where Sifra_Izloz# LIKE '27%'
SELECt CONVERT(int,@SifraIzloz)
 INSERT INTO Izlozbe(Sifra_Izloz#, Ime_Izloz, Ime_Sale, Datum_Od_Izloz, Datum_Do_Izloz, Ime_Zgrada#fk)
  VALUES (@SifraIzloz, @ImeIzloz, @Sala, @DatOd, @DatDo, @ImeZgrade);
   IF @Autor IS NULL
  INSERT INTO StalnePostavke (Sifra_Izloz#fk, Ime_Izloz)
  VALUES (@SifraIzloz, @ImeIzloz);
  ELSE
  BEGIN
  INSERT INTO TematskeIzlozbe (Sifra_Izloz#fk, Ime_Izloz)
  VALUES (@SifraIzloz, @ImeIzloz);
  INSERT INTO Vodi(Sifra_Rad#fk, Sifra_Izloz#fk)
  VALUES (@Autor, @SifraIzloz);
  END
END
ELSE
BEGIN
SElect @SifraIzloz = max(Sifra_Izloz#)+1 from Izlozbe where Sifra_Izloz# LIKE '34%'
SELECt CONVERT(int,@SifraIzloz)
 INSERT INTO Izlozbe(Sifra_Izloz#, Ime_Izloz, Ime_Sale, Datum_Od_Izloz, Datum_Do_Izloz, Ime_Zgrada#fk)
  VALUES (@SifraIzloz, @ImeIzloz, @Sala, @DatOd, @DatDo, @ImeZgrade);
   IF @Autor IS NULL
  BEGIN
  INSERT INTO StalnePostavke (Sifra_Izloz#fk, Ime_Izloz)
  VALUES (@SifraIzloz, @ImeIzloz);
  END
  ELSE
  BEGIN
  INSERT INTO TematskeIzlozbe (Sifra_Izloz#fk, Ime_Izloz)
  VALUES (@SifraIzloz, @ImeIzloz);
  INSERT INTO Vodi(Sifra_Rad#fk, Sifra_Izloz#fk)
  VALUES (@Autor, @SifraIzloz);
  END
 END
END
ELSE IF @SifraIzloz = (Select Sifra_Izloz# from Izlozbe where Sifra_Izloz# = @SifraIzloz)
Begin
SELECt CONVERT(int,@SifraIzloz)
Update Izlozbe
SET Izlozbe.Sifra_Izloz# = @SifraIzloz, Izlozbe.Ime_Izloz=@ImeIzloz, Izlozbe.Ime_Sale=@Sala, Izlozbe.Datum_Od_Izloz = @DatOd,
Izlozbe.Datum_Do_Izloz = @DatDo, Izlozbe.Ime_Zgrada#fk = @ImeZgrade Where Sifra_Izloz#=@SifraIzloz;
IF @Autor IS NULL
  BEGIN
  Update StalnePostavke
  Set StalnePostavke.Sifra_Izloz#fk = @SifraIzloz, StalnePostavke.Ime_Izloz=@ImeIzloz Where Sifra_Izloz#fk=@SifraIzloz;
  END
  ELSE
  BEGIN
  Update TematskeIzlozbe
  Set TematskeIzlozbe.Sifra_Izloz#fk = @SifraIzloz, TematskeIzlozbe.Ime_Izloz=@ImeIzloz Where Sifra_Izloz#fk=@SifraIzloz;
  Update Vodi
  SET  Vodi.Sifra_Rad#fk = @Autor, Vodi.Sifra_Izloz#fk = @SifraIzloz Where Sifra_Izloz#fk=@SifraIzloz;
  END
 END
COMMIT TRANSACTION
END TRY
BEGIN CATCH
 PRINT 'DOSLO JE DO POJAVE GRESKE!'
  PRINT '------ Proverite ulazne parametre-------'
  ROLLBACK TRANSACTION;
  PRINT 'Transakcija je ponistila promene.'
END CATCH; 

EXEC udpUmetanjeAzuriranjeIzlozbe
@SifraIzloz = 2401,
@ImeIzloz = N'Galerija madarske likovne umetnosti u Vojvodini',
@Sala = N'PRVI SPRAT - Desna sala',
@DatOd = '2021-04-15',
@DatDo = '2022-01-03',
@ImeZgrade = N'Gradski Muzej Subotica',
@Autor = NULL;

EXEC udpUmetanjeAzuriranjeIzlozbe
@SifraIzloz = NULL,
@ImeIzloz = 'Fotografije Teodor Kracun',
@Sala = 'PRVI SPRAT',
@DatOd = '2021-01-31',
@DatDo = NULL,
@ImeZgrade = N'Gradski Muzej Baccka Topola',
@Autor = 4;

