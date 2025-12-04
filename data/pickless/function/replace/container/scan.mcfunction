# Replaces all pickaxe types within a container at offset
# Expects macro vars: $(x), $(y), $(z)

function pickless:util/for_each_material {f:"replace/container/material"}