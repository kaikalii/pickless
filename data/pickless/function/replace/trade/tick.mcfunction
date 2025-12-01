# Replace pickaxes in villager trade offers with random tools

function pickless:for_each_material {function:"replace/trade/material"}

schedule function pickless:replace/trade/tick 1s
