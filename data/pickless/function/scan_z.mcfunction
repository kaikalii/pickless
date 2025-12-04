execute store result storage pickless:vars x int 1 run scoreboard players get #x pickless.scan
execute store result storage pickless:vars y int 1 run scoreboard players get #y pickless.scan
execute store result storage pickless:vars z int 1 run scoreboard players get #z pickless.scan
execute as @a at @s positioned ~ ~1 ~ positioned ^ ^ ^1 run function pickless:scan with storage pickless:vars

scoreboard players add #z pickless.scan 1
execute if score #z pickless.scan <= #scan_radius pickless.scan run function pickless:scan_z
