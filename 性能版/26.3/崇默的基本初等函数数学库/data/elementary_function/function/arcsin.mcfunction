scoreboard players operation input elem_temp = input elementary_function

execute unless score input elem_temp matches -1000..1000 run scoreboard players set result elementary_function 0
execute unless score input elem_temp matches -1000..1000 run return fail

scoreboard players set flag_neg elem_temp 0 
execute if score input elem_temp matches ..-1 run scoreboard players set flag_neg elem_temp 1
execute if score input elem_temp matches ..-1 run scoreboard players operation input elem_temp *= -1 elem_temp

execute store result storage elementary:pointer pointer int 1 run scoreboard players get input elem_temp
execute store result score result elementary_function run function elementary_function:tools/lookups/arcsin with storage elementary:pointer

execute if score flag_neg elem_temp matches 1 run scoreboard players operation result elementary_function *= -1 elem_temp