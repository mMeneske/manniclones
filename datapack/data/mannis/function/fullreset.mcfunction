tellraw @s "§cWarning! §9This is very dangerous, for this reason you have to go into the files, and manually uncomment all the following lines. §6This is for your own safety."
#scoreboard objectives remove cloneId 
#scoreboard objectives remove manniclonesId
#scoreboard objectives add cloneId dummy
#scoreboard objectives add manniclonesId dummy
#execute as @a if score #currentId cloneId matches 0 run scoreboard players add #currentId cloneId 1
#reload