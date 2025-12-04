# Random tick
scoreboard players set @a pickless.tick_i 0
execute as @a at @s run function pickless:random_tick_player

# Scan
scoreboard players set #curr pickless.scan 0
function pickless:scan_iter

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