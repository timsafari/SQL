CREATE TABLE #t (t NVARCHAR(5) ,c NVARCHAR(5))
INSERT INTO #t
(
    t,
    c
)
SELECT N't1',N'c1'
UNION 
SELECT N't1',N'c2'
UNION 
SELECT N't1',N'c3'
UNION 
SELECT N't1',N'c4'
UNION 
SELECT N't1',N'c5'
UNION 
SELECT N't2',N'c1'
UNION 
SELECT N't2',N'c2'


SELECT c
FROM #t
FOR XML PATH('')


SELECT '[' + cols.name + '],' 
FROM sys.columns cols 
JOIN sys.tables tabs on (cols.object_id = tabs.object_id) 
JOIN sys.schemas schem on (tabs.schema_id = schem.schema_id) 
WHERE tabs.name in ('Event','Favorites')
AND schem.name='dbo' 
FOR xml path('') 
