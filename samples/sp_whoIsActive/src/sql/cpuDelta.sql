EXEC sp_WhoIsActive 
    @show_system_spids = 1, 
    @show_own_spid = 1,
    @delta_interval = 1,
    @output_column_list = '[session_id][CPU_delta]',
    @sort_order = '[CPU_delta] DESC'