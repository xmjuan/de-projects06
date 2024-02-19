CREATE PROCEDURE usp_update_watermark
@TableName varchar(50) null,
@Updated datetime null
AS 
BEGIN 
	UPDATE [config].[tbl_newdatasource]
	SET lastUpdated = @Updated
	WHERE sourceTable = @TableName
END