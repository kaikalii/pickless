# Clear light
execute if score @s pickless.debris_timer > #0 pickless.num run function pickless:diamond/clear_light
# Init debris present flag
scoreboard players set @s pickless.debris_present 0

# East
execute positioned ~1 ~ ~ if block ~ ~ ~ ancient_debris run function pickless:diamond/near_debris
# West
execute positioned ~-1 ~ ~ if block ~ ~ ~ ancient_debris run function pickless:diamond/near_debris
# Up
execute positioned ~ ~1 ~ if block ~ ~ ~ ancient_debris run function pickless:diamond/near_debris
# Down
execute positioned ~ ~-1 ~ if block ~ ~ ~ ancient_debris run function pickless:diamond/near_debris
# South
execute positioned ~ ~ ~1 if block ~ ~ ~ ancient_debris run function pickless:diamond/near_debris
# North
execute positioned ~ ~ ~-1 if block ~ ~ ~ ancient_debris run function pickless:diamond/near_debris

# Handle not near debris
execute if score @s pickless.debris_present matches 0 run function pickless:diamond/not_near_debris