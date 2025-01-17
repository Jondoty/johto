#Dialogue 1 - Oak Welcome
scoreboard players set @a[x=-972,y=64,z=-410,dx=10,dy=7,dz=10,scores={TalkTime=0},tag=!Dialogue1] DialogueTrigger 1

#Dialogue 2 - New Bark Town Mom, Elm looking for player
scoreboard players set @a[x=-736,y=64,z=-491,dx=10,dy=3,dz=6,scores={TalkTime=0},tag=!Dialogue2] DialogueTrigger 2

#Dialogue3 - New Bark Town Elm intro
scoreboard players set @a[x=-693,y=63,z=-490,dx=20,dy=5,dz=20,scores={TalkTime=0},tag=!Dialogue3] DialogueTrigger 3

#---------------------

#Dialogue4 - Elm after picking starter
scoreboard players set @a[x=-693,y=63,z=-490,dx=20,dy=5,dz=20,scores={TalkTime=0,StarterPick=1..},tag=!Dialogue4] DialogueTrigger 4

#Sets starters to regular models if in town
execute as @a[x=-704,y=62,z=-508,dx=50,dy=3,dz=50,scores={StarterPick=1}] run setblock -687 65 -478 pixelmon:poke_display[facing=north]{PokeDisplayPokemon:{ndex:152,Growth:3b}} replace
execute as @a[x=-704,y=62,z=-508,dx=50,dy=3,dz=50,scores={StarterPick=2}] run setblock -689 65 -478 pixelmon:poke_display[facing=north]{PokeDisplayPokemon:{ndex:155,Growth:3b}} replace
execute as @a[x=-704,y=62,z=-508,dx=50,dy=3,dz=50,scores={StarterPick=3}] run setblock -685 65 -478 pixelmon:poke_display[facing=north]{PokeDisplayPokemon:{ndex:158,Growth:3b}} replace

#Sets first starters as invisible
execute as @a[x=-693,y=63,z=-490,dx=19,dy=5,dz=19,scores={StarterPick=1}] run setblock -687 65 -478 minecraft:air
execute as @a[x=-693,y=63,z=-490,dx=19,dy=5,dz=19,scores={StarterPick=2}] run setblock -689 65 -478 minecraft:air
execute as @a[x=-693,y=63,z=-490,dx=19,dy=5,dz=19,scores={StarterPick=3}] run setblock -685 65 -478 minecraft:air

#---------------------

#Dialogue5 - Route 30, Mr. Pokemon Intro w/ Mystery Egg
scoreboard players set @a[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,tag=!Dialogue5,scores={TalkTime=0}] DialogueTrigger 5

#Turns Oak invisible after Oak leaves in dialogue
execute at @p[x=-252,y=63,z=-196,distance=0..30,tag=Dialogue5] run effect give @e[x=-252,y=63,z=-196,dy=3,type=pixelmon:npc_chatting] minecraft:invisibility 10 10 true

#---------------------

#Dialogue6 - Cherrygrove Silver before battle
scoreboard players set @a[x=-300,y=64,z=-509,distance=0..20,tag=Dialogue5,tag=!Dialogue6,scores={TalkTime=0}] DialogueTrigger 6

#Dialogue7 - Cherrygrove Silver post-battle
scoreboard players set @a[x=-300,y=64,z=-509,distance=0..25,scores={TalkTime=0},nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 7
execute as @a[x=-300,y=64,z=-509,distance=0..10,tag=Dialogue6,tag=!Dialogue7,scores={StarterPick=1}] run tp @e[x=-760,y=84,z=-242,dy=10,type=pixelmon:npc_trainer,scores={StarterPick=1}] -300 64 -509
execute as @a[x=-300,y=64,z=-509,distance=0..10,tag=Dialogue6,tag=!Dialogue7,scores={StarterPick=2}] run tp @e[x=-760,y=84,z=-242,dy=10,type=pixelmon:npc_trainer,scores={StarterPick=2}] -300 64 -509
execute as @a[x=-300,y=64,z=-509,distance=0..10,tag=Dialogue6,tag=!Dialogue7,scores={StarterPick=3}] run tp @e[x=-760,y=84,z=-242,dy=10,type=pixelmon:npc_trainer,scores={StarterPick=3}] -300 64 -509

#---------------------

#Dialogue8 - New Bark Town Elm's Lab stolen Pokemon
scoreboard players set @a[x=-693,y=63,z=-490,dx=20,dy=5,dz=20,tag=!Dialogue8,tag=Dialogue5,scores={TalkTime=0}] DialogueTrigger 8

#Silver's Starters invisible
execute as @a[x=-693,y=63,z=-490,dx=19,dy=5,dz=19,tag=Dialogue5,scores={StarterPick=1}] run setblock -687 65 -478 minecraft:air
execute as @a[x=-693,y=63,z=-490,dx=19,dy=5,dz=19,tag=Dialogue5,scores={StarterPick=2}] run setblock -689 65 -478 minecraft:air
execute as @a[x=-693,y=63,z=-490,dx=19,dy=5,dz=19,tag=Dialogue5,scores={StarterPick=3}] run setblock -685 65 -478 minecraft:air

#Toggles Silver outside Elm's Lab
execute if entity @a[x=-665,y=64,z=-493,distance=..25,tag=!Dialogue6] unless entity @e[x=-665,y=63,z=-493,dy=2] run summon pixelmon:npc_chatting -665 64 -493 {Brain: {memories: {}}, HurtByTimestamp: 0, chatNum: 2, Attributes: [{Base: 0.0d, Name: "forge:step_height_addition"}, {Base: 0.699999988079071d, Modifiers: [{Amount: -15.150000602006912d, Operation: 2, UUID: [I; 1896341086, 2095595568, -1811001012, 521537680], Name: "effect.minecraft.slowness 100"}], Name: "minecraft:generic.movement_speed"}, {Base: 0.08d, Name: "forge:entity_gravity"}], Invulnerable: 0b, FallFlying: 0b, PortalCooldown: 0, AbsorptionAmount: 0.0f, Name: "...", FallDistance: 0.0f, active_effects: [{duration: 18911, show_icon: 0b, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1b}], amplifier: 100b, ambient: 0b, id: "minecraft:slowness", show_particles: 0b}], CanUpdate: 1b, DeathTime: 0s, DefaultName: 0b, Commands: {interactCommands: []}, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 1b, UUID: [I; -1117845132, -1192212168, -1892583014, 2097710046], trainerLocation: 2, DefaultGreet: 0b, Motion: [0.0d, -0.0784000015258789d, 0.0d], TextureIndex: 4, TrainerIndex: "skullgruntfemale", NameIndex: 0, Health: 20.0f, LeftHanded: 0b, Air: 300s, OnGround: 1b, Rotation: [3.4981956f, -19.930494f], HandItems: [{}, {}], ChatIndex: 1, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], Profession: -1s, Pos: [-757.5d, 93.0d, -241.5d], Fire: -1s, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 0b, CustomSteveTexture: "silver.png", chat1: "What are you staring at?", chat0: "So this is the famous Elm Pokémon Lab...", HurtTime: 0s, BaseTrainer: "Steve", Inventory: [], AIMode: 2s}

execute if entity @a[x=-665,y=64,z=-493,distance=..100,tag=Dialogue6] run tp @e[x=-665,y=63,z=-493,dy=2,type=pixelmon:npc_chatting] 10000000 -50000 -10000000

#---------------------

#Dialogue9 - Sprout Tower Silver and Elder
scoreboard players set @a[x=54,y=103,z=22,dx=12,dy=5,dz=10,tag=!Dialogue9,scores={TalkTime=0}] DialogueTrigger 9

