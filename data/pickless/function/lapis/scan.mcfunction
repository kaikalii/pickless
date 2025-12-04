scoreboard players set @s pickless.neary_lapis 0

execute positioned ~ ~-1 ~ if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~ ~2 ~ if block ~ ~ ~ #lapis_ores run function pickless:lapis/found

execute positioned ~1 ~ ~ if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~-1 ~ ~ if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~ ~ ~1 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~ ~ ~-1 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~1 ~ ~1 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found

execute positioned ~1 ~1 ~ if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~ ~1 ~1 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found

execute if block ~1 ~ ~ #pickless:transparent positioned ~2 ~ ~ if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute if block ~-1 ~ ~ #pickless:transparent positioned ~-2 ~ ~ if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute if block ~ ~ ~1 #pickless:transparent positioned ~ ~ ~2 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute if block ~ ~ ~-1 #pickless:transparent positioned ~ ~ ~-2 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found

execute if block ~1 ~1 ~ #pickless:transparent positioned ~2 ~1 ~ if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute if block ~-1 ~1 ~ #pickless:transparent positioned ~-2 ~1 ~ if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute if block ~ ~1 ~1 #pickless:transparent positioned ~ ~1 ~2 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found
execute if block ~ ~1 ~-1 #pickless:transparent positioned ~ ~1 ~-2 if block ~ ~ ~ #lapis_ores run function pickless:lapis/found

execute if score @s pickless.neary_lapis = #0 num run scoreboard players remove @s pickless.lapis 1
execute if score @s pickless.lapis < #0 num run scoreboard players set @s pickless.lapis 0