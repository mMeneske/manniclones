# Copys data from the player
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data merge entity @n[type=minecraft:mannequin,tag=manniclone] {equipment:"0"}
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] equipment set from entity @s equipment
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] equipment.mainhand set from entity @s SelectedItem
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] Health set from entity @s Health

execute as @e[type=minecraft:mannequin,tag=manniclone,y=-100050,dy=100000] run kill @s
forceload remove ~-1 ~-1 ~1 ~1
forceload add ~ ~