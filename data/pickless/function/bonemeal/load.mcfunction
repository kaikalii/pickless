scoreboard objectives add used_bonemeal minecraft.used:bone_meal
scoreboard objectives add last_used_bonemeal dummy
execute as @a run scoreboard players operation @s last_used_bonemeal = @s used_bonemeal