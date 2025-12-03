# Clear light
execute if score @s pickless.debris_timer > #0 num run function pickless:debris/clear_light
# Init debris present flag
scoreboard players set @s pickless.debris_present 0

# East
execute positioned ~1 ~ ~ if block ~ ~ ~ ancient_debris run function pickless:debris/near_debris
# West
execute positioned ~-1 ~ ~ if block ~ ~ ~ ancient_debris run function pickless:debris/near_debris
# Up
execute positioned ~ ~1 ~ if block ~ ~ ~ ancient_debris run function pickless:debris/near_debris
# Down
execute positioned ~ ~-1 ~ if block ~ ~ ~ ancient_debris run function pickless:debris/near_debris
# South
execute positioned ~ ~ ~1 if block ~ ~ ~ ancient_debris run function pickless:debris/near_debris
# North
execute positioned ~ ~ ~-1 if block ~ ~ ~ ancient_debris run function pickless:debris/near_debris

# Handle not near debris
execute if score @s pickless.debris_present matches 0 run function pickless:debris/not_near_debris