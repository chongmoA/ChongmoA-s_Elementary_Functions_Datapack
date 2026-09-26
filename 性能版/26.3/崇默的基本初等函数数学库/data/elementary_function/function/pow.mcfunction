# input^param = e^(param*ln(input))
# param: 指数 ×1000
# input: 底数 ×1000
# result: 底数^指数 ×10000

execute if score input elementary_function matches ..0 run scoreboard players set result elementary_function 0
execute if score input elementary_function matches ..0 run return fail

execute if score input elementary_function matches 1000 run scoreboard players set result elementary_function 0
execute if score input elementary_function matches 1000 run return fail

execute store result storage elementary:pointer pointer float 0.001 run scoreboard players get input elementary_function
execute store result storage elementary:pointer param float 0.001 run scoreboard players get param elementary_function
execute store result score result elementary_function run compute default float elementary_function:pow_get 10000