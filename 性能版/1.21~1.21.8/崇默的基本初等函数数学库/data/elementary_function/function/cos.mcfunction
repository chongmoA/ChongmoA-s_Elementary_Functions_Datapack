scoreboard players operation input elem_temp = input elementary_function

execute if score input elem_temp matches ..-1 run scoreboard players operation input elem_temp *= -1 elem_temp

execute if score input elem_temp matches 6280.. run function elementary_function:tools/period_wrap

execute if score input elem_temp matches 3140.. run function elementary_function:tools/cos_mirror

scoreboard players set flag_neg_2 elem_temp 0 
execute if score input elem_temp matches 1570.. run scoreboard players set flag_neg_2 elem_temp 1
execute if score input elem_temp matches 1570.. run function elementary_function:tools/cos_mirror_2

execute store result storage elementary:pointer pointer int 1 run scoreboard players get input elem_temp
execute store result score result elementary_function run function elementary_function:tools/lookups/cos with storage elementary:pointer

execute if score flag_neg_2 elem_temp matches 1 run scoreboard players operation result elementary_function *= -1 elem_temp


