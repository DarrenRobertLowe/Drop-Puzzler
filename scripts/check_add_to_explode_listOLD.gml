/// check_add_to_explode_list(id,other id)
var item = argument0;
var otherItem = argument1;
var returnVal = false;

if  (item > 0)
and (item != id)
{
    if  (item.object_index == obj_block)
    and (item.object_index != obj_ball)
    {
        //show_message("check_add_to_explode_list says item is a block and not a ball...");
        if (item.image_index == otherItem.image_index)
        {
            
            ds_list_add(global.explodeList, item);
            //show_debug_message("adding " +string(item) +" obj "+string(object_get_name(item.object_index)) );
            //show_message("check_add_to_explode_list says item index is the same, so it should be added to the list!");
            // pass the chain effect to the next item
            //check_for_explode(item);
            
            returnVal = true;
        }
        //show_message("check_add_to_explode_list says item index is NOT the same. index1 is "+string(item.image_index) +"index2 is "+string(otherItem.image_index));
    }
    //show_message("check_add_to_explode_list says item is either a ball or not a block");
}
//show_message("check_add_to_explode_list says item not found!");

return returnVal;