#Dialogue10 - Sprout Tower Elder post-battle
scoreboard players set @a[x=56,y=103,z=33,distance=0..25,scores={TalkTime=0},tag=!Dialogue10,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 10

#Dialogue11 - Violet City Falkner pre-battle
scoreboard players set @a[x=-791,y=64,z=595,distance=0..13,scores={TalkTime=0},tag=!Dialogue11] DialogueTrigger 11

#Dialogue12 - Violet City Dalkner post-battle
scoreboard players set @a[x=-791,y=64,z=595,distance=0..20,scores={TalkTime=0},nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 12

#Dialogue13 - Violet City Elm's Aide giving Togepi Egg
scoreboard players set @a[x=11,y=64,z=-100,distance=0..7,scores={TalkTime=0},tag=!Dialogue13,tag=Falkner] DialogueTrigger 13

#---------------------

#Dialogue14 - Azalea Town Kurt starting Well quest
scoreboard players set @a[x=354,y=63,z=-704,dx=19,dy=5,dz=8,tag=!Dialogue14,scores={TalkTime=0}] DialogueTrigger 14

#tps out villagers
execute at @p[x=371,y=64,z=-698,distance=0..25,tag=!Dialogue16,scores={TalkTime=0}] run tp @e[x=371,y=63,z=-698,dy=3,type=pixelmon:npc_chatting] 371 64 -698
execute at @p[x=371,y=64,z=-698,distance=0..25,tag=!Dialogue16] run tp @e[x=370,y=64,z=-699,dx=1,dy=3,dz=1,type=villager,limit=1] -724 91 -242
execute at @p[x=371,y=64,z=-698,distance=0..25,tag=!Dialogue16] run tp @e[x=370,y=64,z=-699,dx=1,dy=3,dz=1,type=villager,limit=1] -722 91 -242

#---------------------

#Dialogue15 - Slowpoke Well Kurt spawning in Rockets
scoreboard players set @a[x=244,y=39,z=-708,distance=0..7,tag=Dialogue14,tag=!Dialogue15] DialogueTrigger 15

#tps Kurt in
execute at @a[x=244,y=56,z=-714,distance=0..20,tag=!Dialogue15] run tp @e[x=-728,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] 244 39 -708

#Exterior Guard in
execute at @p[x=244,y=56,z=-714,distance=0..25,tag=!Dialogue14] run tp @e[x=-750,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] 247 54 -714

#Exterior Guard out
execute at @p[x=244,y=56,z=-714,distance=0..25,tag=Dialogue14] run tp @e[x=247,y=53,z=-714,dy=3,type=pixelmon:npc_chatting] -750 91 -242

#---------------------

#Dialogue16 - Slowpoke Well post-battle with Proton
scoreboard players set @a[x=289,y=38,z=-665,distance=0..20,scores={TalkTime=0},tag=!Dialogue16,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 16

#Respawn Proton
execute at @a[x=289,y=38,z=-665,distance=0..10,tag=Dialogue15,tag=!Dialogue16,scores={TalkTime=0}] run tp @e[x=-742,y=90,z=-242,dy=3,type=pixelmon:npc_trainer] 289 39 -661

#Kurt NPC
execute at @p[x=371,y=64,z=-698,distance=0..25,tag=Dialogue16,scores={TalkTime=0}] run tp @e[x=-726,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] 371 64 -698

#tp in villager
execute at @p[x=371,y=64,z=-698,distance=0..25,tag=Dialogue16,scores={TalkTime=0}] run tp @e[x=-724,y=90,z=-242,dy=3,type=minecraft:villager,name=Kurt,limit=1] 371.0 64 -698
execute at @p[x=371,y=64,z=-698,distance=0..25,tag=Dialogue16,scores={TalkTime=0}] run tp @e[x=-722,y=90,z=-242,dy=3,type=minecraft:villager,name=Kurt,limit=1] 371.5 64 -698.0

#---------------------

#Dialogue17 - Azalea Town Bugsy pre-battle
scoreboard players set @a[x=-860,y=64,z=582,dx=11,dy=5,dz=15,scores={TalkTime=0},tag=!Dialogue17] DialogueTrigger 17

#Dialogue18 - Azalea Town Bugsy post-battle
scoreboard players set @a[x=-884,y=0,z=522,dx=57,dy=240,dz=86,scores={TalkTime=0},tag=!Dialogue18,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 18

#Dialogue19 - Azalea Town Silver pre-battle
scoreboard players set @a[x=402,y=64,z=-734,distance=0..15,tag=!Dialogue19,tag=Bugsy,scores={TalkTime=0}] DialogueTrigger 19

#---------------------

#Dialogue20 - Azalea Town Silver post-battle
scoreboard players set @a[x=402,y=64,z=-734,distance=0..25,scores={TalkTime=0},tag=!Dialogue20,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 20

#TPs in Silvers
execute at @a[x=402,y=64,z=-734,distance=0..15,scores={StarterPick=1,TalkTime=0},tag=Dialogue19,tag=!Dialogue20] run tp @e[x=-762,y=84,z=-242,dy=10,scores={StarterPick=1}] 402 64 -734
execute at @a[x=402,y=64,z=-734,distance=0..15,scores={StarterPick=2,TalkTime=0},tag=Dialogue19,tag=!Dialogue20] run tp @e[x=-762,y=84,z=-242,dy=10,scores={StarterPick=2}] 402 64 -734
execute at @a[x=402,y=64,z=-734,distance=0..15,scores={StarterPick=3,TalkTime=0},tag=Dialogue19,tag=!Dialogue20] run tp @e[x=-762,y=84,z=-242,dy=10,scores={StarterPick=3}] 402 64 -734


#---------------------

#Dialogue21 Pre-Bugsy
execute as @a[x=623,y=64,z=-714,distance=..5,tag=!Bugsy,scores={Cooldown=0}] run tellraw @s {"text":"<Charcoal Apprentice> My Farfetch'd ran off! I could really use the help of an experienced trainer..."}
execute as @a[x=623,y=64,z=-714,distance=..5,tag=!Bugsy,scores={Cooldown=0}] run scoreboard players set @s Cooldown 60

#Dialogue21 - Ilex Forest Farfetch'd Lost
scoreboard players set @a[x=623,y=64,z=-714,distance=0..5,tag=!Dialogue21,tag=Bugsy,scores={Farfetchd=0}] DialogueTrigger 21

#Runs Farfetch'd chasing function
execute as @a[limit=1,x=513,y=60,z=-793,dx=187,dy=10,dz=228] run function johto:world/farfetchd

#---------------------

#Dialogue22 - Ilex Forest Farfetch'd Found
execute as @a[x=622,y=64,z=-714,distance=..6,tag=!Dialogue22,scores={Farfetchd=1}] if entity @e[x=622,y=64,z=-714,distance=..5,type=minecraft:armor_stand,tag=Farfetchd] run scoreboard players set @s DialogueTrigger 22

#Dialogue23 - Goldenrod City Bike Shop
scoreboard players set @a[x=419,y=63,z=-433,dx=12,dy=7,dz=11,tag=!Dialogue23] DialogueTrigger 23

#Dialogue24 - Azalea Town Charcoal Kiln revisit
scoreboard players set @a[x=286,y=63,z=-749,dx=20,dy=5,dz=8,scores={Farfetchd=2..,TalkTime=0},tag=!Dialogue24] DialogueTrigger 24

#Dialogue26 - Bicycle Clerk follow-up
scoreboard players set @s[tag=Bicycle,tag=!Dialogue26,scores={BicycleCD=0,Bicycle=1,TalkTime=0}] DialogueTrigger 26

#Dialogue27 - Goldenrod City Whitney pre-battle
scoreboard players set @a[x=-979,y=64,z=589,dx=13,dy=5,dz=15,tag=!Dialogue27] DialogueTrigger 27

#Dialogue28 - Goldenrod City Whitney post-battle
scoreboard players set @a[x=-1011,y=0,z=522,dx=116,dy=240,dz=107,scores={TalkTime=0},tag=!Dialogue28,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 28

#Dialogue29 - Goldenrod City Flower Shop give Squirtbottle
scoreboard players set @a[x=420,y=63,z=-307,dx=8,dy=5,dz=8,tag=!Dialogue29,tag=Whitney,scores={TalkTime=0}] DialogueTrigger 29

#---------------------

#Dialogue30 - Route 36 Sudowoodo Spawn
scoreboard players set @a[x=332,y=64,z=-16,distance=0..10,tag=Dialogue29,tag=!Dialogue30] DialogueTrigger 30

#Sets up Sudowoodo
execute at @a[x=332,y=64,z=-16,distance=0..30,tag=!Dialogue30,scores={TalkTime=0}] run setblock 333 64 -17 pixelmon:poke_display[facing=north]{PokeDisplayPokemon:{ndex:185,Growth:7b}} replace

#Dialogue31 - Ecruteak City Silver at Dance Theatre
scoreboard players set @a[x=343,y=64,z=216,distance=..3,tag=!Dialogue31,scores={TalkTime=0}] DialogueTrigger 31
execute as @a[x=343,y=64,z=216,distance=..50,tag=!Dialogue31,scores={TalkTime=0}] unless entity @e[x=343,y=64,z=216,dy=3,type=pixelmon:npc_chatting] run summon pixelmon:npc_chatting 343 64 216 {Brain: {memories: {}}, HurtByTimestamp: 0, chatNum: 0, Attributes: [{Base: 0.0d, Name: "forge:step_height_addition"}, {Base: 0.699999988079071d, Modifiers: [{Amount: -15.150000602006912d, Operation: 2, Name: "effect.minecraft.slowness 100"}], Name: "minecraft:generic.movement_speed"}, {Base: 0.08d, Name: "forge:entity_gravity"}], Invulnerable: 0b, FallFlying: 0b, PortalCooldown: 0, AbsorptionAmount: 0.0f, Name: "Silver", FallDistance: 0.0f, active_effects: [{duration: 19723, show_icon: 0b, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1b}], amplifier: 100b, ambient: 0b, id: "minecraft:slowness", show_particles: 0b}], CanUpdate: 1b, DeathTime: 0s, DefaultName: 0b, Commands: {interactCommands: []}, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 1b, UUID: [I; 1119152397, 315706694, -1792016176, 300079149], trainerLocation: 2, DefaultGreet: 0b, Motion: [0.0d, -0.0784000015258789d, 0.0d], TextureIndex: 4, TrainerIndex: "evilprofessor", NameIndex: 3, Health: 20.0f, LeftHanded: 0b, Air: 300s, OnGround: 1b, Rotation: [0.27535683f, -15.696765f], HandItems: [{}, {}], ChatIndex: 3, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], Profession: -1s, Pos: [-757.5d, 89.0d, -241.5d], Fire: -1s, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 0b, CustomSteveTexture: "silver.png", HurtTime: 0s, BaseTrainer: "Steve", Inventory: [], AIMode: 2s}



#Dialogue32 - Ecruteak City HM Surf Guy intro
scoreboard players set @a[x=333,y=64,z=219,dx=20,dy=5,dz=14,tag=!Dialogue32,scores={TalkTime=0}] DialogueTrigger 32

#Dialogue33 - Ecruteak City HM Surf Guy after all stars
scoreboard players set @a[x=333,y=64,z=219,dx=20,dy=5,dz=14,scores={TalkTime=0},tag=!Dialogue33,tag=Dialogue32,nbt={Inventory:[{id:"minecraft:nether_star",Count:5b}]}] DialogueTrigger 33

#---------------------

#Dialogue34 - Ecruteak City Burned Tower Silver pre-battle
scoreboard players set @a[x=441,y=64,z=312,distance=..7,tag=!Dialogue34] DialogueTrigger 34

#Dialogue35 - post-battle
scoreboard players set @a[x=441,y=64,z=312,distance=..20,tag=!Dialogue35,scores={TalkTime=0},nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 35

execute as @a[x=441,y=64,z=312,distance=..20,tag=Dialogue34,tag=!Dialogue35,scores={TalkTime=0,StarterPick=1}] run tp @e[x=-764,y=84,z=-242,dy=10,scores={StarterPick=1}] 441 64 312
execute as @a[x=441,y=64,z=312,distance=..20,tag=Dialogue34,tag=!Dialogue35,scores={TalkTime=0,StarterPick=2}] run tp @e[x=-764,y=84,z=-242,dy=10,scores={StarterPick=2}] 441 64 312
execute as @a[x=441,y=64,z=312,distance=..20,tag=Dialogue34,tag=!Dialogue35,scores={TalkTime=0,StarterPick=3}] run tp @e[x=-764,y=84,z=-242,dy=10,scores={StarterPick=3}] 441 64 312

#---------------------
#Dialogue36 - Burned Tower Legendary Dogs
scoreboard players set @a[x=444,y=58,z=328,distance=..5,tag=!Dialogue36] DialogueTrigger 36
execute if entity @a[x=444,y=58,z=328,distance=..20,tag=!Dialogue36,scores={TalkTime=0}] run setblock 439 59 328 pixelmon:poke_display[facing=north]{PokeDisplayPokemon:{ndex:2004,Growth:2b},PokeDisplayTextureMode:1} replace
execute if entity @a[x=444,y=58,z=328,distance=..20,tag=!Dialogue36,scores={TalkTime=0}] run setblock 446 59 328 pixelmon:poke_display[facing=north]{PokeDisplayPokemon:{ndex:2005,Growth:2b},PokeDisplayTextureMode:1} replace
execute if entity @a[x=444,y=58,z=328,distance=..20,tag=!Dialogue36,scores={TalkTime=0}] run setblock 443 59 328 pixelmon:poke_display[facing=north]{PokeDisplayPokemon:{ndex:2006,Growth:2b},PokeDisplayTextureMode:1} replace

#---------------------
#Dialogue37 - Ecruteak City Gym Morty pre-battle
scoreboard players set @a[x=-1059,y=64,z=614,distance=..10,tag=!Dialogue37] DialogueTrigger 37

#Dialogue38 - Ecruteak City Gym Morty post-battle
scoreboard players set @a[x=-1059,y=64,z=614,distance=..20,tag=!Dialogue38,scores={TalkTime=0},nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 38

#Dialogue39 - Olivine City Silver front of gym
scoreboard players set @a[x=809,y=64,z=14,distance=..5,tag=!Dialogue39,scores={TalkTime=0}] DialogueTrigger 39
execute at @a[x=809,y=63,z=14,distance=..50,tag=!Dialogue39] run tp @e[x=-772,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 809 64 14

#Dialogue40
#Olivine Lighthouse Ampharos is sick
scoreboard players set @a[x=694,y=119,z=-48,dx=17,dy=10,dz=15,tag=!Dialogue40] DialogueTrigger 40

#Dialogue41 - Cianwood Pharmacy
scoreboard players set @a[x=1221,y=63,z=-491,dx=19,dy=5,dz=10,tag=Dialogue40,tag=!Dialogue41] DialogueTrigger 41

#Dialogue42 - Olivine Lighthouse bringing medicine
scoreboard players set @a[x=694,y=119,z=-48,dx=17,dy=10,dz=15,tag=Dialogue40,tag=Dialogue41,tag=!Dialogue42,scores={TalkTime=0}] DialogueTrigger 42

#Dialogue43 - Cianwood City Chuck's wife gives Fly
scoreboard players set @a[x=1261,y=64,z=-488,distance=..10,scores={TalkTime=0},tag=Chuck,tag=!Dialogue43] DialogueTrigger 43

#Dialogue44 - Cianwood City Chuck pre-battle
scoreboard players set @a[x=-1187,y=64,z=616,distance=..20,tag=!Dialogue44,scores={TalkTime=0}] DialogueTrigger 44

#Dialogue45 - Cianwood City Chuck post-battle
scoreboard players set @a[x=-1221,y=0,z=524,dx=60,dy=240,dz=100,tag=!Dialogue45,scores={TalkTime=0},nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 45

#Dialogue46 - Olivine City Jasmine pre-battle
scoreboard players set @a[x=-1126,y=67,z=595,distance=..20,scores={TalkTime=0},tag=!Dialogue47] DialogueTrigger 46

#Dialogue47 - Olivine City Jasmine post-battle
scoreboard players set @a[x=-1156,y=0,z=522,dx=60,dy=240,dz=93,scores={TalkTime=0},tag=!Dialogue47,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 47

#---------------------
#Dialogue48 - Route 43 Team Rocket Mugging
scoreboard players set @a[x=-198,y=63,z=343,dx=19,dy=5,dz=19,tag=!Dialogue48,tag=!Dialogue64] DialogueTrigger 48
execute as @p[x=-187,y=64,z=352,distance=..30,tag=!Dialogue64] run tp @e[x=-181,y=63,z=352,dy=3,type=pixelmon:npc_chatting] -809 93 -242
execute as @p[x=-187,y=64,z=352,distance=..30,tag=!Dialogue64] run tp @e[x=-811,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -184 64 352
execute as @p[x=-187,y=64,z=352,distance=..30,tag=!Dialogue64] run tp @e[x=-813,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -190 64 352
execute as @p[x=-187,y=64,z=352,distance=..30,tag=Dialogue64] run tp @e[x=-809,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -181 64 352
execute as @p[x=-187,y=64,z=352,distance=..30,tag=Dialogue64] run tp @e[x=-190,y=63,z=352,dy=3,type=pixelmon:npc_chatting] -811 93 -242
execute as @p[x=-187,y=64,z=352,distance=..30,tag=Dialogue64] run tp @e[x=-184,y=63,z=352,dy=3,type=pixelmon:npc_chatting] -813 93 -242

#---------------------
#Route 49 - Lake of Rage Shiny Gyarados
scoreboard players set @a[x=-169,y=65,z=645,distance=..30,scores={TalkTime=0},tag=!Dialogue49] DialogueTrigger 49
execute if entity @a[x=-169,y=65,z=645,distance=..100,tag=!Dialogue49,scores={TalkTime=0}] run setblock -167 62 632 pixelmon:poke_display[facing=north,waterlogged=true]{PokeDisplayPokemon:{ndex:130,Growth:6b,palette:"shiny"}} replace


#Dialogue50 - Mr. Pokemon Red Scale trade prompt
scoreboard players set @a[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,scores={DialogueTrigger=0},tag=!Dialogue50,nbt={Inventory:[{id:"pixelmon:red_scale"}]}] DialogueTrigger 50

#Dialogue51 - Lake of Rage Lance starting Rocket Quest
scoreboard players set @a[x=-159,y=63,z=590,distance=..5,tag=Dialogue49,tag=!Dialogue51] DialogueTrigger 51
execute as @a[x=-159,y=64,z=590,distance=..50,tag=Dialogue49,tag=!Dialogue51] run tp @e[x=-807,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -159 64 590

#---------------------
#Dialogue53
scoreboard players set @a[x=-164,y=63,z=196,dx=19,dy=6,dz=20,tag=Dialogue52,tag=!Dialogue53] DialogueTrigger 53
execute at @a[x=-155,y=64,z=208,distance=..30,tag=Dialogue52,scores={TalkTime=0},tag=!Dialogue53] run setblock -156 64 200 pixelmon:poke_display[facing=east]{PokeDisplayPokemon:{ndex:149,Growth:6b},PokeDisplayTextureMode:0} replace
execute at @a[x=-155,y=64,z=208,distance=..30,tag=Dialogue52,scores={TalkTime=0},tag=!Dialogue53] run tp @e[x=-805,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -155 64 202

#Mahogany Town Rocket HQ Occupied by Rockets
execute at @p[x=-155,y=64,z=208,distance=..30,tag=!Dialogue53,scores={TalkTime=0}] run fill -164 63 216 -160 63 213 minecraft:oak_planks
execute at @p[x=-155,y=64,z=208,distance=..30,tag=!Dialogue53,scores={TalkTime=0}] run tp @e[x=-152,y=63,z=212,dy=3,type=pixelmon:npc_shopkeeper,limit=1] -152 72 212
execute at @p[x=-155,y=64,z=208,distance=..30,tag=!Dialogue53,scores={TalkTime=0}] run tp @e[x=-157,y=63,z=193,dy=3,type=pixelmon:npc_chatting] -159 72 196
execute at @p[x=-155,y=64,z=208,distance=..30,tag=!Dialogue53,scores={TalkTime=0}] run tp @e[x=-157,y=71,z=196,dy=3,type=pixelmon:npc_shopkeeper,limit=1] -156 64 206
execute at @p[x=-155,y=64,z=208,distance=..30,tag=!Dialogue53,scores={TalkTime=0}] run tp @e[x=-155,y=71,z=196,dy=3,type=pixelmon:npc_chatting] -149 64 200

#Cleared of Rockets
execute at @p[x=-155,y=64,z=208,distance=..30,tag=Dialogue64,scores={TalkTime=0}] run tp @e[x=-152,y=71,z=212,dy=3,type=pixelmon:npc_shopkeeper,limit=1] -152 64 212
execute at @p[x=-155,y=64,z=208,distance=..30,tag=Dialogue64,scores={TalkTime=0}] run tp @e[x=-159,y=71,z=196,dy=3,type=pixelmon:npc_chatting] -157 64 193
execute at @p[x=-155,y=64,z=208,distance=..30,tag=Dialogue64,scores={TalkTime=0}] run tp @e[x=-156,y=63,z=206,dy=3,type=pixelmon:npc_shopkeeper,limit=1] -157 72 196
execute at @p[x=-155,y=64,z=208,distance=..30,tag=Dialogue64,scores={TalkTime=0}] run tp @e[x=-149,y=63,z=200,dy=3,type=pixelmon:npc_chatting] -155 72 196

#Dialogue54 - Rocket HQ Lance healing player
scoreboard players set @a[x=-83,y=45,z=169,distance=..5,tag=!Dialogue54] DialogueTrigger 54
execute at @a[x=-83,y=45,z=169,distance=..20,tag=!Dialogue54,scores={TalkTime=0}] run tp @e[x=-803,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -83 45 169

#Dialogue55 - Lance passwords talk
scoreboard players set @a[x=-149,y=34,z=165,distance=..5,tag=!Dialogue55] DialogueTrigger 55
execute at @a[x=-149,y=34,z=165,distance=..25,tag=!Dialogue55,scores={TalkTime=0}] run tp @e[x=-801,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -149 34 165

#Dialogue56 - Password 1
scoreboard players set @a[x=-145,y=33,z=193,distance=..25,scores={TalkTime=0},tag=!Dialogue56,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 56

#Dialogue57 - Password 2
scoreboard players set @a[x=-80,y=33,z=170,distance=..25,scores={TalkTime=0},tag=!Dialogue57,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 57

#Dialogue58 - Password 3 (Murkrow)
scoreboard players set @a[x=-91,y=34,z=217,distance=..5,scores={TalkTime=0},tag=Dialogue61,tag=!Dialogue58] DialogueTrigger 58

#Dialogue59 - Silver in HQ
scoreboard players set @a[x=-82,y=34,z=182,distance=..5,tag=!Dialogue59] DialogueTrigger 59
execute at @a[x=-82,y=34,z=182,distance=..20,tag=!Dialogue59,scores={TalkTime=0}] unless entity @e[x=-82,y=34,z=182,dy=3,type=pixelmon:npc_chatting] run summon pixelmon:npc_chatting -82 34 182 {Brain: {memories: {}}, HurtByTimestamp: 0, chatNum: 0, Attributes: [{Base: 0.0d, Name: "forge:step_height_addition"}, {Base: 0.699999988079071d, Modifiers: [{Amount: -15.150000602006912d, Operation: 2, Name: "effect.minecraft.slowness 100"}], Name: "minecraft:generic.movement_speed"}, {Base: 0.08d, Name: "forge:entity_gravity"}], Invulnerable: 0b, FallFlying: 0b, PortalCooldown: 0, AbsorptionAmount: 0.0f, Name: "Silver", FallDistance: 0.0f, active_effects: [{duration: 19723, show_icon: 0b, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1b}], amplifier: 100b, ambient: 0b, id: "minecraft:slowness", show_particles: 0b}], CanUpdate: 1b, DeathTime: 0s, DefaultName: 0b, Commands: {interactCommands: []}, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 1b, UUID: [I; 1119152397, 315706694, -1792016176, 300079149], trainerLocation: 2, DefaultGreet: 0b, Motion: [0.0d, -0.0784000015258789d, 0.0d], TextureIndex: 4, TrainerIndex: "evilprofessor", NameIndex: 3, Health: 20.0f, LeftHanded: 0b, Air: 300s, OnGround: 1b, Rotation: [0.27535683f, -15.696765f], HandItems: [{}, {}], ChatIndex: 3, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], Profession: -1s, Pos: [-757.5d, 89.0d, -241.5d], Fire: -1s, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 0b, CustomSteveTexture: "silver.png", HurtTime: 0s, BaseTrainer: "Steve", Inventory: [], AIMode: 2s}


#Dialogue60 - Executive pre-battle
scoreboard players set @a[x=-117,y=33,z=189,dx=31,dy=5,dz=31,scores={TalkTime=0},tag=!Dialogue60] DialogueTrigger 60

#Dialogue61 - Executive post-battle
scoreboard players set @a[x=-117,y=33,z=189,dx=31,dy=5,dz=31,scores={TalkTime=0},tag=!Dialogue61,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 61
execute at @a[x=-99,y=34,z=205,distance=..20,scores={TalkTime=0},tag=!Dialogue61] run tp @e[x=-799,y=92,z=-242,dy=3,type=pixelmon:npc_trainer] -99 34 205

#Dialogue62 - Ariana pre-battle
scoreboard players set @a[x=-141,y=44,z=157,dx=16,dy=5,dz=15,tag=Dialogue58,tag=!Dialogue62] DialogueTrigger 62

execute at @a[x=-133,y=45,z=166,distance=..30,scores={TalkTime=0},tag=Dialogue58,tag=!Dialogue63] run tp @e[x=-797,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -128 45 159
execute at @a[x=-133,y=45,z=166,distance=..30,scores={TalkTime=0},tag=Dialogue58,tag=!Dialogue63] run tp @e[x=-795,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -128 45 171
execute at @a[x=-133,y=45,z=166,distance=..30,scores={TalkTime=0},tag=Dialogue58,tag=!Dialogue63] run tp @e[x=-793,y=92,z=-242,dy=3,type=pixelmon:npc_trainer] -134 45 170
execute at @a[x=-133,y=45,z=166,distance=..30,scores={TalkTime=0},tag=Dialogue58,tag=!Dialogue63] run setblock -128 45 168 pixelmon:poke_display[facing=north]{PokeDisplayPokemon:{ndex:24,Growth:3b}} replace
execute at @a[x=-133,y=45,z=166,distance=..30,scores={TalkTime=0},tag=Dialogue58,tag=!Dialogue63] run setblock -128 45 164 pixelmon:poke_display[facing=south]{PokeDisplayPokemon:{ndex:149,Growth:3b}} replace


#Prior to battle-ready
execute at @a[x=-133,y=45,z=166,distance=..30,scores={TalkTime=0},tag=Dialogue53,tag=!Dialogue61] run setblock -128 45 168 minecraft:air
execute at @a[x=-133,y=45,z=166,distance=..30,scores={TalkTime=0},tag=Dialogue53,tag=!Dialogue61] run setblock -128 45 164 minecraft:air

#Dialogue63 - Ariana post-battle
scoreboard players set @a[x=-141,y=44,z=157,dx=16,dy=5,dz=15,scores={TalkTime=0},tag=!Dialogue63,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 63

#Dialogue64 - After defeating all Electrode in the room (no Pokemon found)
execute unless entity @e[x=-149,y=44,z=177,dx=63,dy=5,dz=35,type=pixelmon:pixelmon] as @a[x=-149,y=44,z=177,dx=63,dy=5,dz=35,scores={TalkTime=0},tag=Dialogue63] run scoreboard players set @s[tag=!Dialogue64] DialogueTrigger 64

#Dialogue76 - Route 43 gate gift
scoreboard players set @a[x=-183,y=64,z=352,distance=..5,tag=Dialogue64,tag=!Dialogue76,scores={TalkTime=0}] DialogueTrigger 76

#---------------------
#Goldenrod City Takeover
execute at @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue64,tag=!Dialogue72] run tp @e[x=-791,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 546 64 -350
execute at @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue64,tag=!Dialogue72] run tp @e[x=-785,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 495 64 -392
execute at @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue64,tag=!Dialogue72] run tp @e[x=-787,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 425 64 -380
execute at @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue64,tag=!Dialogue72] run tp @e[x=-789,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 420 64 -380
execute at @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue64,tag=!Dialogue72] run tp @e[x=-783,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 560 64 -352
execute at @a[x=560,y=64,z=-352,distance=..100,tag=!Dialogue72] run tp @e[x=-783,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 560 64 -352

#Post-takeover
execute at @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue72] run tp @e[x=546,y=63,z=-350,dy=3,type=pixelmon:npc_chatting] -791 93 -242
execute at @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue72] run tp @e[x=495,y=63,z=-392,dy=3,type=pixelmon:npc_chatting] -785 93 -242
execute at @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue72] run tp @e[x=425,y=63,z=-380,dy=3,type=pixelmon:npc_chatting] -787 93 -242
execute at @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue72] run tp @e[x=420,y=63,z=-380,dy=3,type=pixelmon:npc_chatting] -789 93 -242
execute at @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue72] run tp @e[x=560,y=63,z=-352,dy=3,type=pixelmon:npc_chatting] -783 93 -242

#Dialogue65 - Radio Tower Fake Director pre-battle
scoreboard players set @a[x=520,y=54,z=-248,dx=11,dy=5,dz=14,scores={TalkTime=0},tag=!Dialogue65] DialogueTrigger 65

#Dialogue65 - Radio Tower Fake Director post-battle
scoreboard players set @a[x=520,y=54,z=-248,dx=11,dy=5,dz=14,scores={TalkTime=0},tag=!Dialogue66,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 66

#Dialogue67 - Goldenrod Silver Pre-battle
scoreboard players set @a[x=481,y=47,z=-305,distance=..7,scores={TalkTime=0},tag=!Dialogue67] DialogueTrigger 67

#Dialogue68 - Goldenrod Silver post-battle
scoreboard players set @a[x=481,y=47,z=-305,distance=..20,tag=!Dialogue68,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 68

execute at @a[x=481,y=47,z=-305,distance=..25,tag=!Dialogue68,scores={TalkTime=0,StarterPick=1}] run tp @e[x=-766,y=84,z=-242,dy=10,scores={StarterPick=1}] 481 47 -305
execute at @a[x=481,y=47,z=-305,distance=..25,tag=!Dialogue68,scores={TalkTime=0,StarterPick=2}] run tp @e[x=-766,y=84,z=-242,dy=10,scores={StarterPick=2}] 481 47 -305
execute at @a[x=481,y=47,z=-305,distance=..25,tag=!Dialogue68,scores={TalkTime=0,StarterPick=3}] run tp @e[x=-766,y=84,z=-242,dy=10,scores={StarterPick=3}] 481 47 -305

#Dialogue69 - Goldenrod Radio Director underground
scoreboard players set @a[x=426,y=37,z=-304,distance=..5,tag=!Dialogue69] DialogueTrigger 69

execute at @p[x=426,y=37,z=-304,distance=..25,tag=!Dialogue72] run tp @e[x=-779,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 426 38 -304
execute at @p[x=426,y=37,z=-304,distance=..25,tag=Dialogue72] run tp @e[x=426,y=37,z=-304,dy=3,type=pixelmon:npc_chatting] -779 93 -242

#Dialogue70 - Radio Tower Ariana Post-battle
scoreboard players set @a[x=496,y=48,z=-248,dx=11,dy=5,dz=13,scores={TalkTime=0},tag=!Dialogue70,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 70

#Dialogue71 - Radio Tower Archer pre-battle
scoreboard players set @a[x=496,y=54,z=-248,dx=19,dy=5,dz=13,scores={TalkTime=0},tag=!Dialogue71] DialogueTrigger 71

#Dialogue72 - Radio Tower Archer post-battle
scoreboard players set @a[x=496,y=54,z=-248,dx=19,dy=5,dz=13,scores={TalkTime=0},tag=!Dialogue72,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 72

#Dialogue75 - Post-takeover gift
scoreboard players set @a[x=517,y=42,z=-267,distance=..5,scores={TalkTime=0},tag=Dialogue72,tag=!Dialogue75] DialogueTrigger 75

#---------------------
#Dialogue73 - Mahogany Gym pre-battle
scoreboard players set @a[x=-791,y=64,z=715,distance=..20,scores={TalkTime=0},tag=!Dialogue73] DialogueTrigger 73

#Dialogue74 - Mahogany Gym post-battle
scoreboard players set @a[x=-817,y=0,z=635,dx=58,dy=240,dz=101,scores={TalkTime=0},tag=!Dialogue74,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 74

#Dialogue77 - Blackthorn City Clair pre-battle
scoreboard players set @a[x=-856,y=64,z=720,distance=..10,tag=!Dialogue77,scores={TalkTime=0}] DialogueTrigger 77

#Dialogue78 - Blackthorn City Clair post-battle
scoreboard players set @a[x=-883,y=0,z=637,dx=58,dy=240,dz=98,tag=!Dialogue78,scores={TalkTime=0},nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 78

#Dialogue79 - Dragon's Den getting 8th badge
scoreboard players set @a[x=-744,y=69,z=507,dx=162,dy=70,dz=147,tag=!Dialogue79,nbt={Inventory:[{id:"pixelmon:dragon_fang"}]}] DialogueTrigger 79

#Dialogue80 - Blackthorn City Elm calling about Master Ball
scoreboard players set @a[x=-654,y=63,z=325,distance=..20,tag=!Dialogue81,tag=!Dialogue80,tag=Clair,scores={TalkTime=0}] DialogueTrigger 80

#Dialogue81 - New Bark Town Elm giving master ball
scoreboard players set @a[x=-693,y=63,z=-490,dx=20,dy=5,dz=20,tag=Clair,tag=!Dialogue81,scores={TalkTime=0}] DialogueTrigger 81

#Dialogue82 - Violet City Elm calling about Togepi Egg
scoreboard players set @a[x=88,y=64,z=-67,distance=..20,scores={TalkTime=0},tag=Falkner,tag=!Dialogue13,tag=!Dialogue82] DialogueTrigger 82

#Dialogue83 - Route 27 first steps into Kanto
scoreboard players set @a[x=-878,y=63,z=-533,dx=14,dy=5,dz=7,scores={TalkTime=0},tag=!Dialogue83] DialogueTrigger 83

#Dialogue84 - Victory Road Silver opening dialogue
scoreboard players set @a[x=-1449,y=51,z=528,distance=..7,scores={TalkTime=0},tag=!Dialogue84] DialogueTrigger 84

#Dialogue85 - Victory Road Silver defeat
scoreboard players set @a[x=-1449,y=51,z=528,distance=..25,scores={TalkTime=0},tag=!Dialogue85,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 85

execute at @a[x=-1449,y=51,z=528,distance=..25,tag=!Dialogue85,scores={StarterPick=1}] run tp @e[x=-768,y=84,z=-242,dy=10,scores={StarterPick=1}] -1449 51 528
execute at @a[x=-1449,y=51,z=528,distance=..25,tag=!Dialogue85,scores={StarterPick=2}] run tp @e[x=-768,y=84,z=-242,dy=10,scores={StarterPick=2}] -1449 51 528
execute at @a[x=-1449,y=51,z=528,distance=..25,tag=!Dialogue85,scores={StarterPick=3}] run tp @e[x=-768,y=84,z=-242,dy=10,scores={StarterPick=3}] -1449 51 528

#---------------------
#Dialogue86 - Elite Four Will opening
scoreboard players set @a[x=-1288,y=63,z=428,distance=..20,scores={TalkTime=0},tag=!Dialogue86] DialogueTrigger 86
scoreboard players set @a[x=-1341,y=63,z=428,distance=..20,scores={TalkTime=0},tag=!Dialogue86] DialogueTrigger 86

#Dialogue87 - Elite Four Will loss
scoreboard players set @a[x=-1288,y=63,z=428,distance=..20,scores={TalkTime=0},tag=!Dialogue87,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 87
scoreboard players set @a[x=-1341,y=63,z=428,distance=..20,scores={TalkTime=0},tag=!Dialogue87,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 87


#Dialogue88 - Elite Four Koga opening
scoreboard players set @a[x=-1288,y=66,z=495,distance=..20,scores={TalkTime=0},tag=!Dialogue88] DialogueTrigger 88
scoreboard players set @a[x=-1341,y=66,z=495,distance=..20,scores={TalkTime=0},tag=!Dialogue88] DialogueTrigger 88

#Dialogue89 - Elite Four Koga loss
scoreboard players set @a[x=-1313,y=0,z=447,dx=50,dy=240,dz=75,scores={TalkTime=0},tag=!Dialogue89,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 89
scoreboard players set @a[x=-1366,y=0,z=447,dx=50,dy=240,dz=75,scores={TalkTime=0},tag=!Dialogue89,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 89


#Dialogue90 - Elite Four Bruno opening
scoreboard players set @a[x=-1288,y=66,z=580,distance=..20,scores={TalkTime=0},tag=!Dialogue90] DialogueTrigger 90
scoreboard players set @a[x=-1341,y=66,z=580,distance=..20,scores={TalkTime=0},tag=!Dialogue90] DialogueTrigger 90

#Dialogue91 - Elite Four Bruno loss
scoreboard players set @a[x=-1313,y=0,z=523,dx=50,dy=240,dz=76,scores={TalkTime=0},tag=!Dialogue91,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 91
scoreboard players set @a[x=-1366,y=0,z=523,dx=50,dy=240,dz=76,scores={TalkTime=0},tag=!Dialogue91,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 91



#Dialogue92 - Elite Four Karen opening
scoreboard players set @a[x=-1288,y=69,z=656,distance=..20,scores={TalkTime=0},tag=!Dialogue92] DialogueTrigger 92
scoreboard players set @a[x=-1341,y=69,z=656,distance=..20,scores={TalkTime=0},tag=!Dialogue92] DialogueTrigger 92

#Dialogue93 - Elite Four Karen loss
scoreboard players set @a[x=-1313,y=0,z=600,dx=50,dy=240,dz=75,scores={TalkTime=0},tag=!Dialogue93,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 93
scoreboard players set @a[x=-1366,y=0,z=600,dx=50,dy=240,dz=75,scores={TalkTime=0},tag=!Dialogue93,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 93


#Dialogue94 - Elite Four Lance opening
scoreboard players set @a[x=-1288,y=77,z=748,distance=..10,scores={TalkTime=0},tag=!Dialogue94] DialogueTrigger 94
scoreboard players set @a[x=-1341,y=77,z=748,distance=..10,scores={TalkTime=0},tag=!Dialogue94] DialogueTrigger 94


#Dialogue95 - Elite Four Lance loss
scoreboard players set @a[x=-1313,y=0,z=676,dx=50,dy=240,dz=74,scores={TalkTime=0},tag=!Dialogue95,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 95
scoreboard players set @a[x=-1366,y=0,z=676,dx=50,dy=240,dz=74,scores={TalkTime=0},tag=!Dialogue95,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 95


#Dialogue96 - Hall of Fame Lance Opening
scoreboard players set @a[x=-1300,y=77,z=751,dx=24,dy=10,dz=34,tag=!Dialogue96,scores={TalkTime=0}] DialogueTrigger 96




#---------------------
#Dialogue100 - New Bark Town Elm calling for SS Ticket
scoreboard players set @a[x=-723,y=68,z=-492,distance=..20,scores={TalkTime=0,IP=1..},tag=!Dialogue100] DialogueTrigger 100

#Dialogue101 - Elm's Lab SS Ticket
scoreboard players set @a[x=-693,y=63,z=-490,dx=20,dy=5,dz=20,scores={TalkTime=0,IP=1..,DialogueTrigger=0},tag=Dialogue81,tag=!Dialogue101] DialogueTrigger 101

#Dialogue102 - Mr. Pokemon giving orbs
scoreboard players set @a[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,scores={TalkTime=0,IP=1..,DialogueTrigger=0},tag=!Dialogue102] DialogueTrigger 102

#Dialogue106 - Goldenrod City Pokemon Center GS Ball
scoreboard players set @a[x=498,y=64,z=-414,distance=..5,scores={TalkTime=0,IP=1..},tag=!Dialogue106] DialogueTrigger 106

#Dialogue107 - Azalea Town Kurt's House GS Ball inspect
scoreboard players set @a[x=354,y=63,z=-704,dx=19,dy=5,dz=8,tag=!Dialogue107,nbt={Inventory:[{id:"pixelmon:poke_ball",tag:{PokeBallID:"gs_ball"}}]}] DialogueTrigger 107

#Dialogue108 - Azalea Town Kurt GS Ball inspected
scoreboard players set @a[x=354,y=63,z=-704,dx=19,dy=5,dz=8,scores={TalkTime=0},tag=Dialogue107,tag=GSBallReady,tag=!Dialogue108] DialogueTrigger 108

#Dialogue109 - Ilex Forest Shrine Info
scoreboard players set @a[x=617,y=65,z=-696,distance=..10,scores={TalkTime=0},tag=Dialogue108,tag=!Dialogue109] DialogueTrigger 109

#Dialogue110 - Pewter City Brock pre-battle
scoreboard players set @a[x=-955,y=64,z=687,distance=..20,scores={TalkTime=0},tag=!Dialogue111] DialogueTrigger 111

#Dialogue111 - Pewter City Brock post-battle
scoreboard players set @a[x=-979,y=0,z=636,dx=47,dy=240,dz=66,scores={TalkTime=0},tag=!Dialogue112,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 112

#Dialogue113 - Route 25 Misty on a date
scoreboard players set @a[x=-3060,y=64,z=956,distance=..5,tag=Dialogue221,tag=!Dialogue113,scores={TalkTime=0}] DialogueTrigger 113
execute at @a[x=-3060,y=64,z=956,distance=..50,tag=!Dialogue113,tag=Dialogue221] run tp @e[x=-815,y=84,z=-240,dy=3,type=pixelmon:npc_chatting] -3060 64 956

#Dialogue114 - Cerulean City Misty pre-battle
scoreboard players set @a[x=-1015,y=64,z=681,dx=22,dy=5,dz=9,scores={TalkTime=0},tag=!Dialogue114] DialogueTrigger 114

#Dialogue114 - Cerulean City Misty pre-battle
scoreboard players set @a[x=-1026,y=0,z=636,dx=44,dy=240,dz=65,scores={TalkTime=0},tag=!Dialogue115,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 115

#Dialogue116 - Surge pre-battle
scoreboard players set @a[x=-1051,y=63,z=705,distance=..20,scores={TalkTime=0},tag=!Dialogue116] DialogueTrigger 116

#Dialogue117 - Surge post-battle
scoreboard players set @a[x=-1072,y=0,z=636,dx=44,dy=240,dz=80,scores={TalkTime=0},tag=!Dialogue117,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 117

#Dialogue118 - Erika pre-battle
scoreboard players set @a[x=-1098,y=63,z=698,distance=..10,scores={TalkTime=0},tag=!Dialogue118] DialogueTrigger 118

#Dialogue119 - Erika post-battle
scoreboard players set @a[x=-1121,y=0,z=636,dx=46,dy=240,dz=80,scores={TalkTime=0},tag=!Dialogue119,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 119

#Dialogue120 - Janine pre-battle
scoreboard players set @a[x=-1150,y=63,z=672,dx=15,dy=5,dz=6,scores={TalkTime=0},tag=!Dialogue120] DialogueTrigger 120

#Dialogue121 - Janine post-battle
scoreboard players set @a[x=-1172,y=0,z=636,dx=50,dy=240,dz=80,scores={TalkTime=0},tag=!Dialogue121,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 121

#Dialogue122 - Sabrina pre-battle
scoreboard players set @a[x=-978,y=64,z=758,dx=19,dy=5,dz=15,scores={TalkTime=0},tag=!Dialogue122] DialogueTrigger 122

#Dialogue123 - Sabrina post-battle
scoreboard players set @a[x=-1006,y=0,z=732,dx=75,dy=240,dz=68,scores={TalkTime=0},tag=!Dialogue123,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 123

#Dialogue124 - Blaine pre-battle
scoreboard players set @a[x=-1042,y=63,z=771,dx=20,dy=5,dz=18,scores={TalkTime=0},tag=!Dialogue124] DialogueTrigger 124

#Dialogue125 - Blaine post-battle
scoreboard players set @a[x=-1094,y=0,z=729,dx=79,dy=240,dz=67,scores={TalkTime=0},tag=!Dialogue125,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 125

#Dialogue126 - Blue pre-battle
scoreboard players set @a[x=-1131,y=64,z=796,distance=..20,scores={TalkTime=0},tag=!Dialogue126] DialogueTrigger 126

#Dialogue127 - Blue post-battle
scoreboard players set @a[x=-1160,y=0,z=730,dx=55,dy=240,dz=85,scores={TalkTime=0},tag=!Dialogue127,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 127

#Dialogue128 - Mt. Silver Red
scoreboard players set @a[x=-944,y=182,z=285,distance=..20,scores={TalkTime=0},tag=!Dialogue128] DialogueTrigger 128

#Dialogue129 - Red post-battle
scoreboard players set @a[x=-944,y=182,z=285,distance=..20,scores={TalkTime=0},tag=!Diaogue129,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 129

#Dialogue130 - Mt. Moon Silver final battle
scoreboard players set @a[x=-2200,y=64,z=800,distance=..7,scores={TalkTime=0},tag=!Dialogue130] DialogueTrigger 130

#Dialogue131 - Mt. Moon Silver final battle post
scoreboard players set @a[x=-2200,y=64,z=800,distance=..25,scores={TalkTime=0},tag=!Dialogue131,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 131

execute at @a[x=-2200,y=64,z=800,distance=..25,scores={TalkTime=0,StarterPick=1},tag=!Dialogue131] run tp @e[x=-770,y=84,z=-242,dy=10,scores={StarterPick=1}] -2200 64 800
execute at @a[x=-2200,y=64,z=800,distance=..25,scores={TalkTime=0,StarterPick=2},tag=!Dialogue131] run tp @e[x=-770,y=84,z=-242,dy=10,scores={StarterPick=2}] -2200 64 800
execute at @a[x=-2200,y=64,z=800,distance=..25,scores={TalkTime=0,StarterPick=3},tag=!Dialogue131] run tp @e[x=-770,y=84,z=-242,dy=10,scores={StarterPick=3}] -2200 64 800

#Dialogue131 - Saffron City Copycat first talk
scoreboard players set @a[x=-2725,y=69,z=368,dx=10,dy=5,dz=9,scores={TalkTime=0},tag=Dialogue221,tag=!Dialogue133] DialogueTrigger 133

#Dialogue134 - Vermilion City Poke Fan
scoreboard players set @a[x=-2696,y=64,z=-37,distance=..5,scores={TalkTime=0},tag=Dialogue133,tag=!Dialogue134] DialogueTrigger 134
execute at @a[x=-2697,y=65,z=-39,distance=..20,scores={TalkTime=0},tag=!Dialogue133] run data merge entity @e[x=-2697,y=65,z=-39,distance=..2,type=pixelmon:statue,limit=1] {ndex:35}

#Dialogue135 - Returning Copycat Doll
scoreboard players set @a[x=-2725,y=69,z=368,dx=10,dy=5,dz=9,scores={TalkTime=0},tag=Dialogue134,tag=!Dialogue135,nbt={Inventory:[{id:"minecraft:music_disc_13"}]}] DialogueTrigger 135
execute at @p[x=-2721,y=68,z=374,distance=..20,scores={TalkTime=0},tag=!Dialogue135] run tp @e[x=-2721,y=70,z=374,distance=..1,type=pixelmon:statue] -736 75 -242

#Dialogue136 - Vermilion Steven Introduction
scoreboard players set @a[x=-2710,y=64,z=-55,distance=..7,scores={TalkTime=0},tag=Dialogue134,tag=!Dialogue136] DialogueTrigger 136
execute at @a[x=-2710,y=64,z=-55,distance=..40,scores={TalkTime=0},tag=Dialogue134,tag=!Dialogue136] run tp @e[x=-734,y=90,z=-242,dy=2,type=pixelmon:npc_chatting] -2710 64 -55

#Dialogue137 - Saffron Silph Co Steven Hoenn Starters
scoreboard players set @a[x=-2750,y=63,z=327,distance=..8,scores={TalkTime=0},tag=Dialogue136,tag=!Dialogue137,tag=Red] DialogueTrigger 137
execute at @a[x=-2763,y=63,z=329,distance=..40,tag=Dialogue136,tag=!Dialogue137,tag=Red] run tp @e[x=-736,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] -2763 64 329
execute at @a[x=-2763,y=63,z=329,distance=..40,tag=Dialogue136,tag=!Dialogue137,tag=Red] run tp @e[x=-2763,y=63,z=329,dy=3,type=pixelmon:npc_trader] -732 91 -242

#Dialogue139 - Saffron Silph Co Steven Trader
scoreboard players set @a[x=-2763,y=63,z=329,distance=..7,scores={TalkTime=0,StevenCD=0},tag=Dialogue138,tag=!Dialouge139] DialogueTrigger 139
execute at @p[x=-2763,y=63,z=329,distance=..30,scores={TalkTime=0,StevenCD=0},tag=Dialogue138] run tp @e[x=-732,y=90,z=-242,dy=3,type=pixelmon:npc_trader] -2763 64 329
execute at @p[x=-2763,y=63,z=329,distance=..30,scores={TalkTime=0,StevenCD=0},tag=Dialogue138] run tp @e[x=-2763,y=63,z=329,dy=3,type=pixelmon:npc_chatting] -736 91 -242

#Dialogue141 - Elm's Lab shiny charm
scoreboard players set @a[x=-693,y=63,z=-490,dx=20,dy=5,dz=20,scores={DialogueTrigger=0},tag=Dialogue101,tag=!Dialogue141,tag=Red] DialogueTrigger 141

#Dialogue143 - Mr. Pokemon after encountering Kyogre or Groudon
scoreboard players set @a[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,scores={TalkTime=0,DialogueTrigger=0,Groudon=1..},tag=Dialogue102,tag=!Dialogue143] DialogueTrigger 143
scoreboard players set @a[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,scores={TalkTime=0,DialogueTrigger=0,Kyogre=1..},tag=Dialogue102,tag=!Dialogue143] DialogueTrigger 143

#Dialogue144 - Mr. Pokemon after encountering both Hoenn box legends
scoreboard players set @a[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,scores={Groudon=1..,Kyogre=1},tag=Dialogue143,tag=!Dialogue144] DialogueTrigger 144

#Dialogue145 - Cianwood Chuck on the way to Embedded Tower
scoreboard players set @a[x=1317,y=64,z=-370,distance=..7,scores={TalkTime=0},tag=Dialogue102,tag=!Dialogue145] DialogueTrigger 145
execute at @a[x=1317,y=64,z=-370,distance=..30,tag=Dialogue102,tag=!Dialogue145] run tp @e[x=-718,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] 1317 64 -370

#Dialogue146 - Route 35 gate Kenya Spearow delievery start
scoreboard players set @a[x=481,y=64,z=-267,distance=..3,scores={Cooldown=0,TalkTime=0},tag=!Dialogue146] DialogueTrigger 146

#Dialogue148 - Sleepy guy getting Spearow
scoreboard players set @a[x=-130,y=64,z=-105,distance=..6,scores={TalkTime=0},tag=Dialogue147,tag=!Dialogue148,nbt={Inventory:[{tag:{display:{Name:"Kenya"}}}]}] DialogueTrigger 148

#Dialogue149 - Route 35 gate guy post-Spearow delievery
scoreboard players set @a[x=481,y=64,z=-267,distance=..7,scores={TalkTime=0},tag=Dialogue148,tag=!Dialogue149] DialogueTrigger 149

#Dialogue153 - Oak's Lab giving Kanto starters
scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,scores={TalkTime=0},tag=!Dialogue153] DialogueTrigger 153

#Dialogue154 - Oak's Lab mega ring
scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,tag=!Dialogue154,scores={KantoStarters=1..,TalkTime=0}] DialogueTrigger 154

#Dialogue155 - Sudowoodo cleared rock smash
scoreboard players set @a[x=247,y=63,z=-20,distance=..7,tag=Dialogue30,tag=!Dialogue155] DialogueTrigger 155

#---------------------

#Dialogue161 - Ilex Forest time travel prompt
execute at @e[x=617,y=64,z=-699,distance=..15,name=Celebi] run scoreboard players set @a[x=617,y=64,z=-699,distance=..15,tag=!Dialogue161,scores={Celebi=1..}] DialogueTrigger 161

#Dialogue163 - Celebi time travel route Silver & Giovanni
scoreboard players set @a[x=263,y=64,z=719,distance=..13,scores={TalkTime=0},tag=Dialogue162,tag=!Dialogue163] DialogueTrigger 163

#Dialogue164 - Time travel Giovanni save
scoreboard players set @a[x=267,y=64,z=694,distance=..10,tag=Dialogue163,tag=!Dialogue164] DialogueTrigger 164
execute at @a[x=87,y=50,z=719,dx=44,dy=20,dz=44] run particle minecraft:firework 106 53 751 0 2 0 0.1 0 normal @a[distance=..50]

#Dialogue165 - Time travel Giovanni win
scoreboard players set @a[x=87,y=50,z=719,dx=44,dy=20,dz=44,scores={TalkTime=0},tag=Dialogue164,tag=!Dialogue165,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 165
execute as @a[x=87,y=50,z=719,dx=44,dy=20,dz=44,scores={TalkTime=0},tag=Dialogue164,tag=!Dialogue165] run tp @e[x=-735,y=70,z=-242,dy=3,type=pixelmon:npc_trainer] 109 54 750

#---------------------

#Dialogue166 - Ruins of Alph spawning Azure Flute
scoreboard players set @a[x=160,y=60,z=-295,dx=121,dy=30,dz=205,scores={TalkTime=0},tag=Red,tag=!Dialogue166] DialogueTrigger 166
execute at @p[x=178,y=64,z=-127,distance=..120,tag=!Red] run tp @e[x=-697,y=85,z=-242,dy=2,type=pixelmon:npc_chatting] 178 65 -127

#Dialogue167 - Ruins of Alph after giving player Azure flute
scoreboard players set @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Red,tag=!Dialogue167] DialogueTrigger 167

#Dialogue168 - Ruins of Alph starting the Sinjoh event when Arceus is in the player's party

execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] run scoreboard players set @s Temp 0

execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] store result score @s PokeHave run poketest 1 Arceus
execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] run scoreboard players set @s Temp 1
execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] store result score @s PokeHave run poketest 2 Arceus
execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] run scoreboard players set @s Temp 1
execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] store result score @s PokeHave run poketest 3 Arceus
execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] run scoreboard players set @s Temp 1
execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] store result score @s PokeHave run poketest 4 Arceus
execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] run scoreboard players set @s Temp 1
execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] store result score @s PokeHave run poketest 5 Arceus
execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] run scoreboard players set @s Temp 1
execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] store result score @s PokeHave run poketest 6 Arceus
execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0},tag=Dialogue167,tag=!Dialogue168] run scoreboard players set @s Temp 1

execute as @a[x=174,y=64,z=-141,distance=..10,scores={TalkTime=0,Temp=1},tag=Dialogue167,tag=!Dialogue168] run scoreboard players set @s DialogueTrigger 168


#Dialogue169 - Sinjoh Fake Ruins
scoreboard players set @a[x=-992,y=0,z=-172,dx=45,dy=70,dz=60,scores={TalkTime=0}] DialogueTrigger 169

#Dialogue170 - Sinjoh House Hiker
scoreboard players set @a[x=-1085,y=60,z=-230,dx=16,dy=5,dz=15,scores={TalkTime=0},tag=Dialogue169,tag=!Dialogue170] DialogueTrigger 170

#Dialogue171 - Sinjoh House Cynthia
scoreboard players set @a[x=-1081,y=62,z=-224,distance=..3,scores={TalkTime=0},tag=Dialogue170,tag=!Dialogue171] DialogueTrigger 171
execute at @a[x=-1081,y=62,z=-224,distance=..20,tag=!Dialogue171,scores={TalkTime=0}] run tp @e[x=-815,y=64,z=-235,dy=3,type=pixelmon:npc_chatting] -1081 61 -224

#Dialogue172 - Sinjoh Altar Cynthia
scoreboard players set @a[x=-1056,y=47,z=-131,dx=33,dy=15,dz=69,scores={TalkTime=0},tag=Dialogue171,tag=!Dialogue172] DialogueTrigger 172
execute at @a[x=-1046,y=48,z=-111,distance=..50,scores={TalkTime=0},tag=Dialogue171,tag=!Dialogue172] run tp @e[x=-815,y=64,z=-233,dy=3,type=pixelmon:npc_chatting] -1046 48 -111

#Dialogue176 - Sinjoh Altar after picking legend
scoreboard players set @a[x=-1046,y=48,z=-111,distance=..5,scores={TalkTime=0},tag=SinnohLegend,tag=!Dialogue176] DialogueTrigger 176

#Dialogue177 - Sinjoh Ruins Return
scoreboard players enable @a[x=-1099,y=0,z=-252,dx=102,dy=100,dz=189,tag=Dialogue176,scores={VillagerClick=1..}] TriggerCommand
tellraw @a[x=-1099,y=0,z=-252,dx=102,dy=100,dz=189,tag=Dialogue176,scores={VillagerClick=1..}] {"text":"Have Abra take you back to the Ruins of Alph?","italic":true}
tellraw @a[x=-1099,y=0,z=-252,dx=102,dy=100,dz=189,tag=Dialogue176,scores={VillagerClick=1..}] {"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 26"}}
scoreboard players set @a[x=-1099,y=0,z=-252,dx=102,dy=100,dz=189,scores={VillagerClick=1..}] VillagerClick 0


#---------------------
#Dialogues 187-193 Week Siblings
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run execute at @a[x=913,y=63,z=-54,distance=..50] run tp @e[x=-815,y=64,z=-228,dy=3,type=pixelmon:npc_chatting] 913 64 -54
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run execute at @a[x=-482,y=63,z=-535,distance=..50] run tp @e[x=-815,y=64,z=-226,dy=3,type=pixelmon:npc_chatting] -482 64 -535
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run execute at @a[x=-56,y=63,z=722,distance=..50] run tp @e[x=-815,y=64,z=-224,dy=3,type=pixelmon:npc_chatting] -56 64 722
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run execute at @a[x=236,y=64,z=-6,distance=..50] run tp @e[x=-815,y=64,z=-222,dy=3,type=pixelmon:npc_chatting] 236 64 -6
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run execute at @a[x=127,y=63,z=-545,distance=..50] run tp @e[x=-815,y=64,z=-220,dy=3,type=pixelmon:npc_chatting] 127 64 -545
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run execute at @a[x=-663,y=63,z=225,distance=..50] run tp @e[x=-815,y=64,z=-218,dy=3,type=pixelmon:npc_chatting] -663 64 225
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run execute at @a[x=335,y=64,z=113,distance=..50] run tp @e[x=-815,y=64,z=-216,dy=3,type=pixelmon:npc_chatting] 335 64 113

execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run scoreboard players set @a[x=913,y=63,z=-54,distance=..5,scores={TalkTime=0},tag=!Dialogue187] DialogueTrigger 187
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run scoreboard players set @a[x=-482,y=63,z=-535,distance=..5,scores={TalkTime=0},tag=!Dialogue188] DialogueTrigger 188
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run scoreboard players set @a[x=-56,y=63,z=722,distance=..5,scores={TalkTime=0},tag=!Dialogue189] DialogueTrigger 189
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run scoreboard players set @a[x=236,y=64,z=-6,distance=..5,scores={TalkTime=0},tag=!Dialogue190] DialogueTrigger 190
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run scoreboard players set @a[x=127,y=63,z=-545,distance=..5,scores={TalkTime=0},tag=!Dialogue191] DialogueTrigger 191
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run scoreboard players set @a[x=-663,y=63,z=225,distance=..5,scores={TalkTime=0},tag=!Dialogue192] DialogueTrigger 192
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run scoreboard players set @a[x=335,y=64,z=113,distance=..5,scores={TalkTime=0},tag=!Dialogue193] DialogueTrigger 193

#---------------------
#Dialogue194 - Route 25 after 6 trainer wins
scoreboard players set @a[x=-2999,y=64,z=1005,distance=..10,scores={TalkTime=0},tag=!Dialogue194,nbt={Inventory:[{id:"minecraft:paper",Count:6b}]}] DialogueTrigger 194

#Dialogue195 - Route 25 Bill's Grandfather intro
scoreboard players set @a[x=-3072,y=63,z=1005,dx=21,dy=5,dz=12,scores={TalkTime=0},tag=!Dialogue195] DialogueTrigger 195
execute as @a[x=-3072,y=63,z=1005,dx=21,dy=5,dz=12,scores={TalkTime=0},tag=Dialogue195] run function johto:triggers/billshouse

#Dialogue203 - Cianwood City PokeManiac Kirk giving Shuckle
scoreboard players set @a[x=1221,y=63,z=-434,dx=19,dy=5,dz=8,scores={TalkTime=0},tag=!Dialogue203] DialogueTrigger 203

#Dialogue204 - Ecruteak City Bill Introduction
scoreboard players set @a[x=339,y=64,z=192,distance=..5,scores={TalkTime=0},tag=!Dialogue204] DialogueTrigger 204

#Dialogue205 - Goldenrod City
scoreboard players set @a[x=541,y=63,z=-416,dx=11,dy=5,dz=11,scores={TalkTime=0},tag=Dialogue204,tag=!Dialogue205] DialogueTrigger 205
execute at @p[x=541,y=63,z=-416,distance=..15,tag=Dialogue204,tag=!Dialogue205] run tp @e[x=-815,y=69,z=-233,dy=3,type=pixelmon:npc_chatting] 549 64 -409
execute at @p[x=541,y=63,z=-416,distance=..15,tag=!Dialogue204,tag=!Dialogue205] run tp @e[x=549,y=63,z=-409,dy=3,type=pixelmon:npc_chatting] -815 70 -233

#Dialogue214 - SS Aqua Voyage Olivine Start
tag @a[x=744,y=73,z=-193,distance=..15,tag=Dialogue101,tag=Dialogue214,scores={TalkTime=0}] remove Dialogue214
scoreboard players set @a[x=744,y=73,z=-193,distance=..15,tag=Dialogue101,scores={TalkTime=0}] DialogueTrigger 214

#Vermilion Start
tag @a[x=-2749,y=72,z=-159,distance=..15,tag=Dialogue101,scores={TalkTime=0}] remove Dialogue214
scoreboard players set @a[x=-2749,y=72,z=-159,distance=..15,tag=Dialogue101,scores={TalkTime=0}] DialogueTrigger 214

#Dialogue215 - Power Plant Manager first Talk
scoreboard players set @a[x=-3117,y=48,z=589,distance=..5,tag=!Dialogue215,scores={TalkTime=0}] DialogueTrigger 215

#Dialogue216 - Power Plant Policeman after Manager
scoreboard players set @a[x=-3111,y=44,z=565,distance=..7,tag=Dialogue215,tag=!Dialogue216,scores={TalkTime=0}] DialogueTrigger 216

#Dialogue217 - Cerulean Gym Rocket Grunt
scoreboard players set @a[x=-1185,y=65,z=743,distance=..10,scores={TalkTime=0},tag=Dialogue216,tag=!Dialogue217] DialogueTrigger 217

#Dialogue218 - Route 24 Rocket Grunt pre-battle
scoreboard players set @a[x=-2748,y=66,z=870,distance=..7,scores={TalkTime=0},tag=Dialogue217,tag=!Dialogue218] DialogueTrigger 218
execute as @a[x=-2748,y=66,z=870,distance=..20,tag=Dialogue217,scores={TalkTime=0},tag=!Dialogue219] run tp @e[x=-815,y=74,z=-233,dy=3,type=pixelmon:npc_trainer] -2743 66 870

#Dialogue219 - Route 24 Rocket Grunt post-battle
scoreboard players set @a[x=-2748,y=66,z=870,distance=..20,scores={TalkTime=0},tag=!Dialogue219,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 219

#Dialogue220 - Cerulean Gym underwater part
execute if entity @a[x=-1180,y=59,z=773,distance=..30,scores={TalkTime=0},tag=Dialogue219] at @e[x=-1180,y=59,z=773,dy=3,type=armor_stand] run scoreboard players set @a[distance=..5,tag=!Dialogue220] DialogueTrigger 220
execute if entity @a[x=-1180,y=59,z=773,distance=..30,scores={TalkTime=0},tag=Dialogue219] at @e[x=-1180,y=59,z=773,dy=3,type=armor_stand] run particle minecraft:firework ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!Dialogue220]

#Dialogue221 - Power Plant returning part
scoreboard players set @a[x=-3117,y=48,z=589,distance=..5,tag=Dialogue220,tag=!Dialogue221,scores={TalkTime=0},nbt={Inventory:[{id:"minecraft:music_disc_mall"}]}] DialogueTrigger 221

#Dialogue222 - Pallet Town Oak allowing access to Mt. Silver
scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,scores={TalkTime=0},tag=Dialogue154,tag=AllGyms,tag=!Dialogue222] DialogueTrigger 222

#Dialogue223 - Lavender Town Radio Director Expn card
scoreboard players set @a[x=-3312,y=64,z=381,distance=..5,scores={TalkTime=0},tag=Dialogue221,tag=!Dialogue223] DialogueTrigger 223

#Dialogue225 - Radio Tower Buena's Password
scoreboard players set @a[x=502,y=48,z=-274,dx=6,dy=5,dz=5,tag=BuenasPasswordDaily,scores={TalkTime=0},tag=!Dialogue225] DialogueTrigger 225

#Dialogue209 - Cherrygrove Guide Gent
execute at @e[x=-270,y=64,z=-505,distance=..3,type=pixelmon:npc_chatting] run scoreboard players set @a[distance=..5,tag=!GuideTour,scores={TalkTime=0},tag=!Dialogue209] DialogueTrigger 209
execute at @e[x=-256,y=64,z=-495,distance=..3,type=pixelmon:npc_chatting] run scoreboard players set @a[distance=..5,scores={TalkTime=0},tag=!Dialogue210] DialogueTrigger 210
execute at @e[x=-217,y=64,z=-495,distance=..3,type=pixelmon:npc_chatting] run scoreboard players set @a[distance=..5,scores={TalkTime=0},tag=!Dialogue211] DialogueTrigger 211
execute at @e[x=-184,y=64,z=-495,distance=..3,type=pixelmon:npc_chatting] run scoreboard players set @a[distance=..5,scores={TalkTime=0},tag=!Dialogue212] DialogueTrigger 212
execute at @e[x=-146,y=64,z=-517,distance=..3,type=pixelmon:npc_chatting] run scoreboard players set @a[distance=..5,scores={TalkTime=0},tag=!Dialogue197] DialogueTrigger 197
execute at @e[x=-230,y=64,z=-529,distance=..3,type=pixelmon:npc_chatting] run scoreboard players set @a[distance=..5,scores={TalkTime=0},tag=!Dialogue213] DialogueTrigger 213

#Guide Gent Reset
execute at @e[x=-230,y=64,z=-518,distance=..2,type=pixelmon:npc_chatting] run execute as @a[distance=..100,tag=!GuideTour] run tp @e[x=-230,y=64,z=-518,distance=..2,type=pixelmon:npc_chatting] -270 64 -505


#Dialogue226 - Burned Tower Eusine
scoreboard players set @a[x=445,y=64,z=304,distance=..5,scores={DogEncounter=1..},tag=!Dialogue226] DialogueTrigger 226
execute at @a[x=445,y=64,z=304,distance=..10,scores={DogEncounter=1..},tag=!Dialogue226] run tp @e[x=-815,y=74,z=-228,dy=3,type=pixelmon:npc_chatting] 445 64 304

#Dialouge227 - Cianwood City Suicune & Eusine
scoreboard players set @a[x=1249,y=63,z=-300,dx=9,dy=5,dz=10,tag=Dialogue226,tag=!Dialogue227] DialogueTrigger 227
execute at @a[x=1256,y=64,z=-296,distance=..50,scores={TalkTime=0,DogEncounter=1..},tag=Dialogue226,tag=!Dialogue227] run setblock 1256 64 -296 pixelmon:poke_display[facing=north]{PokeDisplayPokemon:{ndex:245,Growth:7b}} replace

#Dialogue228 - Cianwood City Eucine post-battle
scoreboard players set @a[x=1256,y=64,z=-296,distance=..20,scores={TalkTime=0},tag=!Dialogue228,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 228
execute at @a[x=1251,y=64,z=-307,distance=..20,scores={TalkTime=0},tag=Dialogue227,tag=!Dialogue228] run tp @e[x=-815,y=74,z=-226,dy=3,type=pixelmon:npc_trainer] 1251 64 -307

#Dialogue229 - Mt. Mortar Suicune encounter
scoreboard players set @a[x=80,y=64,z=152,distance=..5,scores={TalkTime=0},tag=Dialogue228,tag=!Dialogue229] DialogueTrigger 229
execute at @a[x=80,y=64,z=152,distance=..50,scores={TalkTime=0},tag=Dialogue228,tag=!Dialogue229] run setblock 80 64 152 pixelmon:poke_display[facing=east]{PokeDisplayPokemon:{ndex:245,Growth:7b}} replace

#Dialogue230 - Vermilion City Suicune
scoreboard players set @a[x=-2823,y=64,z=-96,distance=..10,scores={TalkTime=0},tag=Dialogue229,tag=!Dialogue230] DialogueTrigger 230
execute at @a[x=-2823,y=64,z=-96,distance=..50,scores={TalkTime=0},tag=Dialogue229,tag=!Dialogue230] run setblock -2823 64 -96 pixelmon:poke_display[facing=east]{PokeDisplayPokemon:{ndex:245,Growth:7b}} replace

#Dialogue231 - Route 14 Suicune
scoreboard players set @a[x=-2971,y=64,z=-470,distance=..10,scores={TalkTime=0},tag=Dialogue230,tag=!Dialogue231] DialogueTrigger 231
execute at @a[x=-2981,y=64,z=-470,distance=..50,scores={TalkTime=0},tag=Dialogue230,tag=!Dialogue231] run setblock -2981 64 -470 pixelmon:poke_display[facing=east]{PokeDisplayPokemon:{ndex:245,Growth:7b}} replace

#Dialogue232 - Route 25 Suicune pre-catch
scoreboard players set @a[x=-3094,y=64,z=989,distance=..10,tag=!Dialogue232,tag=Dialogue231] DialogueTrigger 232
execute at @a[x=-3094,y=64,z=989,distance=..50,scores={TalkTime=0},tag=Dialogue231,tag=!Dialogue233] run setblock -3111 64 989 pixelmon:poke_display[facing=east]{PokeDisplayPokemon:{ndex:245,Growth:7b}} replace

#-------------------------------------------------------------------------------------------------------------------------
#Legendary/Mythical/Story Pokemon Commands

#Johto Starters
scoreboard players set @a[x=-682,y=63,z=-482,distance=..25,scores={TalkTime=0},tag=Dialogue3,nbt={Inventory:[{id:"pixelmon:fire_stone_sword"}]}] TriggerCommand 80
scoreboard players set @a[x=-682,y=63,z=-482,distance=..25,scores={TalkTime=0},tag=Dialogue3,nbt={Inventory:[{id:"pixelmon:leaf_stone_sword"}]}] TriggerCommand 82
scoreboard players set @a[x=-682,y=63,z=-482,distance=..25,scores={TalkTime=0},tag=Dialogue3,nbt={Inventory:[{id:"pixelmon:water_stone_sword"}]}] TriggerCommand 84

#Checks and runs the command automatically if player already picked a starter
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s PokeHave 0

execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 1 Cyndaquil
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 2 Cyndaquil
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 3 Cyndaquil
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 4 Cyndaquil
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 5 Cyndaquil
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 6 Cyndaquil
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1

execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s TriggerCommand 81
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s StarterPick 1


execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s PokeHave 0

execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 1 Chikorita
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 2 Chikorita
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 3 Chikorita
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 4 Chikorita
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 5 Chikorita
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 6 Chikorita
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1

execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s TriggerCommand 83
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s StarterPick 2


execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s PokeHave 0

execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 1 Totodile
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 2 Totodile
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 3 Totodile
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 4 Totodile
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 5 Totodile
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] store result score @s PokeHave run poketest 6 Totodile
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s Temp 1

execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s TriggerCommand 85
execute as @a[x=-682,y=63,z=-482,distance=..25,tag=Dialogue3,scores={StarterPick=0}] run scoreboard players set @s StarterPick 1

#-------------------------------------

#Legendary Dog & Eon Grass commands 3.0
execute as @a[tag=!GrassCooldown] at @s run execute if block ~ ~ ~ minecraft:grass run function johto:triggers/roaminglegends

#Mewtwo
execute as @a[x=-2564,y=48,z=829,dx=18,dy=10,dz=29,scores={Mewtwo=0}] run playsound mewtwo hostile @s ~ ~ ~ 1000 1 1
execute as @a[x=-2564,y=48,z=829,dx=18,dy=10,dz=29,scores={Mewtwo=0}] run execute at @e[x=-2549,y=54,z=853,dy=2,type=armor_stand] run pokespawn Mewtwo lvl:70 gr:7
execute as @a[x=-2564,y=48,z=829,dx=18,dy=10,dz=29,scores={Mewtwo=0}] run scoreboard players set @s Mewtwo 1

execute as @a[x=-2861,y=63,z=-100,dx=20,dy=7,dz=5,scores={Mew=0}] run execute at @e[x=-2861,y=63,z=-100,dx=20,dy=7,dz=5,type=armor_stand] run pokespawn Mew lvl:50 gr:7
execute as @a[x=-2861,y=63,z=-100,dx=20,dy=7,dz=5,scores={Mew=0}] run scoreboard players set @s Mew 1

#Dialogue103
#Whirl Islands Lugia Spawn
scoreboard players set @a[x=1242,y=30,z=209,dx=14,dy=10,dz=8,tag=!Dialogue103,nbt={Inventory:[{id:"pixelmon:silver_wing"}]}] DialogueTrigger 103

#Dialogue104
#Tin Tower Ho-Oh Spawn
scoreboard players set @a[x=251,y=154,z=308,dx=11,dy=5,dz=11,tag=!Dialogue104,nbt={Inventory:[{id:"pixelmon:rainbow_wing"}]}] DialogueTrigger 104

#Dialogue105
#Union Cave Friday Lapras
execute at @a[x=120,y=13,z=-852,distance=..10,tag=!Dialogue105] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run scoreboard players set @a[x=120,y=13,z=-852,distance=..10,tag=!Dialogue105] DialogueTrigger 105
execute at @a[x=120,y=13,z=-852,distance=..50,tag=!Dialogue105] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run setblock 120 12 -852 pixelmon:poke_display[facing=north,waterlogged=true]{PokeDisplayPokemon:{ndex:131,Growth:7b}} replace
execute at @a[x=120,y=13,z=-852,distance=..50,tag=!Dialogue105] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1..4}] run setblock 120 12 -852 minecraft:water
execute at @a[x=120,y=13,z=-852,distance=..50,tag=!Dialogue105] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6..7}] run setblock 120 12 -852 minecraft:water

#Dialogue110
#GS Ball Spawn In
#/particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0 0 0 1 50 force @a[distance=..50]
#starts dialogue
execute if entity @e[x=617,y=65,z=-697,dy=1,dz=2,nbt={Item:{id:"pixelmon:poke_ball",Count:1b,tag:{PokeBallID:"gs_ball"}}}] if entity @a[tag=Dialogue109,x=617,y=65,z=-697,distance=..10] run scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={DialogueTrigger=0}] DialogueTrigger 110
tag @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,tag=Dialogue110] remove Dialogue110

#TPs out items that aren't the GS Ball
#execute unless entity @e[x=617,y=65,z=-697,dy=1,dz=2,nbt={Item:{id:"pixelmon:poke_ball",Count:1b,tag:{PokeBallID:"gs_ball"}}}] as @e[x=617,y=65,z=-697,dy=1,dz=2,type=item] run at @s run tp @s ~ ~ ~-3
#execute unless entity @e[x=617,y=65,z=-697,dy=1,dz=2,nbt={Item:{id:"pixelmon:poke_ball",Count:1b,tag:{PokeBallID:"gs_ball"}}}] unless entity @a[tag=Dialogue109,x=617,y=65,z=-697,distance=..10] as @e[x=617,y=65,z=-697,dy=1,dz=2,type=item] run at @s run tp @s ~ ~ ~-3


#Dialogue132
#Jirachi at any Pokemon Center after all badges
execute at @e[type=armor_stand,tag=Mystery_Gift] run scoreboard players set @a[distance=..6,scores={TalkTime=0},tag=AllGyms,tag=!Dialogue132] DialogueTrigger 132

#Dialogue140
#Olivine City Manaphy Egg
scoreboard players set @a[x=923,y=64,z=-73,distance=..10,scores={TalkTime=0,IP=1..},tag=!Dialogue140] DialogueTrigger 140

#Dialogue150
#Embedded Tower Kyogre Spawn
execute at @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={DialogueTrigger=0,TalkTime=0}] run scoreboard players set @a[x=-1196,y=63,z=-230,dx=46,dy=20,dz=53,nbt={Inventory:[{id:"pixelmon:blue_orb"}]}] TriggerCommand 50

#Dialogue151
#Embedded Tower Groudon Spawn
execute at @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={DialogueTrigger=0,TalkTime=0}] run scoreboard players set @a[x=-1196,y=63,z=-230,dx=46,dy=20,dz=53,nbt={Inventory:[{id:"pixelmon:red_orb"}]}] TriggerCommand 51

#Dialogue152
#Embedded Tower Rayquaza Tower
execute at @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={DialogueTrigger=0,TalkTime=0}] run scoreboard players set @a[x=-1196,y=63,z=-230,dx=46,dy=20,dz=53,nbt={Inventory:[{id:"pixelmon:jade_orb"}]}] TriggerCommand 52

#Removes tags if found on armor stands
tag @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,tag=Dialogue150] remove Dialogue150
tag @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,tag=Dialogue151] remove Dialogue151
tag @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,tag=Dialogue152] remove Dialogue152

#Oak Starters Obtain
scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,scores={TalkTime=0},nbt={Inventory:[{id:"minecraft:spruce_fence_gate"}]}] TriggerCommand 54
scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,scores={TalkTime=0},nbt={Inventory:[{id:"minecraft:birch_fence_gate"}]}] TriggerCommand 55
scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,scores={TalkTime=0},nbt={Inventory:[{id:"minecraft:dark_oak_fence_gate"}]}] TriggerCommand 56

#Dialogue158
#Seafoam Islands Articuno
scoreboard players set @a[x=-2065,y=17,z=-847,dx=23,dy=3,dz=15,scores={Articuno=0,TalkTime=0},tag=!Dialogue158] DialogueTrigger 158
execute as @a[x=-2054,y=19,z=-835,distance=..50,scores={Articuno=0,TalkTime=0}] run setblock -2054 19 -835 pixelmon:poke_display[facing=north]{PokeDisplayPokemon:{ndex:144,Growth:7b}} replace

#Dialogue159
#Power Plant Zapdos
scoreboard players set @a[x=-3239,y=64,z=571,distance=..5,scores={Zapdos=0,TalkTime=0},tag=AllGyms,tag=!Dialogue159] DialogueTrigger 159
execute as @a[x=-3239,y=64,z=571,distance=..50,scores={Zapdos=0,TalkTime=0},tag=AllGyms] run setblock -3239 64 571 pixelmon:poke_display[facing=north]{PokeDisplayPokemon:{ndex:145,Growth:7b}} replace

#Dialogue160
#Victory Road Moltres
scoreboard players set @a[x=-965,y=100,z=304,distance=..7,scores={Moltres=0,TalkTime=0},tag=!Dialogue160] DialogueTrigger 160
#sets up block in portals function

#Mt. Mortar Tyrogue give
execute as @a[x=112,y=32,z=391,distance=..25,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] run pokegive @s Tyrogue
execute as @a[x=112,y=32,z=391,distance=..25,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] run playsound minecraft:egghatch ambient @s ~ ~ ~ 1 1 1
execute as @a[x=112,y=32,z=391,distance=..25,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] run clear @s nether_brick

#----------------------------------------

#Dialogue173 - Dialga
execute if entity @a[x=-1060,y=46,z=-143,dx=40,dy=15,dz=70,tag=Dialogue172,scores={TriggerCommand=12}] run scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={TalkTime=0,DialogueTrigger=0}] DialogueTrigger 173

#Dialogue174 - Palkia
execute if entity @a[x=-1060,y=46,z=-143,dx=40,dy=15,dz=70,tag=Dialogue172,scores={TriggerCommand=13}] run scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={TalkTime=0,DialogueTrigger=0}] DialogueTrigger 174

#Dialogue175 - Giratina
execute if entity @a[x=-1060,y=46,z=-143,dx=40,dy=15,dz=70,tag=Dialogue172,scores={TriggerCommand=14}] run scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={TalkTime=0,DialogueTrigger=0}] DialogueTrigger 175

#Sinjoh Ruins Pick a Legend
tag @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={TalkTime=0,DialogueTrigger=0},tag=Dialogue173] remove Dialogue173
tag @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={TalkTime=0,DialogueTrigger=0},tag=Dialogue174] remove Dialogue174
tag @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={TalkTime=0,DialogueTrigger=0},tag=Dialogue175] remove Dialogue175


#Sinjoh Ruins Shrine Dialga Pick
execute if entity @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] as @a[x=-1038,y=50,z=-98,distance=..2,tag=Dialogue172,tag=!SinnohLegend,scores={Cooldown=0,TalkTime=0}] run scoreboard players enable @s TriggerCommand
execute if entity @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] as @a[x=-1038,y=50,z=-98,distance=..2,tag=Dialogue172,tag=!SinnohLegend,scores={Cooldown=0,TalkTime=0}] run tellraw @s {"text":"<Cynthia> So you choose Dialga, the Guardian of Time?"}
execute if entity @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] as @a[x=-1038,y=50,z=-98,distance=..2,tag=Dialogue172,tag=!SinnohLegend,scores={Cooldown=0,TalkTime=0}] run tellraw @s {"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 12"}}
execute if entity @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] as @a[x=-1038,y=50,z=-98,distance=..2,tag=Dialogue172,tag=!SinnohLegend,scores={Cooldown=0,TalkTime=0}] run scoreboard players set @s Cooldown 15

