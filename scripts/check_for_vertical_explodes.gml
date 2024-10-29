/// check_for_vertical_explodes()
//show_debug_message("Checking for horizontal explodes....");
ds_list_clear(explodeThread); // explode thread always stores 3 grid items for checking


for(var row=(gridHeight-3); row>-1; row--) // -3 because we're checkin the 2 rows below each row
{
    for(var column=lastColumn; column>-1; column--)
    {
        //show_debug_message("checking vertical explodes on row:"+string(row) +" col:"+string(column));
        var gridItem = 0;
        
        if  (column > -1)
        and (row > -1)
        and (column < gridWidth)
        and (row < gridHeight)
        then gridItem = ds_grid_get(global.grid,column,row);
        
        
        ds_list_add(explodeThread,gridItem);
        //show_debug_message("gridItem.object_index = "+string(gridItem.object_index));
        if (gridItem.object_index == obj_block_blue)
        or (gridItem.object_index == obj_block_green)
        or (gridItem.object_index == obj_block_red)
        or (gridItem.object_index == obj_block_yellow)
        {
            //show_debug_message("item is a block alright");
            var item      = gridItem;
            var prevItem  = ds_grid_get(global.grid, column, row+1);
            var prevItem2 = ds_grid_get(global.grid, column, row+2);
            
            if  (item.object_index == prevItem.object_index)
            and (prevItem.object_index = prevItem2.object_index)
            {
                //show_message("FOUND horizontal explodes on col:" +string(column) +" row:" +string(row));
                list_add_exclusive(global.explodeList, item);
                list_add_exclusive(global.explodeList, prevItem);
                list_add_exclusive(global.explodeList, prevItem2);
            }
        }
        else
        {
            ds_list_clear(explodeThread);
        }
    }
}
/*
if ds_list_size(global.explodeList > 0)
{
    alarm[2] = 1; // ran by game_master
}
