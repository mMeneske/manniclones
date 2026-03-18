# Setting manniclone up
data modify entity @s equipment set from entity @p equipment
data modify entity @s equipment.mainhand set from entity @p SelectedItem
effect give @s minecraft:regeneration infinite 255 true

# Showing the manniclone
effect clear @s

# Tag changes
tag @s remove mannidemo
tag @s remove connected
tag @s add manniclone