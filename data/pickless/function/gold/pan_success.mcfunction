execute if block ~ ~ ~ gold_ore run setblock ~ ~ ~ stone
execute if block ~ ~ ~ deepslate_gold_ore run setblock ~ ~ ~ deepslate
summon item ~ ~0.7 ~ {Item:{id:"raw_gold",count:1}, Motion:[0,20,0]}

# Propogate gold up
execute if block ~ ~-1 ~ gold_ore run setblock ~ ~ ~ gold_ore
execute if block ~ ~-1 ~ gold_ore run setblock ~ ~-1 ~ stone
execute if block ~ ~-1 ~ deepslate_gold_ore run setblock ~ ~ ~ deepslate_gold_ore
execute if block ~ ~-1 ~ deepslate_gold_ore run setblock ~ ~-1 ~ deepslate
