# This function will be removed in the next full release

# Setting manniclone up
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=mannidemo] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=mannidemo] equipment set from entity @s equipment
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=mannidemo] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=mannidemo] equipment.mainhand set from entity @s SelectedItem
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=mannidemo] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=mannidemo] Health set from entity @s Health
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=mannidemo] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=mannidemo] active_effects set from entity @s active_effects

# Showing the manniclone
effect clear @s

# Tag changes
tag @s remove mannidemo
tag @s remove connected
tag @s add manniclone