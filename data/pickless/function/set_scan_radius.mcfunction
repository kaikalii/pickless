# Scan radius
$scoreboard players set #scan_radius pickless.scan $(radius)

# Calculate scan_total = (2 * scan_radius + 1)^3
scoreboard players operation #scan_diam pickless.scan = #scan_radius pickless.scan
scoreboard players operation #scan_diam pickless.scan *= #2 num
scoreboard players add #scan_diam pickless.scan 1
scoreboard players operation #scan_total pickless.scan = #scan_diam pickless.scan
scoreboard players operation #scan_total pickless.scan *= #scan_diam pickless.scan
scoreboard players operation #scan_total pickless.scan *= #scan_diam pickless.scan

execute if score #scan_radius pickless.scan > #4 num run tellraw @s {text: "Warning: On servers with more than a few players, a high scan radius can negatively affect performance", color:yellow}
tellraw @s {text:"diameter: ", extra:[{score:{name:"#scan_diam",objective:"pickless.scan"}}, {text:", volume: "}, {score:{name:"#scan_total",objective:"pickless.scan"}}]}