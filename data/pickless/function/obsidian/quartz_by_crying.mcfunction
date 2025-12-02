setblock ~ ~ ~ obsidian
execute positioned ~ ~-1 ~ if block ~ ~ ~ quartz_block run return run function pickless:obsidian/quartz_absorb
execute positioned ~1 ~ ~ if block ~ ~ ~ quartz_block run return run function pickless:obsidian/quartz_absorb
execute positioned ~-1 ~ ~ if block ~ ~ ~ quartz_block run return run function pickless:obsidian/quartz_absorb
execute positioned ~ ~ ~1 if block ~ ~ ~ quartz_block run return run function pickless:obsidian/quartz_absorb
execute positioned ~ ~ ~-1 if block ~ ~ ~ quartz_block run return run function pickless:obsidian/quartz_absorb
