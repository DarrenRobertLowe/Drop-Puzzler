/// grid_get_row(instance id or value)
/* returns the row number of the first
 * instance (left to right) of the given
 * value (e.g. ball row is 3).
*/
var result = -1;

for (var r=0; r<gridHeight; r++)
{
    for (var c=0; c<gridWidth; c++)
    {
        var val = ds_grid_get(grid,c,r);
        
        if (val == argument0)
        {
            result = r;
        }
    }
}
//show_debug_message("returning row for "+string(argument0) +" as "+string(r));
return result;
