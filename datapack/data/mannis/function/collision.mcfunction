# Setting manniclone up
data modify entity @s equipment set from entity @p equipment
data modify entity @s equipment.mainhand set from entity @p SelectedItem
data modify entity @n[type=minecraft:mannequin,tag=manniclone,tag=none] Health set from entity @s Health

# Showing the manniclone
effect clear @s

# Tag changes
tag @s remove mannidemo
tag @s remove connected
tag @s add manniclone