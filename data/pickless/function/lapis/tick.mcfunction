execute as @a store result score @s pickless.levels run xp query @s levels
execute as @a at @s if score @s pickless.levels >= #20 num run function pickless:lapis/scan

execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}}] run item modify entity @s weapon.mainhand pickless:make_consumable
execute as @e[type=item, nbt={Item:{id:"minecraft:lapis_lazuli"}}] run data modify entity @s Item.components.minecraft:consumable merge value {"consume_seconds": 100, "has_consume_particles": false, "animation": "bundle"}