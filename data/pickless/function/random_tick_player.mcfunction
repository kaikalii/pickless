# tellraw @a {text:"i: ", extra:[{score:{name:"@s", objective:"pickless.tick_i"}}]}

execute store result storage pickless:tick x int 1 run random value -24..24
execute store result storage pickless:tick y int 1 run random value -24..24
execute store result storage pickless:tick z int 1 run random value -24..24

function pickless:random_tick_at with storage pickless:tick

# Next
scoreboard players add @s pickless.tick_i 1
execute if score @s pickless.tick_i < #200 pickless.num run function pickless:random_tick_player