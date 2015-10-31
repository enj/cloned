var fighter = argument0;
var ai_array = argument1;

show_message("Generating AI save file for " + fighter);


for(var i=0;i<array_length_1d(ai_array);i++) {
    var grid = ai_array[i];
    for(var j=0;j<ds_grid_width(grid);j++) {
        for(var k=0;k<ds_grid_height(grid);k++) {
            ds_grid_set(grid, j, k, random(10));
        }
    }
}
script_save_ai_generation(fighter, ai_array);

