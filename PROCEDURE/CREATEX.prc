CREATE OR ALTER PROCEDURE SP_InsertTestData
AS
BEGIN
    -- Sadece o anki tarihi seçiyoruz, tablo bağımlılığı yok
    SELECT GETDATE() AS CurrentServerTime;
END
GO