#Palkia Pick
execute if entity @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] as @a[x=-1050,y=50,z=-98,distance=..2,tag=Dialogue172,tag=!SinnohLegend,scores={Cooldown=0,TalkTime=0}] run scoreboard players enable @s TriggerCommand
execute if entity @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] as @a[x=-1050,y=50,z=-98,distance=..2,tag=Dialogue172,tag=!SinnohLegend,scores={Cooldown=0,TalkTime=0}] run tellraw @s {"text":"<Cynthia> So you choose Palkia, the master of space and dimensions?"}
execute if entity @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] as @a[x=-1050,y=50,z=-98,distance=..2,tag=Dialogue172,tag=!SinnohLegend,scores={Cooldown=0,TalkTime=0}] run tellraw @s {"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 13"}}
execute if entity @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] as @a[x=-1050,y=50,z=-98,distance=..2,tag=Dialogue172,tag=!SinnohLegend,scores={Cooldown=0,TalkTime=0}] run scoreboard players set @s Cooldown 15

#Giratina Pick
execute if entity @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] as @a[x=-1044,y=50,z=-85,distance=..2,tag=Dialogue172,tag=!SinnohLegend,scores={Cooldown=0,TalkTime=0}] run scoreboard players enable @s TriggerCommand
execute if entity @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] as @a[x=-1044,y=50,z=-85,distance=..2,tag=Dialogue172,tag=!SinnohLegend,scores={Cooldown=0,TalkTime=0}] run tellraw @s {"text":"<Cynthia> So you choose Giratina, the ruler of the Distortion World?"}
execute if entity @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] as @a[x=-1044,y=50,z=-85,distance=..2,tag=Dialogue172,tag=!SinnohLegend,scores={Cooldown=0,TalkTime=0}] run tellraw @s {"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 14"}}
execute if entity @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] as @a[x=-1044,y=50,z=-85,distance=..2,tag=Dialogue172,tag=!SinnohLegend,scores={Cooldown=0,TalkTime=0}] run scoreboard players set @s Cooldown 15

