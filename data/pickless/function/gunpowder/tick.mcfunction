# Check for gunpowder items on the ground and call handler at their position
execute as @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}}] at @s run function pickless:gunpowder/on_ground