# Summon and configure new manniclone
summon minecraft:mannequin ~ ~ ~ {Invulnerable:1,PortalCooldown:0,Tags:["mannidemo"]}
ride @n[type=minecraft:mannequin,tag=mannidemo] mount @s
effect give @n[type=minecraft:mannequin,tag=mannidemo] minecraft:invisibility infinite 1 true
data modify entity @n[type=minecraft:mannequin,tag=mannidemo] profile.id set from entity @s Owner

# Edit the pearl
data modify entity @s Owner set from entity @n[type=minecraft:mannequin,tag=mannidemo] UUID

# Marking down the connection
tag @s add used