# Updates Health
execute store result score @n[type=mannequin,tag=manniclone,tag=tempmortal] entityHealth run data get entity @n[type=mannequin,tag=manniclone,tag=tempmortal] Health

# Detects change in health
scoreboard players operation #temp current_mannibias = @n[type=mannequin,tag=manniclone,tag=tempmortal] entityHealth
scoreboard players operation #temp current_mannibias -= @n[type=mannequin,tag=manniclone,tag=tempmortal] entityHealthLate

# Settings for removal of bias
scoreboard players set #level0 current_mannibias 0
scoreboard players set #level1 current_mannibias 3
scoreboard players set #level2 current_mannibias 2

# Removes part of bias
execute unless items entity @s weapon *[minecraft:enchantments~[{enchantments:"mannis:clone_mortality"}]] run scoreboard players operation #temp current_mannibias *= #level0 current_mannibias
execute if items entity @s weapon *[minecraft:enchantments~[{enchantments:"mannis:clone_mortality",levels:1}]] run scoreboard players operation #temp current_mannibias /= #level1 current_mannibias
execute if items entity @s weapon *[minecraft:enchantments~[{enchantments:"mannis:clone_mortality",levels:2}]] run scoreboard players operation #temp current_mannibias *= #level2 current_mannibias
execute if items entity @s weapon *[minecraft:enchantments~[{enchantments:"mannis:clone_mortality",levels:2}]] run scoreboard players operation #temp current_mannibias /= #level1 current_mannibias

# Readd it to bias
scoreboard players operation @n[type=mannequin,tag=manniclone,tag=tempmortal] current_mannibias += #temp current_mannibias

tag @n[tag=tempmortal] remove tempmortal