# Setup
scoreboard players add @a originHealth 0
scoreboard players add @a originHealthLate 0

# Mannicloner modifier code
execute as @e[nbt={Item:{id:"minecraft:ender_pearl",components:{"minecraft:custom_data":{mannicloner:1b}}}, HasBeenShot:1b}] at @s unless entity @s[tag=used] run function mannis:summonclone

# Manniclone apperance code
execute as @e[type=minecraft:mannequin,tag=mannidemo] if entity @s[nbt={OnGround:1b}] run function mannis:collision

# Copying live playerdata to manniclones
execute as @e[type=minecraft:mannequin,tag=manniclone] at @s run function mannis:copystuff
execute as @a run scoreboard players operation @s originHealthLate = @s originHealth

# Gives all players a cloneId
scoreboard players add @s cloneId 0
execute as @a if score @s cloneId matches 0 run function mannis:give_player_cloneid