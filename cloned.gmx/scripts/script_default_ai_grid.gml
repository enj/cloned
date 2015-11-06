var temp_grid = ds_grid_create(8,32);

//Actions:
// 0 - None
// 1 - Back
// 2 - Forward
// 3 - Punch
// 4 - Kick
// 5 - Block
// 6 - Jump
// 7 - Special


// Actions for State 0 (out of range, no special)
ds_grid_set(temp_grid, 0, 0, 2); // None
ds_grid_set(temp_grid, 1, 0, 1); // Back
ds_grid_set(temp_grid, 2, 0, 6); // Forward
ds_grid_set(temp_grid, 3, 0, 0); // Punch
ds_grid_set(temp_grid, 4, 0, 0); // Kick
ds_grid_set(temp_grid, 5, 0, 0); // Block
ds_grid_set(temp_grid, 6, 0, 0); // Jump
ds_grid_set(temp_grid, 7, 0, 0); // Special

// Actions for State 1 (enemy in attack range, I am out of range, no special)
ds_grid_set(temp_grid, 0, 1, 0); // None
ds_grid_set(temp_grid, 1, 1, 2); // Back
ds_grid_set(temp_grid, 2, 1, 6); // Forward
ds_grid_set(temp_grid, 3, 1, 0); // Punch
ds_grid_set(temp_grid, 4, 1, 0); // Kick
ds_grid_set(temp_grid, 5, 1, 2); // Block
ds_grid_set(temp_grid, 6, 1, 2); // Jump
ds_grid_set(temp_grid, 7, 1, 0); // Special

// Actions for State 2 (enemy is attacking but out of range, I am out of range, no special)
ds_grid_set(temp_grid, 0, 2, 1); // None
ds_grid_set(temp_grid, 1, 2, 2); // Back
ds_grid_set(temp_grid, 2, 2, 2); // Forward
ds_grid_set(temp_grid, 3, 2, 0); // Punch
ds_grid_set(temp_grid, 4, 2, 0); // Kick
ds_grid_set(temp_grid, 5, 2, 2); // Block
ds_grid_set(temp_grid, 6, 2, 2); // Jump
ds_grid_set(temp_grid, 7, 2, 0); // Special

// Actions for State 3 (enemy in attack range and attacking, I am out of range, no special)
ds_grid_set(temp_grid, 0, 3, 0); // None
ds_grid_set(temp_grid, 1, 3, 1); // Back
ds_grid_set(temp_grid, 2, 3, 2); // Forward
ds_grid_set(temp_grid, 3, 3, 0); // Punch
ds_grid_set(temp_grid, 4, 3, 0); // Kick
ds_grid_set(temp_grid, 5, 3, 8); // Block
ds_grid_set(temp_grid, 6, 3, 1); // Jump
ds_grid_set(temp_grid, 7, 3, 0); // Special

// Actions for State 4 (I can kick, no special)
ds_grid_set(temp_grid, 0, 4, 1); // None
ds_grid_set(temp_grid, 1, 4, 1); // Back
ds_grid_set(temp_grid, 2, 4, 3); // Forward
ds_grid_set(temp_grid, 3, 4, 0); // Punch
ds_grid_set(temp_grid, 4, 4, 8); // Kick
ds_grid_set(temp_grid, 5, 4, 0); // Block
ds_grid_set(temp_grid, 6, 4, 1); // Jump
ds_grid_set(temp_grid, 7, 4, 0); // Special

// Actions for State 5 (Enemy can attack, I can kick, no special)
ds_grid_set(temp_grid, 0, 5, 0); // None
ds_grid_set(temp_grid, 1, 5, 1); // Back
ds_grid_set(temp_grid, 2, 5, 1); // Forward
ds_grid_set(temp_grid, 3, 5, 0); // Punch
ds_grid_set(temp_grid, 4, 5, 8); // Kick
ds_grid_set(temp_grid, 5, 5, 3); // Block
ds_grid_set(temp_grid, 6, 5, 2); // Jump
ds_grid_set(temp_grid, 7, 5, 0); // Special

// Actions for State 6 (Enemy is attacking out of range, I can kick, no special)
ds_grid_set(temp_grid, 0, 6, 2); // None
ds_grid_set(temp_grid, 1, 6, 2); // Back
ds_grid_set(temp_grid, 2, 6, 0); // Forward
ds_grid_set(temp_grid, 3, 6, 0); // Punch
ds_grid_set(temp_grid, 4, 6, 8); // Kick
ds_grid_set(temp_grid, 5, 6, 2); // Block
ds_grid_set(temp_grid, 6, 6, 2); // Jump
ds_grid_set(temp_grid, 7, 6, 0); // Special

// Actions for State 7 (Enemy is attacking in range, I can kick, no special)
ds_grid_set(temp_grid, 0, 7, 0); // None
ds_grid_set(temp_grid, 1, 7, 2); // Back
ds_grid_set(temp_grid, 2, 7, 1); // Forward
ds_grid_set(temp_grid, 3, 7, 0); // Punch
ds_grid_set(temp_grid, 4, 7, 5); // Kick
ds_grid_set(temp_grid, 5, 7, 5); // Block
ds_grid_set(temp_grid, 6, 7, 2); // Jump
ds_grid_set(temp_grid, 7, 7, 0); // Special

