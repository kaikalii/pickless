# Update y
execute store result score @s pickless.x run data get entity @s Pos[0] 1
execute store result score @s pickless.y run data get entity @s Pos[1] 1
execute store result score @s pickless.z run data get entity @s Pos[2] 1

execute if score @s pickless.y < @s pickless.last_y run scoreboard players set @s pickless.can_squish 1
execute if score @s pickless.y > @s pickless.last_y run scoreboard players set @s pickless.can_squish 0
execute unless score @s pickless.x = @s pickless.last_x run scoreboard players set @s pickless.can_squish 0
execute unless score @s pickless.z = @s pickless.last_z run scoreboard players set @s pickless.can_squish 0
execute if score @s pickless.can_squish = #1 num if entity @s[nbt={OnGround:1b}] if block ~ ~-1 ~ amethyst_block run function pickless:obsidian/try_squish_amethyst
# Update last y
scoreboard players operation @s pickless.last_x = @s pickless.x
scoreboard players operation @s pickless.last_y = @s pickless.y
scoreboard players operation @s pickless.last_z = @s pickless.z
