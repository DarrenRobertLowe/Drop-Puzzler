/// grid_get_column(instance id or value)
/* returns the column number of the first
 * instance (left to right) of the given
 * value (e.g. ball column is 6).
*/
var result = -1;

var grid   = global.grid;
var width  = ds_grid_width(grid);
var height = ds_grid_height(grid);

for (var r=0; r<height; r++)
{
    for (var c=0; c<width; c++)
    {
        var val = ds_grid_get(grid,c,r);
        
        if (val == argument0)
        {
            result = c;
        }
    }
}

return result;
