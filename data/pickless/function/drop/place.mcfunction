$setblock ~ ~ ~ $(CustomName)
kill @s
function pickless:util/block_update
execute if block ~ ~ ~ #pickless:non_throwable run setblock ~ ~ ~ air destroy