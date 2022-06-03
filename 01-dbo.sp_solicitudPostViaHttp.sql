CREATE PROCEDURE dbo.sp_solicitudPostViaHttp(@urlAPI AS VARCHAR(50), @jsonBody AS VARCHAR(100))
AS
DECLARE @i_ProcessId AS INT;
DECLARE @i_State AS INT;
DECLARE @responseBodyFromApi AS VARCHAR(100);
    
    EXEC @i_State = sp_OACreate 'MSXML2.ServerXMLHTTP', @i_ProcessId OUT;
    IF @i_State <> 0
        EXEC sp_OAGetErrorInfo @i_ProcessId;
    EXEC @i_State = sp_OAMethod @i_ProcessId, 'open', NULL, 'post', @urlAPI, 'false';
    IF @i_State <> 0
        EXEC sp_OAGetErrorInfo @i_ProcessId;
    EXEC sp_OAMethod @i_ProcessId, 'setRequestHeader', NULL, 'Content-Type', 'application/json';
    EXEC @i_State = sp_OAMethod @i_ProcessId, 'send', NULL, @jsonBody;
    IF @i_State <> 0
        EXEC sp_OAGetErrorInfo @i_ProcessId;
    EXEC @i_State = sp_OAMethod @i_ProcessId, 'responseText', @responseBodyFromApi OUTPUT;
SELECT @responseBodyFromApi AS 'String con formato json';
    EXEC sp_OADestroy @i_ProcessId;