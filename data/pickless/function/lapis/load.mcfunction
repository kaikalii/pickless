scoreboard objectives add pickless.lapis dummy
scoreboard players set @a pickless.lapis 0
scoreboard players set #max pickless.lapis 50

scoreboard objectives add pickless.levels dummy
execute as @a store result score @s pickless.levels run xp query @s levels

scoreboard objectives add pickless.neary_lapis dummy
