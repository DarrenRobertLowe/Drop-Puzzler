/// start_level();
/* Only call this from MASTER!
 *
*/

if ds_exists(ds_type_grid,grid)
then  ds_grid_clear(grid,0);
else
{
    //CRASH!
}

for (var r=3; r<gridHeight; r++) // rows
{
    for (var c = 0; c<gridWidth; c++)
    {
        var block = instance_create(0,0,obj_block);
        ds_grid_set(grid, c, r, block);
        block.grid_c = c;
        block.grid_r = r;
    }
}

