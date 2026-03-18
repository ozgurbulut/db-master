CREATE OR ALTER FUNCTION FN_GetTaskPrefix (@Id INT)
RETURNS VARCHAR(10)
AS
BEGIN
    -- SELECT içinde olmayan bir tablodan veri çekmeye çalışmak
    DECLARE @Res VARCHAR(10);
    SELECT @Res = Isim FROM HayaliTablo WHERE Id = @Id; 
    RETURN @Res;
END
GO