setblock ~ ~ ~ redstone_lamp
function pickless:util/block_update
$execute if block ~ ~ ~ redstone_lamp[lit=true] run function pickless:copper/break {ore:$(ore)}
$execute if block ~ ~ ~ redstone_lamp[lit=false] run setblock ~ ~ ~ $(ore)
