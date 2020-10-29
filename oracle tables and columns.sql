SELECT t.OWNER,t.TABLE_NAME,t.NUM_ROWS,c.column_id,c.column_name,c.data_type
FROM all_tables t
    left join all_TAB_COLUMNS c
        on c.owner = t.owner
        and c.TABLE_NAME = t.TABLE_NAME
where t.OWNER in ('AMOSNG', 'LNX')
ORDER BY OWNER,TABLE_NAME,c.column_id
