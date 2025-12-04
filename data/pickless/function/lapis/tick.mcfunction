execute as @a store result score @s pickless.levels run xp query @s levels
execute as @a at @s if score @s pickless.levels >= #20 num run function pickless:lapis/scan