execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run item modify entity @s weapon.mainhand pickless:make_consumable_brush
execute as @e[type=item, nbt={Item:{id:"minecraft:stick"}}] run data modify entity @s Item.components.minecraft:consumable merge value {"consume_seconds": 100, "has_consume_particles": false, "animation": "brush"}

execute as @a if score @s pickless.used_stick = #0 num run scoreboard players set @s pickless.firestart 0
scoreboard players set @a pickless.used_stick 0
