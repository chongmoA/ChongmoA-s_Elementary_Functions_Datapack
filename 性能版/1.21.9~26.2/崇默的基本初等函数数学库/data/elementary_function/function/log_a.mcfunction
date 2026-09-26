execute if score param elementary_function matches ..0 run scoreboard players set result elementary_function 0
execute if score param elementary_function matches ..0 run return fail
execute if score input elementary_function matches ..0 run scoreboard players set result elementary_function 0
execute if score input elementary_function matches ..0 run return fail
execute if score param elementary_function matches 1000 run scoreboard players set result elementary_function 0
execute if score param elementary_function matches 1000 run return fail


function elementary_function:lnx

scoreboard players operation outer_temp_num elem_temp = result elementary_function
scoreboard players operation outer_temp_num elem_temp *= 10000 elem_temp
scoreboard players operation outer_temp_num_2 elem_temp = input elementary_function
scoreboard players operation input elementary_function = param elementary_function 

function elementary_function:lnx

scoreboard players operation input elementary_function = outer_temp_num_2 elem_temp
scoreboard players operation outer_temp_num elem_temp /= result elementary_function 
scoreboard players operation result elementary_function = outer_temp_num elem_temp