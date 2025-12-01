# Clear center light
execute if score @s debris_timer > #0 pickless.num run execute if block ~ ~ ~ light run setblock ~ ~ ~ air
# East
execute positioned ~1 ~ ~ run function pickless:diamond/find_debris
# West
execute positioned ~-1 ~ ~ run function pickless:diamond/find_debris
# Up
execute positioned ~ ~1 ~ run function pickless:diamond/find_debris
# Down
execute positioned ~ ~-1 ~ run function pickless:diamond/find_debris
# South
execute positioned ~ ~ ~1 run function pickless:diamond/find_debris
# North
execute positioned ~ ~ ~-1 run function pickless:diamond/find_debris