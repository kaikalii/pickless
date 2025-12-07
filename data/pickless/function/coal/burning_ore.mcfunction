setblock ~ ~ ~ air
$execute run summon item ~ ~ ~ {Item:{id:$(broken),count:1},Invulnerable:1b,Motion:[0,0.1,0]}
execute store result score #random num run random value 0..4
execute if score #random num = #0 num run summon item ~ ~ ~ {Item:{id:"coal",count:1},Invulnerable:1b,Motion:[0,0.1,0]}
playsound block.fire.extinguish block @s ~ ~ ~
playsound block.stone.break block @s ~ ~ ~
