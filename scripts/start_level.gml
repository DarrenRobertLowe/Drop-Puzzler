/// start_level();
var grid = global.grid;
ds_grid_clear(grid, 0);

var totalBlocks = (gridHeight * gridWidth);
var minusRows   = (3 * gridWidth);
totalBlocks -= minusRows;

var list = global.blockList;
var prevBlock = -1;

repeat(totalBlocks)
{
    var blockType = irandom(3);
    
    if (prevBlock == blockType) then blockType++;
    if (blockType > 3) then blockType = 0;
    
    if (blockType == 0) then ds_list_add(list, obj_block_blue);
    if (blockType == 1) then ds_list_add(list, obj_block_green);
    if (blockType == 2) then ds_list_add(list, obj_block_red);
    if (blockType == 3) then ds_list_add(list, obj_block_yellow);
    
    prevBlock = blockType;
}



// Place blocks
//spawn(grid, 5, 5, obj_block_blue);
var i=0;
for (var r=3; r<(gridHeight); r++) // rows
{
    for (var c=0; c<(gridWidth); c++)
    {
        var block = ds_list_find_value(global.blockList,i);
        i++;
        
        var chance = irandom(totalBlocks/2);
        if (chance == 1)
        {
            spawn(grid, c, r, obj_burster);
        }
        else spawn(grid, c, r, block);
    }
}

//spawn(grid, 1, 1, obj_burster);

// Place dropper (player)
instance_create(0, 0, obj_dropper);

// place master
instance_create(0, 0, game_master);