#Sinjoh Ruins Abra prompt to leave
execute as @a[x=-1073,y=61,z=-216,distance=..2,scores={TalkTime=0,Cooldown=0},tag=Dialogue176] run scoreboard players enable @s TriggerCommand
execute as @a[x=-1073,y=61,z=-216,distance=..2,scores={TalkTime=0,Cooldown=0},tag=Dialogue176] run tellraw @s ["",{"text":"Would you like Abra to return you home?\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 26"}},{"text":"]"}]
execute as @a[x=-1073,y=61,z=-216,distance=..2,scores={TalkTime=0,Cooldown=0},tag=Dialogue176] run scoreboard players set @s Cooldown 30


#Saffron City Porygon Guy give
execute as @a[x=-2682,y=64,z=278,distance=..20,nbt={Inventory:[{id:"pixelmon:porygon_piece"}]}] run pokegive @s Porygon
execute as @a[x=-2682,y=64,z=278,distance=..20,nbt={Inventory:[{id:"pixelmon:porygon_piece"}]}] run playsound minecraft:egghatch ambient @s ~ ~ ~ 1 1 1
execute as @a[x=-2682,y=64,z=278,distance=..20,nbt={Inventory:[{id:"pixelmon:porygon_piece"}]}] run clear @s pixelmon:porygon_piece 1

