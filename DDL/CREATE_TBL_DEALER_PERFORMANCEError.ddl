-- HATALI: Virgül eksik veya geçersiz anahtar kelime
CREATE TABLE TBL_DEALER_PERFORMANCE (
    LogId INT PRIMARY KEY IDENTITY(1,1),
    DealerId INT NOT NULL -- Burada virgül unutuldu
    Score DECIMAL(5,2),
    CreatedDate DATETIME DEFAULT GETDATE()
);
GO