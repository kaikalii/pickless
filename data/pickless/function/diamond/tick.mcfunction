# Check for diamond items on the ground and call handler at their position
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond"}}] at @s run function pickless:diamond/on_ground

# Diamond picked up
execute as @a if score @s pickless.diamond > @s pickless.last_diamond run function pickless:diamond/on_picked_up
execute as @a run scoreboard players operation @s pickless.last_diamond = @s pickless.diamond
