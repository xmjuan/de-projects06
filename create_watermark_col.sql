ALTER TABLE [config].[tbl_newdatasource]
ADD watermarkColumn varchar(255) null

GO
UPDATE [config].[tbl_newdatasource]
SET watermarkColumn = 
    CASE 
        WHEN sourceId = 1 THEN 'LastUpdated'
        WHEN sourceId = 3 THEN 'Updated'
    END
WHERE sourceId IN (1, 3);