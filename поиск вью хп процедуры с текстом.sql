SELECT o.name ,m.definition
FROM sys.sql_modules m
	JOIN sys.objects o
		ON o.object_id = m.object_id
WHERE definition LIKE N'%ShipmentDeliveryStateID%'