// Actions for State 8 (Enemy can't reach, I can punch, no special)
ds_grid_set(temp_grid, 0, 8, 2); // None
ds_grid_set(temp_grid, 1, 8, 2); // Back
ds_grid_set(temp_grid, 2, 8, 1); // Forward
ds_grid_set(temp_grid, 3, 8, 6); // Punch
ds_grid_set(temp_grid, 4, 8, 0); // Kick
ds_grid_set(temp_grid, 5, 8, 0); // Block
ds_grid_set(temp_grid, 6, 8, 1); // Jump
ds_grid_set(temp_grid, 7, 8, 0); // Special

// Actions for State 9 (Enemy can reach, I can punch, no special)
ds_grid_set(temp_grid, 0, 9, 2); // None
ds_grid_set(temp_grid, 1, 9, 2); // Back
ds_grid_set(temp_grid, 2, 9, 1); // Forward
ds_grid_set(temp_grid, 3, 9, 6); // Punch
ds_grid_set(temp_grid, 4, 9, 0); // Kick
ds_grid_set(temp_grid, 5, 9, 1); // Block
ds_grid_set(temp_grid, 6, 9, 1); // Jump
ds_grid_set(temp_grid, 7, 9, 0); // Special

// Actions for State 10 (Enemy attacking out of range, I can punch, no special)
ds_grid_set(temp_grid, 0, 10, 2); // None
ds_grid_set(temp_grid, 1, 10, 2); // Back
ds_grid_set(temp_grid, 2, 10, 1); // Forward
ds_grid_set(temp_grid, 3, 10, 6); // Punch
ds_grid_set(temp_grid, 4, 10, 0); // Kick
ds_grid_set(temp_grid, 5, 10, 2); // Block
ds_grid_set(temp_grid, 6, 10, 1); // Jump
ds_grid_set(temp_grid, 7, 10, 0); // Special

// Actions for State 11 (Enemy attacking in range, I can punch, no special)
ds_grid_set(temp_grid, 0, 11, 0); // None
ds_grid_set(temp_grid, 1, 11, 2); // Back
ds_grid_set(temp_grid, 2, 11, 1); // Forward
ds_grid_set(temp_grid, 3, 11, 5); // Punch
ds_grid_set(temp_grid, 4, 11, 0); // Kick
ds_grid_set(temp_grid, 5, 11, 5); // Block
ds_grid_set(temp_grid, 6, 11, 2); // Jump
ds_grid_set(temp_grid, 7, 11, 0); // Special

// Actions for State 12 (I can punch or kick, no special)
ds_grid_set(temp_grid, 0, 12, 2); // None
ds_grid_set(temp_grid, 1, 12, 2); // Back
ds_grid_set(temp_grid, 2, 12, 1); // Forward
ds_grid_set(temp_grid, 3, 12, 5); // Punch
ds_grid_set(temp_grid, 4, 12, 5); // Kick
ds_grid_set(temp_grid, 5, 12, 0); // Block
ds_grid_set(temp_grid, 6, 12, 1); // Jump
ds_grid_set(temp_grid, 7, 12, 0); // Special

// Actions for State 13 (enemy in range, I can punch or kick, no special)
ds_grid_set(temp_grid, 0, 13, 2); // None
ds_grid_set(temp_grid, 1, 13, 2); // Back
ds_grid_set(temp_grid, 2, 13, 1); // Forward
ds_grid_set(temp_grid, 3, 13, 5); // Punch
ds_grid_set(temp_grid, 4, 13, 5); // Kick
ds_grid_set(temp_grid, 5, 13, 2); // Block
ds_grid_set(temp_grid, 6, 13, 2); // Jump
ds_grid_set(temp_grid, 7, 13, 0); // Special

// Actions for State 14 (enemy attacking out of range, I can punch or kick, no special)
ds_grid_set(temp_grid, 0, 14, 2); // None
ds_grid_set(temp_grid, 1, 14, 2); // Back
ds_grid_set(temp_grid, 2, 14, 1); // Forward
ds_grid_set(temp_grid, 3, 14, 5); // Punch
ds_grid_set(temp_grid, 4, 14, 5); // Kick
ds_grid_set(temp_grid, 5, 14, 2); // Block
ds_grid_set(temp_grid, 6, 14, 2); // Jump
ds_grid_set(temp_grid, 7, 14, 0); // Special

// Actions for State 15 (enemy attacking in range, I can punch or kick, no special)
ds_grid_set(temp_grid, 0, 15, 0); // None
ds_grid_set(temp_grid, 1, 15, 2); // Back
ds_grid_set(temp_grid, 2, 15, 0); // Forward
ds_grid_set(temp_grid, 3, 15, 5); // Punch
ds_grid_set(temp_grid, 4, 15, 5); // Kick
ds_grid_set(temp_grid, 5, 15, 5); // Block
ds_grid_set(temp_grid, 6, 15, 2); // Jump
ds_grid_set(temp_grid, 7, 15, 0); // Special

// Copy each of the first 15 states, into the same state but with special available. Set special probability to 5;
for(var i=0;i<ds_grid_height(temp_grid)/2;i++) {
    for(var j=0;j<ds_grid_width(temp_grid)-1;j++) {
        ds_grid_set(temp_grid, j, i+16, ds_grid_get(temp_grid, j, i)); 
    }
    ds_grid_set(temp_grid,7,i+16,5); 
}

return temp_grid;