#----------------------------------------

#Viridian City Snorlax setup
execute as @a[x=-2894,y=64,z=-53,distance=..50,scores={TalkTime=0},tag=!Dialogue142] run setblock -2902 64 -59 pixelmon:poke_display[facing=north]{PokeDisplayPokemon:{ndex:2002,Growth:7b}} replace

#Dialogue233
#Suicune Spawn
execute as @a[x=-3111,y=64,z=989,distance=..5,scores={TalkTime=0},tag=!Dialogue233] run scoreboard players set @s[tag=Dialogue232] DialogueTrigger 233



#Celebi's hint to seeing the Ilex Shrine
execute if entity @a[x=617,y=64,z=-699,distance=..7,tag=!Dialogue165,scores={TalkTime=0,Celebi=1..,Cooldown=0}] run tellraw @a[x=617,y=64,z=-699,distance=..15,tag=!Dialogue165,scores={TalkTime=0,Celebi=1..,Cooldown=0}] {"text":"Celebi seems interested to see the shrine.","italic":true}
execute if entity @a[x=617,y=64,z=-699,distance=..7,tag=!Dialogue165,scores={TalkTime=0,Celebi=1..,Cooldown=0}] run scoreboard players set @a[x=617,y=64,z=-699,distance=..7,tag=!Dialogue165,scores={TalkTime=0,Celebi=1..,Cooldown=0}] Cooldown 30


