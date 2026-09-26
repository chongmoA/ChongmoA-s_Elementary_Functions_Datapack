scoreboard players operation input elem_temp = input elementary_function

scoreboard players set flag_neg elem_temp 0 
execute if score input elem_temp matches ..-1 run scoreboard players set flag_neg elem_temp 1
execute if score input elem_temp matches ..-1 run scoreboard players operation input elem_temp *= -1 elem_temp

execute if score input elem_temp matches 0..61928 run function elementary_function:tools/lookups/arctan/arctan_1

execute if score input elem_temp matches 61929.. run function elementary_function:tools/lookups/arctan/arctan_2

execute if score flag_neg elem_temp matches 1 run scoreboard players operation result elementary_function *= -1 elem_temp