scoreboard players operation input elem_temp = input elementary_function

scoreboard players set flag_neg elem_temp 0 
execute if score input elem_temp matches ..-1 run scoreboard players set flag_neg elem_temp 1
execute if score input elem_temp matches ..-1 run scoreboard players operation input elem_temp *= -1 elem_temp

execute if score input elem_temp matches 6280.. run function elementary_function:tools/period_wrap


scoreboard players set flag_neg_2 elem_temp 0 
execute if score input elem_temp matches 3140.. run scoreboard players set flag_neg_2 elem_temp 1
execute if score input elem_temp matches 3140.. run scoreboard players remove input elem_temp 3140

execute if score input elem_temp matches 1571.. run function elementary_function:tools/sin_mirror

execute store result storage elementary:pointer pointer int 1 run scoreboard players get input elem_temp
execute store result score result elementary_function run function elementary_function:tools/lookups/sin with storage elementary:pointer

execute unless score flag_neg elem_temp = flag_neg_2 elem_temp run scoreboard players operation result elementary_function *= -1 elem_temp