#Celebi to return player home
execute as @a[x=105,y=54,z=731,distance=..3,tag=!Dialogue165,tag=Dialogue164,scores={TalkTime=0,Cooldown=0}] run scoreboard players enable @s TriggerCommand
execute as @a[x=105,y=54,z=731,distance=..3,tag=!Dialogue165,tag=Dialogue164,scores={TalkTime=0,Cooldown=0}] run tellraw @s ["",{"text":"Would you like Celebi to take you to your time?\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 42"}},{"text":"]"}]
execute as @a[x=105,y=54,z=731,distance=..3,tag=!Dialogue165,tag=Dialogue164,scores={TalkTime=0,Cooldown=0}] run scoreboard players set @s Cooldown 30



#Mt. Silver sets up Red or the Altar
#Red, not altar
execute if block -944 183 285 pixelmon:timespace_altar if entity @a[x=-944,y=182,z=285,distance=..25,tag=!Red,scores={TalkTime=0}] run fill -730 76 -242 -730 77 -242 minecraft:air
execute if block -944 183 285 pixelmon:timespace_altar if entity @a[x=-944,y=182,z=285,distance=..25,tag=!Red,scores={TalkTime=0}] run tp @e[x=-711,y=86,z=-242,distance=..2,type=pixelmon:npc_trainer] -944 183 285

