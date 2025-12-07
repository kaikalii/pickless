execute store result score #random num run random value 0..49
execute if score #random num > #0 num run return run function pickless:util/do_nothing
execute if block ~ ~ ~ coal_ore run function pickless:coal/ore {broken:cobblestone}
execute if block ~ ~ ~ deepslate_coal_ore run function pickless:coal/ore {broken:cobbled_deepslate}