# Setup
scoreboard players add @a originHealth 0
scoreboard players add @a originHealthLate 0

# Mannicloner modifier code
# Removed in full release
execute as @e[nbt={Item:{id:"minecraft:ender_pearl",components:{"minecraft:custom_data":{mannicloner:1b}}}, HasBeenShot:1b}] at @s unless entity @s[tag=used] run function mannis:summonclone

# Manniclone apperance code
# Removed in full release
execute as @e[type=minecraft:mannequin,tag=mannidemo] at @s if entity @s[nbt={OnGround:1b}] run function mannis:collision

# Regisering clone id and setting it up
execute as @a at @s unless score @s crafted_manniclones matches 0 run function mannis:add_owner
execute as @e[type=mannequin,tag=unowned] at @s run function mannis:manniclone_setup

# Copying live playerdata to manniclones
execute as @e[type=minecraft:mannequin,tag=manniclone] at @s run function mannis:copystuff

# Gives all players a cloneId
scoreboard players add @a cloneId 0
execute as @a if score @s cloneId matches 0 run function mannis:give_player_cloneid
