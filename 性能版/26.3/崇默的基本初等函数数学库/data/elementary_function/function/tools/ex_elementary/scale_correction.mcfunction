execute store result storage elementary:pointer pointer int 1 run scoreboard players get temp_num elem_temp
execute store result score temp_num elem_temp run function elementary_function:tools/lookups/exp_scale_correction with storage elementary:pointer

scoreboard players operation result elementary_function *= 10000 elem_temp
scoreboard players operation result elementary_function /= temp_num elem_temp