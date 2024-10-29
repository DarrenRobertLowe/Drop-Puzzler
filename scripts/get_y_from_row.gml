/// get_y_from_row(row);

var row = argument0;
var yy = ( global.gridStartY + (row * global.cellHeight) );
//show_debug_message("row was "+string(argument0)+" : returning "+string(yy));
return yy;
