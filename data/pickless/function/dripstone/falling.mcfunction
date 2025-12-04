execute if block ~ ~ ~ lava run scoreboard players add @s pickless.dripstone_charge 1

execute if score @s pickless.dripstone_charge > #0 num positioned ~ ~-0.5 ~ if block ~ ~ ~ #pickless:dripstone_mine run function pickless:dripstone/break
execute if score @s pickless.dripstone_charge > #0 num positioned ~ ~-1 ~ if block ~ ~ ~ #pickless:dripstone_mine run function pickless:dripstone/break
execute if score @s pickless.dripstone_charge > #0 num positioned ~ ~-1.5 ~ if block ~ ~ ~ #pickless:dripstone_mine run function pickless:dripstone/break
execute if score @s pickless.dripstone_charge > #0 num positioned ~ ~-2 ~ if block ~ ~ ~ #pickless:dripstone_mine run function pickless:dripstone/break
execute if score @s pickless.dripstone_charge > #0 num positioned ~ ~-2.5 ~ if block ~ ~ ~ #pickless:dripstone_mine run function pickless:dripstone/break
execute if score @s pickless.dripstone_charge > #0 num positioned ~ ~-3 ~ if block ~ ~ ~ #pickless:dripstone_mine run function pickless:dripstone/break
execute if score @s pickless.dripstone_charge > #0 num positioned ~ ~-3.5 ~ if block ~ ~ ~ #pickless:dripstone_mine run function pickless:dripstone/break
execute if score @s pickless.dripstone_charge > #0 num positioned ~ ~-4 ~ if block ~ ~ ~ #pickless:dripstone_mine run function pickless:dripstone/break
execute if score @s pickless.dripstone_charge > #0 num positioned ~ ~-4.5 ~ if block ~ ~ ~ #pickless:dripstone_mine run function pickless:dripstone/break
execute if score @s pickless.dripstone_charge > #0 num positioned ~ ~-5 ~ if block ~ ~ ~ #pickless:dripstone_mine run function pickless:dripstone/break

execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #redstone_ores run setblock ~ ~ ~ air destroy