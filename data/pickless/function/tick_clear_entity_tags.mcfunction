# Periodically clear pickless.processed tag so entities can be reprocessed

execute as @e[tag=pickless.processed] run tag @s remove pickless.processed

schedule function pickless:tick_clear_entity_tags 60s
