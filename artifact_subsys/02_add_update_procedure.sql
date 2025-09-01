USE PodrskaRadaMuzeja;
GO
CREATE PROCEDURE udpUmetanjeAzuriranjePredmeta
@InvBr int, @DigitalnaSifra nvarchar (30), @Vrednost as money, @BrojUlazKnjige as int, @Naziv as nvarchar(30), @MestoIzrd as nvarchar(30), @VremeIzrd as nvarchar(30),
@NacinNabavke as int, @AutorVlasnik as nvarchar(30),@StilSkola as nvarchar(30), @MaterijalTehnike as nvarchar(30), @Dimenzije as nvarchar(30),
@Napomena as nvarchar(30), @BrojDelova as int, @SifraZbirke int, @SifraDonatora as int, @SifraDosije as int
AS
BEGIN TRY
SET XACT_ABORT ON
BEGIN TRANSACTION
IF @InvBr IS NULL
BEGIN
 SELECT @InvBr = max(Predmet.Inv_Br#)+1 from Predmet where Sifra_Zbr#fk = @SifraZbirke
 SELECT @DigitalnaSifra = convert(nvarchar(30), @InvBr) + '.jpg'
 IF @SifraZbirke = 07
 BEGIN
 SELECT @DigitalnaSifra = 'U-' + @DigitalnaSifra;
 END
 INSERT INTO Predmet(Inv_Br#, Dig_Sifra, Vrednost, Br_Ulaz_Knjig, Naziv, Mesto_Izrd, Vreme_Izrd, Sif_Nacin_Nabavk, [Autor/Vlasnik],
 [Stil/Skola], Materijal_Tehnike,Dimenzije,Napomena,Br_Delova,Sifra_Zbr#fk,ID_Don#fk,Br_Dosije#fk)
  VALUES (@InvBr,@DigitalnaSifra, @Vrednost, @BrojUlazKnjige, @Naziv, @MestoIzrd, @VremeIzrd,
  @NacinNabavke, @AutorVlasnik, @StilSkola, @MaterijalTehnike, @Dimenzije, @Napomena, @BrojDelova, @SifraZbirke, @SifraDonatora, @SifraDosije);
END
Else IF @InvBr = (Select Inv_Br# from Predmet where Inv_Br# = @InvBr AND Sifra_Zbr#fk = @SifraZbirke)
Begin
Update Predmet
SET Predmet.Inv_Br# = @InvBr, Predmet.Dig_Sifra = @DigitalnaSifra, Predmet.Vrednost = @Vrednost, Predmet.Br_Ulaz_Knjig = @BrojUlazKnjige,
Predmet.Naziv = @Naziv, Predmet.Mesto_Izrd = @MestoIzrd, Predmet.Vreme_Izrd = @VremeIzrd, Predmet.Sif_Nacin_Nabavk = @NacinNabavke,
Predmet.[Autor/Vlasnik] = @AutorVlasnik, Predmet.[Stil/Skola] = @StilSkola, Predmet.Materijal_Tehnike = @MaterijalTehnike,
Predmet.Dimenzije = @Dimenzije, Predmet.Napomena = @Napomena, Predmet.Br_Delova = @BrojDelova, Predmet.Sifra_Zbr#fk = @SifraZbirke,
Predmet.ID_Don#fk = @SifraDonatora, Predmet.Br_Dosije#fk = @SifraDosije Where Inv_Br# = @InvBr AND Sifra_Zbr#fk = @SifraZbirke;
END
COMMIT TRANSACTION
END TRY
BEGIN CATCH
 PRINT 'DOSLO JE DO POJAVE GRESKE!'
  PRINT '------ Proverite ulazne parametre-------'
  ROLLBACK TRANSACTION;
  PRINT 'Transakcija je ponistila promene.'
END CATCH;

EXEC udpUmetanjeAzuriranjePredmeta
@InvBr = NULL,
@DigitalnaSifra = NULL,
@Vrednost = 44000.0000,
@BrojUlazKnjige = 270,
@Naziv = 'Potret deteta',
@MestoIzrd = 'Subotica',
@VremeIzrd = '1965',
@NacinNabavke = 2,
@AutorVlasnik = 'Marija Rackov',
@StilSkola = NULL,
@MaterijalTehnike = 'Ulje, Platno',
@Dimenzije = N'50x41 cm',
@Napomena = 'Restaurano',
@BrojDelova = 1,
@SifraZbirke = 07,
@SifraDonatora = 890,
@SifraDosije=132;

EXEC udpUmetanjeAzuriranjePredmeta
@InvBr = 18,
@DigitalnaSifra = N'U-18.jpg',
@Vrednost = 150.0000,
@BrojUlazKnjige = 4059,
@Naziv = 'Portret zene',
@MestoIzrd = NULL,
@VremeIzrd = 'I polovina XIX veka',
@NacinNabavke = 2,
@AutorVlasnik = 'Nenad Urosevic',
@StilSkola = 'Impresionizam',
@MaterijalTehnike = 'Ulje, Platno',
@Dimenzije = N'69x54 cm',
@Napomena = NULL,
@BrojDelova = 1,
@SifraZbirke = 07,
@SifraDonatora = 890,
@SifraDosije= 56;
