/// fall()
/* NOTE: This doesn't affect the grid, it's just
 * a graphical thing, except that when a block
 * has finished falling it tells game_master to
 * do its thing. 
*/

if (falling == true)
{
    var targY = get_y_from_row(row);
    
    // set face
    if ((targY - y) < (cellHeight*4)) then eyes = 4;
    alarm[2] = -1;                                  // don't allow our face to change while falling
    list_add_exclusive(global.gfx_fallingList,id);  // pause game_master while we fall
    
    // fall
    if ((y + fallSpeed + launched) < targY) // the target row is below us
    {
        y += fallSpeed ;
        
        fallSpeed += (accelSpeed + launched);
        
        if  (fallSpeed > maxSpeed)
        then fallSpeed = maxSpeed;
    }
    else // we've recahed the target row
    {
        distanceFalling = (targY - y);  // used as momentum for bounce
        y           = targY;            // clip the y
        falling     = false;
        fallSpeed   = 0;
        launched    = 0;
        eyes        = 4;                // look down
        
        list_remove_item(global.gfx_fallingList, id);
        
        // play sound
        var snd = audio_play_sound(snd_pop_0,1,0);
        audio_sound_pitch(snd, 0.3+(2/row)); //choose(0.6,0.7,0.8,0.8,1,1.1));
        
        // change our face
        alarm[2] = room_speed;
        
        // wake up game_master and initiate fall - explode loop
        game_master.alarm[9] = 1;
        
        // bounce
        bouncing        = true;
        bounceDistance  = (distanceFalling / cellHeight);
        bounceRiseCount = bounceDistance;
        targetY         = get_y_from_row(row);
        bounceSpeed     = 2;
        y -= 1;
        alarm[4] = 1;
        
        

        // interact with side blocks
        var leftBlock = ds_grid_get(grid,column-1,row)
        if exists(leftBlock)
        {
            leftBlock.eyes = 7;
        }
        
        var rightBlock = ds_grid_get(grid,column+1,row)
        if exists(rightBlock)
        {
            rightBlock.eyes = 6;
        }
        
        // interact with below block
        var belowBlock = ds_grid_get(grid,column,row+1)
        if exists(belowBlock)
        {
            // offset x
            with(belowBlock)
            {
                //alarm[4] = 1;
                eyes = 5;
                
                var tbrows = eyebrows;
                lastBrows = sprite_get_number(spr_eyebrows)-1;
                eyebrows = (1 + (irandom(lastBrows) ));
                
                if (eyebrows == tbrows)
                {
                    eyebrows++
                }
                if  (eyebrows = sprite_get_number(spr_eyebrows))
                then eyebrows = 1;
            }
        }
    }
}
