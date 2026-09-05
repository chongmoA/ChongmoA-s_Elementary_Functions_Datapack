execute unless score input elem_temp matches 3600.. run return fail
scoreboard players remove input elem_temp 3600
execute if score input elem_temp matches 36000.. run scoreboard players remove input elem_temp 36000
execute if score input elem_temp matches 360000.. run scoreboard players remove input elem_temp 360000
function elementary_function:tools/period_warp_deg