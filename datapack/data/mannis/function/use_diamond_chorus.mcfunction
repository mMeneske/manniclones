# Revokes advancment to be able to use it again
advancement revoke @s only mannis:use_diamond_chorus

# Summons new manniclone at player position
execute if entity @e[type=minecraft:mannequin,tag=manniclone] run execute at @s as @n[type=minecraft:mannequin,tag=manniclone] if score @s manniclonesId = @p cloneId run summon minecraft:mannequin ~ ~ ~ {Invulnerable:1,PortalCooldown:0,Tags:["manniclone","none"]}
data modify entity @n[type=minecraft:mannequin,tag=manniclone,tag=none] Rotation set from entity @s Rotation
data modify entity @n[type=minecraft:mannequin,tag=manniclone,tag=none] profile.id set from entity @s UUID
scoreboard players operation @n[type=minecraft:mannequin,tag=manniclone,tag=none] manniclonesId = @s cloneId
forceload add ~ ~

# Teleports player to random manniclone
execute as @e[sort=random,type=minecraft:mannequin,tag=manniclone,tag=!none] if score @s manniclonesId = @p cloneId run tag @s add te
execute as @e[tag=te,sort=random,limit=1] run tag @s add temp
execute as @e[tag=te] run tag @s remove te
tag @n[type=minecraft:mannequin,tag=manniclone,tag=none] remove none
tp @n[type=minecraft:mannequin,tag=manniclone,tag=temp]
data modify entity @s Rotation set from entity @n[type=minecraft:mannequin,tag=manniclone,tag=temp] Rotation
tp @n[type=minecraft:mannequin,tag=manniclone,tag=temp] ~ -100 ~
kill @n[type=minecraft:mannequin,tag=manniclone,tag=temp]
