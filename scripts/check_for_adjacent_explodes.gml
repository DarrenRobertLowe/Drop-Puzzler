/// check_for_adjacent_explodes()
var list = global.explodeList;
var size = ds_list_size(list);
var repeatThis = false;


for(var i=0; i<size; i++)
{
    var item = ds_list_find_value(list,i);
    //show_debug_message("checking adjacent explodes on item "+string(item));
    
    if  (item > 0)
    and (instance_exists(item))
    {
        var c = item.column;
        var r = item.row;
        var gridItem = -1;
        
        if  (c > -1)
        and (r > -1)
        {
            // up
            if ( r > 0 )
            {
                gridItem = ds_grid_get(global.grid,c,r-1);
                
                if (gridItem > 0)
                {
                    if (gridItem.object_index == obj_block_blue)
                    or (gridItem.object_index == obj_block_green)
                    or (gridItem.object_index == obj_block_red)
                    or (gridItem.object_index == obj_block_yellow)
                    {
                        if (gridItem.object_index == item.object_index)
                        {
                            if (ds_list_find_index(global.explodeList, gridItem) == -1)
                            {
                                list_add_exclusive(global.explodeList, gridItem);
                                repeatThis = true;
                            }
                        }
                    }
                }
            }
            
            // down
            if ( r < lastRow )
            {
                gridItem = ds_grid_get(global.grid, c, r+1);
                
                if (gridItem > 0)
                {
                    if (gridItem.object_index == obj_block_blue)
                    or (gridItem.object_index == obj_block_green)
                    or (gridItem.object_index == obj_block_red)
                    or (gridItem.object_index == obj_block_yellow)
                    {
                        if (gridItem.object_index == item.object_index)
                        {
                            if (ds_list_find_index(global.explodeList, gridItem) == -1)
                            {
                                list_add_exclusive(global.explodeList, gridItem);
                                repeatThis = true;
                            }
                        }
                    }
                }
            }
            
            // left
            if ( c > 0 )
            {
                gridItem = ds_grid_get(global.grid,c-1,r);
                
                if (gridItem > 0)
                {
                    if (gridItem.object_index == obj_block_blue)
                    or (gridItem.object_index == obj_block_green)
                    or (gridItem.object_index == obj_block_red)
                    or (gridItem.object_index == obj_block_yellow)
                    {
                        if (gridItem.object_index == item.object_index)
                        {
                            if (ds_list_find_index(global.explodeList, gridItem) == -1)
                            {
                                list_add_exclusive(global.explodeList, gridItem);
                                repeatThis = true;
                            }
                        }
                    }
                }
            }
            
            
            // right
            if ( c < lastColumn )
            {
                gridItem = ds_grid_get(global.grid,c+1,r);
                
                if (gridItem > 0)
                {
                    if (gridItem.object_index == obj_block_blue)
                    or (gridItem.object_index == obj_block_green)
                    or (gridItem.object_index == obj_block_red)
                    or (gridItem.object_index == obj_block_yellow)
                    {
                        if (gridItem.object_index == item.object_index)
                        {
                            if (ds_list_find_index(global.explodeList, gridItem) == -1)
                            {
                                list_add_exclusive(global.explodeList, gridItem);
                                repeatThis = true;
                            }
                        }
                    }
                }
            }
        }
    }
}


if (repeatThis == true)
{
    check_for_adjacent_explodes();
}
/*
if ds_list_size(global.explodeList > 0)
{
    alarm[2] = 1; // ran by game_master
}
