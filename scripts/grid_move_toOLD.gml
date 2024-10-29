///grid_move_to(intance id, targetColumn, targetRow)
var item    = argument0;
var tCol    = argument1;
var tRow    = argument2;

if exists(item)
{
    var column          = item.column;
    var row             = item.row;
    item.row            = tRow;
    item.targetRow      = tRow;
    item.column         = tCol;
    item.targetColumn   = tCol;
    
    ds_grid_set(grid, tCol, tRow, item);    // set new grid space
    ds_grid_set(grid, column, row, 0);      // clear old grid space
    
    //show_message("set item:"+string(item)+" c"+string(column)+":r"+string(row)+" to "+string(tCol)+":"+string(tRow));
}
