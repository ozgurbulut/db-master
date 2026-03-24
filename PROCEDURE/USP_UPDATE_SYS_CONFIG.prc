-- Category: PROCEDURE
CREATE PROCEDURE USP_UPDATE_SYS_CONFIG
    @P_ParamName NVARCHAR(100),
    @P_ParamValue NVARCHAR(MAX),
    @P_User NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    -- Parametrenin varlığını kontrol et
    IF EXISTS (SELECT 1 FROM SYS_CONFIG WHERE ParamName = @P_ParamName)
    BEGIN
        UPDATE SYS_CONFIG
        SET ParamValue = @P_ParamValue,
            UpdatedBy = @P_User,
            LastUpdate = GETDATE()
        WHERE ParamName = @P_ParamName;
        
        PRINT 'Parametre basariyla guncellendi.';
    END
    ELSE
    BEGIN
        RAISERROR('Hata: Guncellenmek istenen parametre bulunamadi!', 16, 1);
    END
END;