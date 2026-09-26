# input^param = e^(param*ln(input))
# param: 指数 ×10
# input: 底数 ×1000
# result: 底数^指数 ×10000

execute if score input elementary_function matches ..0 run scoreboard players set result elementary_function 0
execute if score input elementary_function matches ..0 run return fail

execute if score input elementary_function matches 1000 run scoreboard players set result elementary_function 0
execute if score input elementary_function matches 1000 run return fail

function elementary_function:lnx
scoreboard players operation outer_temp_num elem_temp = result elementary_function
scoreboard players operation outer_temp_num elem_temp *= param elementary_function
scoreboard players operation outer_temp_num elem_temp /= 100 elem_temp
execute unless score outer_temp_num elem_temp matches -9208..12277 run scoreboard players set result elementary_function 0
execute unless score outer_temp_num elem_temp matches -9208..12277 run return fail

scoreboard players operation outer_temp_num_2 elem_temp = input elementary_function
scoreboard players operation input elementary_function = outer_temp_num elem_temp
function elementary_function:ex
scoreboard players operation input elementary_function = outer_temp_num_2 elem_temp