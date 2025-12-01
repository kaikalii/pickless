# Ray steps 1..6 forward from player's eyes
$execute as @s at @s positioned ^ ^ ^1 if block ~ ~ ~ minecraft:$(nylium)_nylium run execute positioned ~ ~ ~ run function pickless:bonemeal_expand_nylium {nylium:"$(nylium)"}
$execute as @s at @s positioned ^ ^ ^2 if block ~ ~ ~ minecraft:$(nylium)_nylium run execute positioned ^ ^ ^2 run function pickless:bonemeal_expand_nylium {nylium:"$(nylium)"}
$execute as @s at @s positioned ^ ^ ^3 if block ~ ~ ~ minecraft:$(nylium)_nylium run execute positioned ^ ^ ^3 run function pickless:bonemeal_expand_nylium {nylium:"$(nylium)"}
$execute as @s at @s positioned ^ ^ ^4 if block ~ ~ ~ minecraft:$(nylium)_nylium run execute positioned ^ ^ ^4 run function pickless:bonemeal_expand_nylium {nylium:"$(nylium)"}
$execute as @s at @s positioned ^ ^ ^5 if block ~ ~ ~ minecraft:$(nylium)_nylium run execute positioned ^ ^ ^5 run function pickless:bonemeal_expand_nylium {nylium:"$(nylium)"}
$execute as @s at @s positioned ^ ^ ^6 if block ~ ~ ~ minecraft:$(nylium)_nylium run execute positioned ^ ^ ^6 run function pickless:bonemeal_expand_nylium {nylium:"$(nylium)"}

# If the clicked block was netherrack, use neighbor nylium to decide which type to spread
$execute as @s at @s positioned ^ ^ ^1 if block ~ ~ ~ minecraft:netherrack if block ~1 ~ ~ minecraft:$(nylium)_nylium run execute positioned ~ ~ ~ run function pickless:bonemeal_expand_nylium {nylium:"$(nylium)"}
$execute as @s at @s positioned ^ ^ ^1 if block ~ ~ ~ minecraft:netherrack if block ~-1 ~ ~ minecraft:$(nylium)_nylium run execute positioned ~ ~ ~ run function pickless:bonemeal_expand_nylium {nylium:"$(nylium)"}
$execute as @s at @s positioned ^ ^ ^1 if block ~ ~ ~ minecraft:netherrack if block ~ ~1 ~ minecraft:$(nylium)_nylium run execute positioned ~ ~ ~ run function pickless:bonemeal_expand_nylium {nylium:"$(nylium)"}
$execute as @s at @s positioned ^ ^ ^1 if block ~ ~ ~ minecraft:netherrack if block ~ ~-1 ~ minecraft:$(nylium)_nylium run execute positioned ~ ~ ~ run function pickless:bonemeal_expand_nylium {nylium:"$(nylium)"}
$execute as @s at @s positioned ^ ^ ^1 if block ~ ~ ~ minecraft:netherrack if block ~ ~ ~1 minecraft:$(nylium)_nylium run execute positioned ~ ~ ~ run function pickless:bonemeal_expand_nylium {nylium:"$(nylium)"}
$execute as @s at @s positioned ^ ^ ^1 if block ~ ~ ~ minecraft:netherrack if block ~ ~ ~-1 minecraft:$(nylium)_nylium run execute positioned ~ ~ ~ run function pickless:bonemeal_expand_nylium {nylium:"$(nylium)"}