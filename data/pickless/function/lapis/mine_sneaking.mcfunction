say sneaking

execute as @s[y_rotation=-180..-135] run return run function pickless:lapis/mine_sneaking_north
execute as @s[y_rotation=135..180] run return run function pickless:lapis/mine_sneaking_north
execute as @s[y_rotation=-135..-45] run return run function pickless:lapis/mine_sneaking_east
execute as @s[y_rotation=-45..45] run return run function pickless:lapis/mine_sneaking_south
execute as @s[y_rotation=45..135] run return run function pickless:lapis/mine_sneaking_west