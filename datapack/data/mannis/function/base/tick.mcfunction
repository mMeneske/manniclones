# Setup
scoreboard players add @a originHealth 0
scoreboard players add @a originHealthLate 0

# Regisering clone id and setting it up
execute as @a at @s unless score @s crafted_manniclones matches 0 run function mannis:manniclone/add_owner
execute as @e[type=mannequin,tag=unowned] at @s run function mannis:manniclone/manniclone_setup

# Copying live playerdata to manniclones
execute as @e[type=minecraft:mannequin,tag=manniclone] at @s run function mannis:manniclone/copystuff

# Gives all players a cloneId
scoreboard players add @a cloneId 0
execute as @a if score @s cloneId matches 0 run function mannis:manniclone/give_player_cloneid
