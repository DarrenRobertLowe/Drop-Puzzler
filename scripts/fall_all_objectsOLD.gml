///fall_all_objects()


var list = global.fallingList;
var size = ds_list_size(list);
var item = ds_list_find_value(list, i);

for (var i=0; i<size; i++)
{
    fall_object(item, item.column, item.row)
}


/// move objects down
/*
show_debug_message("running event 1 - falling");

var list = global.fallingList;
var size = ds_list_size(list);

for (var i=0; i<size; i++)
{
    var item      = ds_list_find_value(list, i);
    var targetRow = (item.row + 1);
    var column    = item.column;
    var row       = item.row;

    ds_grid_set(grid, column, targetRow, item); // set new grid space
    ds_grid_set(grid, column, row, 0);          // clear old grid space
    

    item.row = targetRow;

    if  ( (item.row+1) <= gridHeight)
    and ( ds_grid_get(grid, column, item.row+1) == 0 )
    {
        list_add_exclusive(global.fallingList, newBlock);
        check_for_falling();
    }
}
*/

