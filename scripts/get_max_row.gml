///get_max_row(column, min row, )
/* finds and returns the row
 * before the first occupied row
 */
var returnVal   = 0;
var column      = argument0;
var minRow      = argument1;
var instance    = argument2;

for (var r=(minRow+1); r<=(lastRow); r++)
{
    var val = ds_grid_get(global.grid, column, r);
    
    if  (val != 0)
    and ((r-1) > -1)
    {
        returnVal = (r - 1);
        //show_message("returning max row for "+string(instance) +" as "+string(returnVal));
        return returnVal;
        exit;
    }
}

returnVal = lastRow;
return returnVal;
