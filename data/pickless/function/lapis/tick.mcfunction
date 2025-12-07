execute as @a store result score @s pickless.levels run xp query @s levels
execute as @a at @s if score @s pickless.levels >= #20 num run function pickless:lapis/scan

execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}}] run item modify entity @s weapon.mainhand pickless:make_consumable
