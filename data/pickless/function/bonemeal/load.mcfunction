# Track bonemeal being used
scoreboard objectives add pickless.bonemeal minecraft.used:bone_meal
scoreboard objectives add pickless.last_bonemeal dummy
execute as @a run scoreboard players operation @s pickless.last_bonemeal = @s pickless.bonemeal