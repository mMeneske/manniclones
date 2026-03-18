scoreboard objectives add cloneId dummy
scoreboard objectives add manniclonesId dummy
execute as @a if score #currentId cloneId matches 0 run scoreboard players add #currentId cloneId 1