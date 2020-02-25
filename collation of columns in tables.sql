SELECT t.[name] table_name,
	c.[name] column_name,
	c.collation_name
FROM sys.schemas s
	JOIN sys.tables t
		ON s.[schema_id] = t.[schema_id]
	JOIN sys.columns c
		ON c.[object_id] = t.[object_id]
WHERE s.[name] = N'DWH'
	AND t.[name] IN ('DeliveryTraceEventCarrierMapping','CarrierDeliveryService')
ORDER BY table_name, c.column_id
OPTION (FORCE ORDER)
