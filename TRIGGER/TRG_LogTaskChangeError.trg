CREATE OR ALTER TRIGGER TRG_LogTaskChange ON JiraTasks AFTER UPDATE AS
BEGIN
    -- Trigger içinde olmayan bir tabloya log atmaya çalışmak
    INSERT INTO AuditLogs_Eksik (Msg) VALUES ('Hata'); 
END
GO