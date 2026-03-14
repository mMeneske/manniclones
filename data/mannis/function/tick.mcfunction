# Mannipearl modifier code
execute as @e[nbt={Item:{id:"minecraft:ender_pearl",components:{"minecraft:item_model":"minecraft:placeholderModel.json"}}}] run data merge entity @s {NoGravity:1}
execute as @e[nbt={Item:{id:"minecraft:ender_pearl",components:{"minecraft:item_model":"minecraft:placeholderModel.json"}}}] at @s unless entity @s[tag=used] run function mannis:summonclone

# Manniclone apperance code
execute as @e[type=minecraft:mannequin,tag=mannidemo] if entity @s[nbt={OnGround:1b}] run function mannis:collision

# Copying live playerdata to manniclones
execute as @e[type=minecraft:mannequin,tag=manniclone] run data modify entity @s equipment set from entity @p equipment
execute as @e[type=minecraft:mannequin,tag=manniclone] run data modify entity @s equipment.mainhand set from entity @p SelectedItem