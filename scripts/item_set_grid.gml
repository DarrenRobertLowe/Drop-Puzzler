///item_set_grid(intance id, column, row)
var item = argument0;
var tRow = argument1;

if exists(item)
{
    item.row = tRow;
    item.targetRow = tRow;
    ds_grid_set(grid, column, tRow, item);  // set new grid space
    ds_grid_set(grid, column, row, 0);      // clear old grid space
}
