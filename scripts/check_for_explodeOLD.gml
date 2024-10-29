/// check_for_explode(instance id)
/*
var item = argument0;


if (ds_list_find_index(global.explodeList, item) == -1)
{
    var otherItem = -1;
    var doit = false;
    
    otherItem = ds_grid_get(grid,item.column+1,item.row);
    if (check_add_to_explode_list(otherItem, item) == true)
    then doit = true;

    otherItem = ds_grid_get(grid,item.column-1,item.row);
    if (check_add_to_explode_list(otherItem, item) == true)
    then doit = true;

    otherItem = ds_grid_get(grid,item.column,item.row+1);
    if (check_add_to_explode_list(otherItem, item) == true)
    then doit = true;

    otherItem = ds_grid_get(grid,item.column,item.row-1);
    if (check_add_to_explode_list(otherItem, item) == true)
    then doit = true;
    
    if (doit == true)
    {
        ds_list_add(global.explodeList,item);
        game_master.alarm[2] = 2; // will be reset by each item in the chain
    }
}
