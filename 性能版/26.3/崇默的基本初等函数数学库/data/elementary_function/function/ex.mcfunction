scoreboard players operation input elem_temp = input elementary_function

execute unless score input elem_temp matches -9208..12277 run scoreboard players set result elementary_function 0
execute unless score input elem_temp matches -9208..12277 run return fail

scoreboard players set flag_neg elem_temp 0 
execute if score input elem_temp matches ..-1 run scoreboard players set flag_neg elem_temp 1
execute if score input elem_temp matches ..-1 run scoreboard players operation input elem_temp *= -1 elem_temp

execute if score input elem_temp matches 0..693 store result storage elementary:pointer pointer int 1 run scoreboard players get input elem_temp
execute if score input elem_temp matches 0..693 store result score result elementary_function run function elementary_function:tools/lookups/ex with storage elementary:pointer

execute if score input elem_temp matches 694.. run function elementary_function:tools/ex_elementary/main

execute if score flag_neg elem_temp matches 0 run return fail

scoreboard players operation temp_num elem_temp = result elementary_function
scoreboard players set result elementary_function 100000000
scoreboard players operation result elementary_function /= temp_num elem_temp