#Alter post-Red
execute if block -944 183 285 minecraft:air if entity @a[x=-944,y=182,z=285,distance=..25,tag=Red] run tp @e[x=-944,y=182,z=285,dy=3,type=pixelmon:npc_trainer,name=Red] -711 86 -242
execute if block -944 183 285 minecraft:air if entity @a[x=-944,y=182,z=285,distance=..25,tag=Red] run clone -730 75 -242 -730 78 -242 -944 183 285

#Enables pre-Arceus particles near altar
execute if block -944 183 285 pixelmon:timespace_altar if entity @a[x=-967,y=174,z=189,dx=50,dy=30,dz=140] run setblock -861 64 -293 minecraft:iron_block
execute if block -944 183 285 pixelmon:timespace_altar if entity @a[x=-967,y=174,z=189,dx=50,dy=30,dz=140,nbt={Inventory:[{id:"pixelmon:azure_flute"}]}] run setblock -861 64 -293 minecraft:redstone_block

#Adds a score if player is near a Palkia/Dialga/Giratina near the altar for reset tracking
execute if entity @e[x=-944,y=183,z=285,distance=..10,nbt={ndex:483}] run scoreboard players set @a[x=-944,y=183,z=285,distance=..15,tag=SinnohLegend,scores={Dialga=0}] Dialga 1
execute if entity @e[x=-944,y=183,z=285,distance=..10,nbt={ndex:484}] run scoreboard players set @a[x=-944,y=183,z=285,distance=..15,tag=SinnohLegend,scores={Palkia=0}] Palkia 1
execute if entity @e[x=-944,y=183,z=285,distance=..10,nbt={ndex:487}] run scoreboard players set @a[x=-944,y=183,z=285,distance=..15,tag=SinnohLegend,scores={Giratina=0}] Giratina 1

