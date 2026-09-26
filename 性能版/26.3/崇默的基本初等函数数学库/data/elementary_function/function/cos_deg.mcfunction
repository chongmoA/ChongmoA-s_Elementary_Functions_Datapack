scoreboard players operation input elem_temp = input elementary_function
execute if score input elem_temp matches ..-1 run scoreboard players operation input elem_temp *= -1 elem_temp
execute if score input elem_temp matches 3600.. run function elementary_function:tools/period_warp_deg
execute if score input elem_temp matches 1801.. run function elementary_function:tools/cos_mirror_deg
scoreboard players set flag_neg_2 elem_temp 0
execute if score input elem_temp matches 901.. run scoreboard players set flag_neg_2 elem_temp 1
execute if score input elem_temp matches 901.. run function elementary_function:tools/cos_mirror_2_deg
execute store result storage elementary:pointer pointer int 1 run scoreboard players get input elem_temp
execute store result score result elementary_function run function elementary_function:tools/lookups/cos_deg with storage elementary:pointer
execute if score flag_neg_2 elem_temp matches 1 run scoreboard players operation result elementary_function *= -1 elem_temp