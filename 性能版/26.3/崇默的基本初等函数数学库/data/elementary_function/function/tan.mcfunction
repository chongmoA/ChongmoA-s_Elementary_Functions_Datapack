execute store result storage elementary:pointer pointer float 0.001 run scoreboard players get input elementary_function
execute store result score result elementary_function run compute default float elementary_function:cos_get 10000
scoreboard players operation temp_num elem_temp = result elementary_function
execute store result score result elementary_function run compute default float elementary_function:sin_get 100000000

execute unless score temp_num elem_temp matches 0 run scoreboard players operation result elementary_function /= temp_num elem_temp
