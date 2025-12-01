execute as @a run scoreboard players set @s pickless.scan 0
execute as @a run function pickless:replace/container/offset_iter

schedule function pickless:replace/container/tick 1s