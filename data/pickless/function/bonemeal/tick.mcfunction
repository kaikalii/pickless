# Bonemeal used
execute as @a if score @s pickless.bonemeal > @s pickless.last_bonemeal run function pickless:bonemeal/on_used
execute as @a run scoreboard players operation @s pickless.last_bonemeal = @s pickless.bonemeal