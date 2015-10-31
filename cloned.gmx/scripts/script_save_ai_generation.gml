var fighter = argument0;
var ai_array = argument1;

// New method
ini_open("ai_" + fighter + ".ini");
for(var i=0;i<array_length_1d(ai_array); i++) {
    ini_write_string(string(i), "0", ds_grid_write(ai_array[i]));
}
ini_close();

