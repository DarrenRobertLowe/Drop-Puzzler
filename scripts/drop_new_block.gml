//var snd = audio_play_sound(snd_drop, 1, 0);
//audio_sound_pitch(snd,0.8);

ds_list_clear(global.explodeList);               

var index = blockVal;       // grab our temp block's sprite_index

instance_destroy(playerBlock, true);     // destroy our temp block

// create an actual block in its place
if (index == 0) then newBlock = spawn(grid,column,0,obj_block_blue);
if (index == 1) then newBlock = spawn(grid,column,0,obj_block_green);
if (index == 2) then newBlock = spawn(grid,column,0,obj_block_red);
if (index == 3) then newBlock = spawn(grid,column,0,obj_block_yellow);
newBlock.falling    = true;
newBlock.targetRow  = get_max_row(column, 0, newBlock);

playerBlock = -1;
alarm[1]    = dropDelay;

global.dropID++;
global.chain = 0;

/// DROP US THERE
fall_object(newBlock, column, row);
