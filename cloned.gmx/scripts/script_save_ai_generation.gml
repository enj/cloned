var i, element_str;
var fighter = argument0;
var ai_map = argument1;
ini_open("ai_" + fighter + ".ini");
for(i=0;i<array_length_1d(ai_map);i++) {
    ini_section_delete(string(i));
    element_str=ds_map_write(ai_map[i]);
    ini_write_string(string(i), "0", element_str);
}
ini_close();

