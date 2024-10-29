/// check_for_adjacent_explodes()
var list = global.explodeList;
var size = ds_list_size(list);

for(var i=0; i<size; i++)
{
    var item = ds_list_find_value(list,i);
    
    var c = item.column;
    var r = item.row;
    
    var gridItem = -1;
    
    gridItem = ds_grid_get(global.grid,c,r-1);
    
    if (gridItem > 0)
    {
        if (gridItem.object_index == obj_block_blue)
        or (gridItem.object_index == obj_block_green)
        or (gridItem.object_index == obj_block_red)
        or (gridItem.object_index == obj_block_yellow)
        {
            list_add_exclusive(global.explodeList, gridItem);
        }
    }
}

if ds_list_size(global.explodeList > 0)
{
    alarm[2] = 1; // ran by game_master
}
