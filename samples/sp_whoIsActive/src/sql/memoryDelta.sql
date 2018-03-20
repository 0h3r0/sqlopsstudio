IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_NAME = 'sp_WhoIsActive')
    EXEC sp_WhoIsActive 
        @show_system_spids = 1, 
        @show_own_spid = 1,
        @delta_interval = 1,
        @output_column_list = '[session_id][used_memory_delta]',
        @sort_order = '[used_memory_delta] DESC'
ELSE 
    SELECT 0;
GO