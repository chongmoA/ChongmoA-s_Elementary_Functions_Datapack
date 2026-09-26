scoreboard players operation temp_num elem_temp = input elem_temp
scoreboard players operation temp_num elem_temp /= 693 elem_temp

execute store result storage elementary:pointer pointer int 1 run scoreboard players get temp_num elem_temp
execute store result score result elementary_function run function elementary_function:tools/lookups/pow2 with storage elementary:pointer

scoreboard players operation temp_num_2 elem_temp = input elem_temp
scoreboard players operation temp_num_2 elem_temp %= 693 elem_temp

execute store result storage elementary:pointer pointer int 1 run scoreboard players get temp_num_2 elem_temp
execute store result score temp_num_2 elem_temp run function elementary_function:tools/lookups/ex with storage elementary:pointer

execute if score temp_num elem_temp matches 10..17 run function elementary_function:tools/ex_elementary/scale_correction

scoreboard players operation result elementary_function *= temp_num_2 elem_temp
