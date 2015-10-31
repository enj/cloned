var parent_grid;
parent_grid[0] = argument0;
parent_grid[1] = argument1;
var child=ds_grid_create(ds_grid_width(parent_grid[0]), ds_grid_height(parent_grid[0]));

var mutation_rate=0.05;

var a = argument2 + argument3 + argument4;

//show_message("[" + string(argument4) + "] <- [" + string(argument2) + "] + [" + string(argument3) + "]");

//Loop through each state
for(var i=0;i<ds_grid_height(parent_grid[0]);i++) {
    // Loop through each action probability and pick a random one
    for(var j=0;j<8;j++) {
        if(random(1)<mutation_rate) {
//            show_message("Mutating child [" + string(argument4) + "] at [" + string(i*8+j) + "]");
            ds_grid_set(child,j,i,random(10));
        } else {
            var r = irandom(1);
//            show_message("Picking parent [" + string(r) + "] for child [" + string(argument4) + "] at [" + string(i*8+j) + "]");
            ds_grid_set(child,j,i,ds_grid_get(parent_grid[irandom(1)],j,i));
        }
    }
}

