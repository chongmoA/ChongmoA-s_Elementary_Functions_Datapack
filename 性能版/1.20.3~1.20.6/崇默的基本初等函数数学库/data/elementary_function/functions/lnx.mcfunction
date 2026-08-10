scoreboard players operation input elem_temp = input elementary_function

execute if score input elem_temp matches ..0 run scoreboard players set result elementary_function 0
execute if score input elem_temp matches ..0 run return fail

execute if score input elem_temp matches 1..2000 store result storage elementary:pointer pointer int 1 run scoreboard players get input elem_temp
execute if score input elem_temp matches 1..2000 store result score result elementary_function run function elementary_function:tools/lookups/lnx with storage elementary:pointer

execute if score input elem_temp matches 2001.. run function elementary_function:tools/lnx_elementary/main