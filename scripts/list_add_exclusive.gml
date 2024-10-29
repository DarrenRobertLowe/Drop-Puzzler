/// list_add_exclusive(list, value)
var list  = argument0;
var value = argument1;

if (ds_list_find_index(list,value) == -1)
{
    ds_list_add(list,value);
    //show_message("item: "+string(value) +" added to list");
}
