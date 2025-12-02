scoreboard objectives add pickless.can_squish dummy
scoreboard players set @a pickless.can_squish 0

scoreboard objectives add pickless.x dummy
scoreboard objectives add pickless.last_x dummy
execute as @a at @s store result score @s pickless.x run data get entity @s Pos[0] 1
execute as @a run scoreboard players operation @s pickless.last_x = @s pickless.x

scoreboard objectives add pickless.y dummy
scoreboard objectives add pickless.last_y dummy
execute as @a at @s store result score @s pickless.y run data get entity @s Pos[1] 1
execute as @a run scoreboard players operation @s pickless.last_y = @s pickless.y

scoreboard objectives add pickless.z dummy
scoreboard objectives add pickless.last_z dummy
execute as @a at @s store result score @s pickless.z run data get entity @s Pos[2] 1
execute as @a run scoreboard players operation @s pickless.last_z = @s pickless.z