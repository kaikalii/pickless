## Detect when player uses bone meal and call handler

execute as @a if score @s used_bonemeal > @s last_used_bonemeal run function pickless:on_used_bonemeal
execute as @a run scoreboard players operation @s last_used_bonemeal = @s used_bonemeal

schedule function pickless:tick_bonemeal_detect 1t
