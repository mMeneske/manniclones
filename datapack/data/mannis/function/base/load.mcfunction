scoreboard objectives add current_mannibias dummy
scoreboard objectives add cloneId dummy
scoreboard objectives add manniclonesId dummy
scoreboard objectives add originHealth dummy
scoreboard objectives add originHealthLate dummy
scoreboard objectives add entityHealth dummy
scoreboard objectives add entityHealthLate dummy
scoreboard objectives add crafted_manniclones minecraft.crafted:minecraft.allay_spawn_egg
scoreboard objectives add created_owner dummy
execute as @a if score #currentId cloneId matches 0 run scoreboard players add #currentId cloneId 1