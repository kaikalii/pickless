execute store result score #random num run random value 0..15
execute if score #random num = #0 num run particle bubble ~ ~0.7 ~ 0.2 0.2 0.2 0 1
execute if score #random num = #1 num run particle splash ~ ~0.7 ~ 0.2 0.2 0.2 0 1
execute if score #random num = #2 num run particle falling_water ~ ~0.7 ~ 0.2 0.2 0.2 0 1
execute if score #random num = #3 num run particle falling_dust{block_state:"gravel"} ~ ~0.7 ~ 0.2 0.2 0.2 0 1
execute if score #random num = #4 num run particle block_crumble{block_state:"stone"} ~ ~0.7 ~ 0.2 0.2 0.2 0 1
execute if score #random num = #5 num run playsound block.gravel.hit block @s ~ ~ ~ 1 2
execute if score #random num = #6 num run playsound block.sand.hit block @s ~ ~ ~ 0.5 2
execute if score #random num = #7 num run playsound entity.axolotl.splash block @s ~ ~ ~ 0.1 1
execute if score #random num = #8 num run playsound block.water.ambient block @s ~ ~ ~ 1 2

execute store result score #random num run random value 0..49
execute if score #random num = #0 num run function pickless:gold/pan_success