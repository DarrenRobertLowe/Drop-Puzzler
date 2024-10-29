/// check_for_burster(id of block to compare to)
var instance= argument0;
var type    = 0;
var burst   = false;
var itm     = -1;
var grid    = global.grid;
var column  = instance.column;
var row     = instance.row;

if (instance.object_index == obj_block_blue)   then type = 0;
if (instance.object_index == obj_block_green)  then type = 1;
if (instance.object_index == obj_block_red)    then type = 2;
if (instance.object_index == obj_block_yellow) then type = 3;

itm = ds_grid_get(grid,column,row+1)
if (itm.object_index == obj_burster) then burst = true;
if (burst == true)
{
    itm.type = type;
    itm.alarm[3] = 1;
    exit;
}

itm = ds_grid_get(grid,column,row-1)
if (itm.object_index == obj_burster) then burst = true;
if (burst == true)
{
    itm.type = type;
    itm.alarm[3] = 1;
    exit;
}

itm = ds_grid_get(grid,column+1,row)
if (itm.object_index == obj_burster) then burst = true;
if (burst == true)
{
    itm.type = type;
    itm.alarm[3] = 1;
    exit;
}

itm = ds_grid_get(grid,column-1,row)
if (itm.object_index == obj_burster) then burst = true;
if (burst == true)
{   
    itm.type = type;
    itm.alarm[3] = 1;
    exit;
}


