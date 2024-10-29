///fall_object(id, column, row)

var instance = argument0;
var column   = argument1;
var row      = argument2;

var targetRow = get_max_row(column, row+1, instance);

if  (targetRow > -1)
and (targetRow <= lastRow)
{
    var val = ds_grid_get(grid, column, targetRow);
    if (val == 0)
    {
        ds_grid_set(grid, column, targetRow, instance); // set new grid space
        ds_grid_set(grid, column, row, 0);              // clear old grid space
        
        instance.falling = true;
        instance.row     = targetRow;
    }
}
