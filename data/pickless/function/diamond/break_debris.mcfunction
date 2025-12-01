kill @s

execute at @s run summon tnt ~ ~ ~ {fuse:0, explosion_power:3}

# Break debris
setblock ~ ~ ~ air
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:ancient_debris",count:1b},Invulnerable:1b}

tag @s add broke_debris

# Clean up light
execute at @s run setblock ~ ~ ~ air