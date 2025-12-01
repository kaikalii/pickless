# Sound
$execute at @s run playsound block.note_block.flute block @a ~ ~ ~ 1 $(pitch)
$execute at @s run playsound block.note_block.didgeridoo block @a ~ ~ ~ 1 $(pitch)

# Particles
$execute at @s run particle glow ~ ~ ~ 0.2 0.2 0.2 1 $(count)

# Light
$execute at @s run setblock ~ ~ ~ light[level=$(light)]