#Resets the shrine if player holds a Red Chain and block is unbound by a chain currently
execute if block -944 183 285 pixelmon:timespace_altar{ChainIn:0b} if entity @a[x=-944,y=183,z=285,distance=..5,nbt={SelectedItem:{id:"pixelmon:red_chain"}}] run clone -730 75 -242 -730 78 -242 -944 183 285

#Arceus cry when summoned
#execute as @e[x=-967,y=174,z=189,dx=50,dy=30,dz=140,type=pixelmon:pixelmon,nbt={ndex: 493},scores={Cooldown=0}] scoreboard players set @s[tag=!Temp] Cooldown 0
#execute as @e[x=-967,y=174,z=189,dx=50,dy=30,dz=140,type=pixelmon:pixelmon,nbt={ndex: 493},scores={Cooldown=0}] run playsound arceus hostile @a[distance=..50] ~ ~ ~ 1 1 1
#execute as @e[x=-967,y=174,z=189,dx=50,dy=30,dz=140,type=pixelmon:pixelmon,nbt={ndex: 493},scores={Cooldown=0}] run scoreboard players set @e[x=-967,y=174,z=189,dx=50,dy=30,dz=140,nbt={ndex:493}] Cooldown 30
#execute as @e[x=-967,y=174,z=189,dx=50,dy=30,dz=140,type=pixelmon:pixelmon,nbt={ndex: 493},scores={Cooldown=0}] tag @s add Temp

#---------------------
#Radio Tower Shows & NPCs

#Buena's Password
execute as @a[x=496,y=48,z=-274,dx=11,dy=5,dz=7,tag=!BuenasPasswordCD] run setblock -825 69 -193 minecraft:redstone_block
clear @a[x=496,y=48,z=-274,dx=11,dy=5,dz=7,tag=!BuenasPasswordCD,tag=BuenasPasswordTalk] minecraft:paper{display:{Name:"Buena's Password",Lore:["A code given on the Buena's Password","Show. Can be exchanged for a prize","at Goldenrod City's Radio Tower."]}}


#Radio Tower Quiz prompt
execute as @a[x=510,y=30,z=-274,dx=11,dy=4,dz=4,tag=!Dialogue179,scores={TalkTime=0,Cooldown=0}] run tellraw @s {"text":"We have a special Quiz campaign! Answer five questions correctly in a row to win a Radio Card! When you load it into the Radio, you will be able to listen to additional stations.. anytime, anywhere! Would you like to try our Quiz?"}
execute as @a[x=510,y=30,z=-274,dx=11,dy=4,dz=4,tag=!Dialogue179,scores={TalkTime=0,Cooldown=0}] run scoreboard players enable @s TriggerCommand
execute as @a[x=510,y=30,z=-274,dx=11,dy=4,dz=4,tag=!Dialogue179,scores={TalkTime=0,Cooldown=0}] run tellraw @s {"text": "", "extra": [{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 21"}}]}
execute as @a[x=510,y=30,z=-274,dx=11,dy=4,dz=4,tag=!Dialogue179,scores={TalkTime=0,Cooldown=0}] run scoreboard players set @s Cooldown 120


#Lucky Number Show
execute as @a[x=506,y=31,z=-272,distance=..3,tag=!LuckyNumberCD,scores={TalkTime=0,Cooldown=0}] run tellraw @s {"text":"<DJ Reed> Hi, are you here for the Lucky Number Show? Want me to check the ID numbers of your Pokémon?"}
execute as @a[x=506,y=31,z=-272,distance=..3,tag=!LuckyNumberCD,scores={TalkTime=0,Cooldown=0}] run scoreboard players enable @s TriggerCommand
execute as @a[x=506,y=31,z=-272,distance=..3,tag=!LuckyNumberCD,scores={TalkTime=0,Cooldown=0}] run tellraw @s ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 76"}},{"text":"]"}]
execute as @a[x=506,y=31,z=-272,distance=..3,tag=!LuckyNumberCD,scores={TalkTime=0,Cooldown=0}] run scoreboard players set @s Cooldown 120



#---------------------
#Goldenrod Friendship Checker
tellraw @a[x=487,y=63,z=-300,dx=13,dy=5,dz=8,tag=!FriendshipCheckerCD] {"text":"<Friendship Checker> Hello! Would you like me to check the happiness of your Pokemon?"}
tag @a[x=487,y=63,z=-300,dx=13,dy=5,dz=8,tag=!FriendshipCheckerCD] add FriendshipCheckerCD
tag @a[x=487,y=63,z=-310,dx=12,dy=5,dz=9,tag=FriendshipCheckerCD] remove FriendshipCheckerCD
execute at @e[x=487,y=63,z=-300,dx=13,dy=5,dz=8,type=pixelmon:pixelmon] run function johto:triggers/friendshipdatatags

#Goldenrod Underground Beauty Salon
execute at @e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,type=pixelmon:pixelmon] run scoreboard players set @p[distance=..15,tag=BeautySalon] DialogueTrigger 186

execute as @a[x=513,y=54,z=-335,distance=..4,tag=!BeautyCD,scores={TalkTime=0,Cooldown=0}] run scoreboard players enable @s TriggerCommand
execute as @a[x=513,y=54,z=-335,distance=..4,tag=!BeautyCD,scores={TalkTime=0,Cooldown=0}] run tellraw @s ["",{"text":"<Beauty Salon Clerk> Welcome! Would you like me to give your Pokemon a makeover?\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 40"}},{"text":"]"}]
execute as @a[x=513,y=54,z=-335,distance=..4,tag=!BeautyCD,scores={TalkTime=0,Cooldown=0}] run scoreboard players set @s Cooldown 120


#---------------------
#Battle Tower Shopkeepers

#Tms 1
execute as @a[x=923,y=64,z=55,distance=..3,scores={CooldownWalk=1000..}] run scoreboard players set @s TriggerCommand 148
execute as @a[x=923,y=64,z=55,distance=..3,scores={CooldownWalk=1000..}] run scoreboard players set @s CooldownWalk 0

#Tms 2
execute as @a[x=882,y=64,z=55,distance=..3,scores={CooldownWalk=1000..}] run scoreboard players set @s TriggerCommand 158
execute as @a[x=882,y=64,z=55,distance=..3,scores={CooldownWalk=1000..}] run scoreboard players set @s CooldownWalk 0

#Fighting Items No 2
execute as @a[x=927,y=64,z=61,distance=..3,scores={CooldownWalk=1000..}] run scoreboard players set @s TriggerCommand 138
execute as @a[x=927,y=64,z=61,distance=..3,scores={CooldownWalk=1000..}] run scoreboard players set @s CooldownWalk 0

#Fighting Items No 1
execute as @a[x=927,y=64,z=72,distance=..3,scores={CooldownWalk=1000..}] run scoreboard players set @s TriggerCommand 132
execute as @a[x=927,y=64,z=72,distance=..3,scores={CooldownWalk=1000..}] run scoreboard players set @s CooldownWalk 0

#Battle Items No 2
execute as @a[x=878,y=64,z=61,distance=..3,scores={CooldownWalk=1000..}] run scoreboard players set @s TriggerCommand 124
execute as @a[x=878,y=64,z=61,distance=..3,scores={CooldownWalk=1000..}] run scoreboard players set @s CooldownWalk 0

#Battle Items No 1
execute as @a[x=878,y=64,z=72,distance=..3,scores={CooldownWalk=1000..}] run scoreboard players set @s TriggerCommand 115
execute as @a[x=878,y=64,z=72,distance=..3,scores={CooldownWalk=1000..}] run scoreboard players set @s CooldownWalk 0
