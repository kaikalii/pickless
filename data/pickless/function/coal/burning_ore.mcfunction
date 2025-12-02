setblock ~ ~ ~ air
execute run summon item ~ ~ ~ {Item:{id:"coal",count:1},Invulnerable:1b}
playsound block.fire.extinguish block @s ~ ~ ~
playsound block.stone.break block @s ~ ~ ~
