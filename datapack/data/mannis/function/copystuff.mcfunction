# Copys data from the player
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data merge entity @n[type=minecraft:mannequin,tag=manniclone] {equipment:""} 
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] equipment set from entity @s equipment
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] equipment.mainhand set from entity @s SelectedItem

# Health chosing code
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId if score @s originHealth = @s originHealthLate run data modify entity @s Health set from entity @n[type=minecraft:mannequin,tag=manniclone,sort=nearest] Health
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId unless score @s originHealth = @s originHealthLate run data modify entity @n[type=minecraft:mannequin,tag=manniclone] Health set from entity @s Health