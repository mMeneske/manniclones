# Setting up scoreboard and tags
execute store result score @s manniclonesId run data get entity @s data.user
tag @s remove unowned
tag @s add manniclone

# Changing skin from Notch
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data remove entity @n[type=minecraft:mannequin,tag=manniclone] profile.name
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] profile.id set from entity @s UUID

# Merging Inventory, Health and Effects
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] equipment set from entity @s equipment
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] equipment.mainhand set from entity @s SelectedItem
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] Health set from entity @s Health
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] active_effects set from entity @s active_effects