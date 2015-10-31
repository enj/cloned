var fighter = argument0;
var ai_array = argument1;


// New method
var open_file = "ai_" + fighter + ".ini";
if(file_exists(open_file)) {
    ini_open(open_file);
    for(var i=0;i<array_length_1d(ai_array);i++) {
        ds_grid_read(ai_array[i], ini_read_string(string(i), "0", ""));
    }
    ini_close();
} else {
    script_gen_ai_temp(fighter, ai_array);
}

