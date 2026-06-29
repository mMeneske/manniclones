# Copys data from the player
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data merge entity @n[type=minecraft:mannequin,tag=manniclone] {equipment:"",active_effects:""}
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] equipment set from entity @s equipment
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] equipment.mainhand set from entity @s SelectedItem
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] active_effects set from entity @s active_effects

# Health chosing code
execute store result score @s entityHealth run data get entity @s Health

execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run execute if score @s originHealth matches 0 run kill @n[type=minecraft:mannequin,tag=manniclone]
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run execute if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId unless score @n[type=minecraft:mannequin,tag=manniclone] entityHealth > @n[type=minecraft:mannequin,tag=manniclone] originHealthLate unless score @n[type=minecraft:mannequin,tag=manniclone] entityHealth < @n[type=minecraft:mannequin,tag=manniclone] originHealthLate run data modify entity @n[type=minecraft:mannequin,tag=manniclone,sort=nearest] Health set from entity @s Health
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run execute if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId if score @n[type=minecraft:mannequin,tag=manniclone] entityHealth > @n[type=minecraft:mannequin,tag=manniclone] originHealthLate run data modify entity @s Health set from entity @n[type=minecraft:mannequin,tag=manniclone,sort=nearest] Health
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run execute if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId if score @n[type=minecraft:mannequin,tag=manniclone] entityHealth < @n[type=minecraft:mannequin,tag=manniclone] originHealthLate run data modify entity @s Health set from entity @n[type=minecraft:mannequin,tag=manniclone,sort=nearest] Health

execute as @a run scoreboard players operation @s originHealthLate = @s originHealth
scoreboard players operation @s originHealthLate = @s entityHealth

# Getting id updates from player
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data remove entity @n[type=minecraft:mannequin,tag=manniclone] profile.name
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone] profile.id set from entity @s UUID