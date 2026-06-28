# Setting up scoreboard and tags
execute store result score @s manniclonesId run data get entity @s data.user
tag @s remove unowned
tag @s add manniclone

# Changing skin from Notch
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data remove entity @n[type=minecraft:mannequin,tag=manniclone] profile.name
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] profile.id set from entity @s UUID