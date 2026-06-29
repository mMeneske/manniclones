# Gives needed lore
## Checks Inventory
execute if items entity @s container.0 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.0 mannis:set_lore
execute if items entity @s container.1 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.1 mannis:set_lore
execute if items entity @s container.2 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.2 mannis:set_lore
execute if items entity @s container.3 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.3 mannis:set_lore
execute if items entity @s container.4 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.4 mannis:set_lore
execute if items entity @s container.5 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.5 mannis:set_lore
execute if items entity @s container.6 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.6 mannis:set_lore
execute if items entity @s container.7 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.7 mannis:set_lore
execute if items entity @s container.8 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.8 mannis:set_lore
execute if items entity @s container.9 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.9 mannis:set_lore
execute if items entity @s container.10 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.10 mannis:set_lore
execute if items entity @s container.11 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.11 mannis:set_lore
execute if items entity @s container.12 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.12 mannis:set_lore
execute if items entity @s container.13 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.13 mannis:set_lore
execute if items entity @s container.14 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.14 mannis:set_lore
execute if items entity @s container.15 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.15 mannis:set_lore
execute if items entity @s container.16 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.16 mannis:set_lore
execute if items entity @s container.17 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.17 mannis:set_lore
execute if items entity @s container.18 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.18 mannis:set_lore
execute if items entity @s container.19 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.19 mannis:set_lore
execute if items entity @s container.20 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.20 mannis:set_lore
execute if items entity @s container.21 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.21 mannis:set_lore
execute if items entity @s container.22 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.22 mannis:set_lore
execute if items entity @s container.23 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.23 mannis:set_lore
execute if items entity @s container.24 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.24 mannis:set_lore
execute if items entity @s container.25 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.25 mannis:set_lore
execute if items entity @s container.26 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.26 mannis:set_lore
execute if items entity @s container.27 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.27 mannis:set_lore
execute if items entity @s container.28 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.28 mannis:set_lore
execute if items entity @s container.29 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.29 mannis:set_lore
execute if items entity @s container.30 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.30 mannis:set_lore
execute if items entity @s container.31 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.31 mannis:set_lore
execute if items entity @s container.32 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.32 mannis:set_lore
execute if items entity @s container.33 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.33 mannis:set_lore
execute if items entity @s container.34 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.34 mannis:set_lore
execute if items entity @s container.35 minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s container.35 mannis:set_lore
## Checks Offhand
execute if items entity @s weapon.offhand minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run item modify entity @s weapon.offhand mannis:set_lore
## Checks Items
execute at @n[type=minecraft:item,nbt={Item:{id:"minecraft:allay_spawn_egg",components:{"minecraft:custom_data":{user:-1b}}}}] run item modify entity @n[type=minecraft:item,nbt={Item:{id:"minecraft:allay_spawn_egg",components:{"minecraft:custom_data":{user:-1b}}}}] container.0 mannis:set_lore
## Bundles

# Fix user custom data
## Checks Inventory
execute store result score @s created_owner run data get entity @s Inventory.[{id:"minecraft:allay_spawn_egg",components:{"minecraft:custom_data":{user:-1b}}}].count
execute if items entity @s container.* minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run scoreboard players operation @s crafted_manniclones -= @s created_owner
execute if items entity @s container.* minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run execute store result entity @s Inventory.[{id:"minecraft:allay_spawn_egg",components:{"minecraft:custom_data":{user:-1b}}}].components.minecraft:custom_data.user int 1 run scoreboard players get @s cloneId

## Checks Offhand
execute store result score @s created_owner run data get entity @s equipment.offhand.count
execute if items entity @s weapon.offhand minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run scoreboard players operation @s crafted_manniclones -= @s created_owner
execute if items entity @s weapon.offhand minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run execute store result entity @s equipment.offhand.components.minecraft:custom_data.user int 1 run scoreboard players get @s cloneId


## Checks Items
execute store result score @s created_owner run data get entity @n[type=minecraft:item,nbt={Item:{id:"minecraft:allay_spawn_egg",components:{"minecraft:custom_data":{user:-1b}}}}] Item.count
execute if items entity @n[type=minecraft:item,nbt={Item:{id:"minecraft:allay_spawn_egg",components:{"minecraft:custom_data":{user:-1b}}}}] container.* minecraft:allay_spawn_egg[minecraft:custom_data={user:-1b}] run scoreboard players operation @s crafted_manniclones -= @s created_owner
execute as @n[type=minecraft:item,nbt={Item:{id:"minecraft:allay_spawn_egg",components:{"minecraft:custom_data":{user:-1b}}}}] run execute store result entity @s Item.components."minecraft:custom_data".user int 1 run scoreboard players get @p cloneId

