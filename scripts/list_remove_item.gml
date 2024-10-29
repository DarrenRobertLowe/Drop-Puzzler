/// list_remove_item(list, value)
/* finds the index of the given value
 * and removes it from the list
 */
 
var list = argument0;
var item = argument1;

var ind = ds_list_find_index(list,item);

if (ind > -1)
{
    ds_list_delete(list,ind);
}
