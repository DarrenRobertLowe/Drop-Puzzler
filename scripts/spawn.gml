/// spawn(grid, col, row, object_index);

var grid = argument0;
var col  = argument1;
var row  = argument2;
var obj  = argument3;

var xx = get_x_from_column(col);
var yy = get_y_from_row(row);
var instance = instance_create(xx, yy, obj);

ds_grid_set(grid, col, row, instance);

instance.column = col;
instance.row    = row;

return instance;
