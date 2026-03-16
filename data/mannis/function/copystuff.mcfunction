# Copys data from the player
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] equipment set from entity @s equipment
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] equipment.mainhand set from entity @s SelectedItem
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] Health set from entity @s Health

# Changes the manniclone a bit
effect give @n[type=minecraft:mannequin,tag=manniclone] minecraft:resistance infinite 255 true
execute as @e[type=minecraft:mannequin,tag=manniclone,y=-150,dy=100] run kill @s