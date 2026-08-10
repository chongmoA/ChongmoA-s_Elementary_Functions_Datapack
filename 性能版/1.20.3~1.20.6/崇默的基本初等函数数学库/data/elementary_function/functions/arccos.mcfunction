function elementary_function:arcsin

execute unless score input elementary_function matches -1000..1000 run return fail 

scoreboard players operation result elementary_function *= -1 elem_temp
scoreboard players add result elementary_function 15708