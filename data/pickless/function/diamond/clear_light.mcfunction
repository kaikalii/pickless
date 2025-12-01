function pickless:dbg_coords
# Center
execute positioned ~ ~ ~ if block ~ ~ ~ light run setblock ~ ~ ~ air
# East
execute positioned ~1 ~ ~ if block ~ ~ ~ light run setblock ~ ~ ~ air
# West
execute positioned ~-1 ~ ~ if block ~ ~ ~ light run setblock ~ ~ ~ air
# Up
execute positioned ~ ~1 ~ if block ~ ~ ~ light run setblock ~ ~ ~ air
# Down
execute positioned ~ ~-1 ~ if block ~ ~ ~ light run setblock ~ ~ ~ air
# South
execute positioned ~ ~ ~1 if block ~ ~ ~ light run setblock ~ ~ ~ air
# North
execute positioned ~ ~ ~-1 if block ~ ~ ~ light run setblock ~ ~ ~ air