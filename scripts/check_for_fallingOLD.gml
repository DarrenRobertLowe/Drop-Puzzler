///check_for_falling()

/// check if objects should fall
show_message("running check_for_falling");
/*
for(var row=(gridHeight-1); (row>-1); row--)                // go backwards through rows
{
    for(var column=(gridWidth-1); (column>-1); column--)    // go backwards through columns
    {
        var item = -1;
        
        // keep in bounds
        if  (column > -1)
        and (row > -1)
          then item = ds_grid_get(grid, column, row);
        
        // if exists...
        if (item > 0)
        {
            if  (item.falls == true)
            {
                with (item)
                {
                    var targetRow = (row + 1);
                    
                    if  (targetRow > 0)
                    and (targetRow <= lastRow)
                    and (ds_list_find_index(global.fallingList, id) == -1)
                    {
                        var val = ds_grid_get(grid, column, targetRow);
                        if (val == 0)
                        {
                            list_add_exclusive(global.fallingList, item);
                            item.falling = true;
                        }
                    }
                }
            }
        }
    }
}
    
if (ds_list_size(global.fallingList) > 0)
then fall_all_objects(); // make objects fall
