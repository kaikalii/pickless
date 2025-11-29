# Replace pickaxe item entities on the ground with random tools

function pickless:for_each_material {function:"replace_pickaxe_drop"}

schedule function pickless:tick_replace_drops 1t
