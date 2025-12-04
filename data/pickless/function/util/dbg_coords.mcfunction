# Store the position components in scoreboard objectives
execute store result score @s posX run data get entity @s Pos[0] 1
execute store result score @s posY run data get entity @s Pos[1] 1
execute store result score @s posZ run data get entity @s Pos[2] 1

# Display the coordinates to the executor using tellraw (more flexible than say)
tellraw @s {"text":"X=","color":"gold","extra":[{"score":{"name":"@s","objective":"posX"}},{"text":", Y="},{"score":{"name":"@s","objective":"posY"}},{"text":", Z="},{"score":{"name":"@s","objective":"posZ"}}]}
