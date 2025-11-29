execute as @a run scoreboard players set @s pickless.scan 0
execute as @a run function pickless:scan_containers

schedule function pickless:remove_from_containers 1s