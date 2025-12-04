# Random tick
scoreboard players set @a pickless.tick_i 0
execute as @a at @s run function pickless:random_tick_player

# Scan
scoreboard players set #x pickless.scan 0
execute if score #x_mode pickless.scan = #0 num run scoreboard players operation #x pickless.scan -= #scan_radius pickless.scan
execute if score #x_mode pickless.scan = #0 num run function pickless:scan_x {cond:"< #0 num"}
execute if score #x_mode pickless.scan = #1 num run function pickless:scan_x {cond:"<= #scan_radius pickless.scan"}
scoreboard players operation #temp num = #1 num
scoreboard players operation #temp num -= #x_mode pickless.scan
scoreboard players operation #x_mode pickless.scan = #temp num

# Replace pickaxes
function pickless:replace/tick
function pickless:bonemeal/tick
function pickless:iron/tick
function pickless:gold/tick
function pickless:lapis/tick
function pickless:obsidian/tick
function pickless:debris/tick

# execute as @a at @s positioned ~ ~1.62 ~ positioned ^-0.35 ^ ^0.25 run particle electric_spark
# execute as @a at @s positioned ~ ~1.62 ~ positioned ^-0.3 ^ ^0.5 run particle electric_spark
# execute as @a at @s positioned ~ ~1.62 ~ positioned ^-0.25 ^ ^0.75 run particle electric_spark
# execute as @a at @s positioned ~ ~1.62 ~ positioned ^-0.2 ^ ^1 run particle electric_spark
# execute as @a at @s positioned ~ ~1.62 ~ positioned ^-0.15 ^ ^1.25 run particle electric_spark
# execute as @a at @s positioned ~ ~1.62 ~ positioned ^-0.1 ^ ^1.5 run particle electric_spark
# execute as @a at @s positioned ~ ~1.62 ~ positioned ^-0.05 ^ ^1.75 run particle electric_spark
# execute as @a at @s positioned ~ ~1.62 ~ positioned ^0 ^ ^2 run particle electric_spark
# execute as @a at @s positioned ~ ~1.62 ~ positioned ^0.05 ^ ^2.25 run particle electric_spark
# execute as @a at @s positioned ~ ~1.62 ~ positioned ^0.1 ^ ^2.5 run particle electric_spark
# execute as @a at @s positioned ~ ~1.62 ~ positioned ^0.15 ^ ^2.75 run particle electric_spark
# execute as @a at @s positioned ~ ~1.62 ~ positioned ^0.2 ^ ^3 run particle electric_spark