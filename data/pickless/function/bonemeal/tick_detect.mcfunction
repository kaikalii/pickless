## Detect when player uses bone meal and call handler
# say "test"
execute as @a if score @s used_bonemeal > @s last_used_bonemeal run function pickless:bonemeal/on_used
execute as @a run scoreboard players operation @s last_used_bonemeal = @s used_bonemeal

schedule function pickless:bonemeal/tick_detect 1t
