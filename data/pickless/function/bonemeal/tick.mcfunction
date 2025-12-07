# Bonemeal used
execute as @a if score @s pickless.bonemeal > @s pickless.last_bonemeal run function pickless:bonemeal/on_used
execute as @a run scoreboard players operation @s pickless.last_bonemeal = @s pickless.bonemeal

execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run item modify entity @s weapon.mainhand pickless:make_consumable_brush