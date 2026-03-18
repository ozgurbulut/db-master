CREATE OR ALTER VIEW VW_ActiveTasks AS
SELECT JiraId, Summary FROM JiraTasks;
GO