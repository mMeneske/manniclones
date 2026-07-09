tag @s add temp

# Convertion from old system(only for pre-1)
execute store result entity @s data int 1 run scoreboard players get @s manniclonesId

# Copies playerdata
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone,tag=temp] manniclonesId run data merge entity @n[type=minecraft:mannequin,tag=manniclone,tag=temp] {equipment:"",active_effects:""}
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone,tag=temp] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone,tag=temp] equipment set from entity @s equipment
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone,tag=temp] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone,tag=temp] equipment.mainhand set from entity @s SelectedItem
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone,tag=temp] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone,tag=temp] active_effects set from entity @s active_effects

# Getting id updates from player
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone,tag=temp] manniclonesId run data remove entity @n[type=minecraft:mannequin,tag=manniclone,tag=temp] profile.name
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone,tag=temp] manniclonesId run data modify entity @n[type=minecraft:mannequin,tag=manniclone,tag=temp] profile.id set from entity @s UUID

# Health chosing code
## Copys old stuff
execute store result score @s entityHealthLate run scoreboard players get @s entityHealth
execute store result score @s originHealthLate run scoreboard players get @s originHealth
execute as @a run execute store result score @s entityHealthLate run scoreboard players get @s entityHealth
execute as @a run execute store result score @s originHealthLate run scoreboard players get @s originHealth

## Transfers health into scores
execute store result score @s originHealth run data get entity @s Health
execute store result score @s entityHealth run data get entity @s Health
scoreboard players operation @s originHealth -= @s current_mannibias
execute as @a run execute store result score @s entityHealth run data get entity @s Health
execute as @a run execute store result score @s originHealth run data get entity @s Health

## Decide what to keep
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone,tag=temp] manniclonesId unless score @s originHealth = @s originHealthLate unless score #temp originHealth matches 0 run scoreboard players operation #temp originHealth = @s originHealth
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone,tag=temp] manniclonesId as @n[type=minecraft:mannequin,tag=manniclone,tag=temp] unless score @s originHealth = @s originHealthLate unless score #temp originHealth matches 0 run scoreboard players operation #temp originHealth = @s originHealth

## Applies result to scores
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone,tag=temp] manniclonesId run scoreboard players operation @s originHealth = #temp originHealth
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone,tag=temp] manniclonesId run scoreboard players operation @s entityHealth = #temp originHealth
scoreboard players operation @s originHealth = #temp originHealth
scoreboard players operation @s entityHealth = #temp originHealth
scoreboard players operation @s entityHealth += @s current_mannibias

## Applies scores to Health
execute as @a if score @s cloneId = @n[type=minecraft:mannequin,tag=manniclone,tag=temp] manniclonesId store result entity @s Health int 1 run scoreboard players get @s entityHealth
execute store result entity @s Health int 1 run scoreboard players get @s entityHealth

tag @s remove temp