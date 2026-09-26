function elementary_function:tools/lnx_elementary/log2/main

scoreboard players operation temp_num elem_temp *= 6931 elem_temp

scoreboard players operation input elem_temp /= temp_num_2 elem_temp

execute store result storage elementary:pointer pointer int 1 run scoreboard players get input elem_temp
execute store result score result elementary_function run function elementary_function:tools/lookups/lnx with storage elementary:pointer

scoreboard players operation result elementary_function += temp_num elem_temp