execute as @a run scoreboard players set @s pickless.scan 0
execute as @a run function pickless:replace_in_offset

schedule function pickless:tick_replace_in_containers 1s