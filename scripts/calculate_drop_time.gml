/// calculate_drop_time(instance)

var block     = argument0;
var col       = grid_get_column(block);
var row       = grid_get_row(block);
var targetRow = get_max_row(col,row,block);

var distance = ( targetRow - row );
var dropTime = ( (distance * global.cellHeight) / global.accelSpeed );

return dropTime;
